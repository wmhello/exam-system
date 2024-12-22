<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Tymon\JWTAuth\Exceptions\TokenExpiredException;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Facades\JWTAuth;

/**
 * @group 管理员登陆管理
 *  管理员登陆、退出、刷新和获取个人信息
 * @package App\Http\Controllers\Admin
 */
class LoginController extends Controller
{
    //
        public function __construct()
    {
        $this->middleware('auth:admin', ['except' => ['login', 'refresh']]);
    }

    /**
     * 管理员登陆
     * @bodyParam username string required 用户名,可以是手机号和登陆名  Example: admin@qq.com
     * @bodyParam password string required 密码  Example: 123456
     * @return \Illuminate\Http\JsonResponse
     */

    public function login()
    {

        $username = request('username');
        $password = request('password');
        $user = DB::table('admins')->where('email', $username)->first();
        if ($user) {
           $pwd = $user->password;
           if (Hash::check($password, $pwd)) {
               // 密码相等
               $token = auth('admin')->tokenById($user->id);
               return $this->responseWithToken($token);
           }
        }
        return $this->errorWithInfo('认证出错，用户名或者密码不对', 401);

    }

    /**
     * 获取管理员信息
     * @authenticated
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        $user =  auth('admin')->user();
        $data = Admin::find($user->id);
        return new \App\Http\Resources\Admin($data);
    }

    /**
     * 管理员退出
     * @authenticated
     * @return \Illuminate\Http\JsonResponse
     * 有一个黑名单过期时间（jwt里面的设置），退出之后令牌不会马上作废，根据设置是30秒的时间
     */
    public function logout()
    {
        auth('admin')->logout();
        return $this->successWithInfo('退出成功');
    }

    /**
     * 刷新管理员令牌
     * @return \Illuminate\Http\JsonResponse
     */

    public function refresh()
    {
          if(is_null($token = request() ->header('authorization'))){
            return $this->errorWithInfo('未携带Authorization', 404);
            // ''
        }
        #提取token中用户数据
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
                return $this->errorWithInfo('刷新令牌过期,请重新登陆', 401);

            }

        }
        return $this->responseWithToken($token);
    }

    protected function responseWithToken($token)
    {
        $result = [
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth('admin')->factory()->getTTL()*60
        ];
        return response()->json($result, 200);
    }
}
