<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Facades\JWTAuth;

/**
 * @group 会员登陆管理
 *    微信端会员登陆、令牌刷新和退出
 * @package App\Http\Controllers
 */
class AuthController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'refresh']]);
    }

    /**
     * 会员登陆
     * @bodyParam email string required 登陆名 Example:871228582@qq.com
     * @bodyParam password string required 会员密码 Example: 123456
     */

    public function login()
    {

        $username = request('username');
        $password = request('password');
        $user = DB::table('users')->where('email', $username)->orWhere('phone', $username)->first();
        if ($user && (int)$user->status === 1) {
           $pwd = $user->password;
           if (Hash::check($password, $pwd)) {
               // 密码相等
               $token = auth('api')->tokenById($user->id);
               return $this->responseWithToken($token);
           }
        }
        return $this->errorWithInfo('认证出错，用户名或者密码不对', 401);
    }

    /**
     * 获取会员信息
     * @authenticated
     * @return \Illuminate\Http\JsonResponse
     */

    public function me()
    {
        return $this->successWithData(auth('api')->user());
    }

    /**
     * 会员退出
     * @authenticated
     * @return \Illuminate\Http\JsonResponse
     * 退出之后令牌马上作废， 而管理员的退出管理有个30秒的令牌间隔时间，30秒之内，新老令牌都会使用
     */

    public function logout(Request $request)
    {
        // Get JWT Token from the request header key "Authorization"
       // $token = $request->header("Authorization");
        // Invalidate the token
        try {
            JWTAuth::invalidate(JWTAuth::getToken());
            auth('api')->logout();
            return $this->successWithInfo('退出成功');
//            return response()->json([
//                "status" => "success",
//                "message"=> "User successfully logged out."
//            ]);
        } catch (JWTException $e) {
            // something went wrong whilst attempting to encode the token
            return response()->json([
            "status" => "error",
            "message" => "Failed to logout, please try again."
            ], 500);
        }

    }

    /**
     * 会员令牌刷新
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
                #检测request中header头是否带了token
        if(is_null($token = request() ->header('authorization'))){
            return $this->errorWithInfo('未携带Authorization', 404);
            // ''
        }
        #提取token中用户数据
        $token = '';
        try{
            $user = JWTAuth::parseToken()->toUser()->toArray();
            if(! $user){
                return $this->errorWithInfo('无法获取用户信息', 200);
            }
            $token = JWTAuth::parseToken()->refresh();
        }catch (TokenExpiredException $exception){
            #异常处理 token过有效期,进行刷新
            try{
                $token = JWTAuth::refresh();
                $access_token = 'Bearer'.$token;
                request()->headers->set('Authorization',$access_token);
            }catch(JWTException $exception){
                #refresh 也过期,重新登录
                return $this->errorWithInfo('认证信息有误,请重新登陆', 401);

            }

        }
        return $this->responseWithToken($token);
    }

    protected function responseWithToken($token)
    {
        $result = [
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth('api')->factory()->getTTL()*60,
            'roleName' => 'student',
            'Authorization' => $token
        ];
        return response()->json($result, 200);
    }


}
