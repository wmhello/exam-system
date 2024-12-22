<?php

namespace App\Http\Middleware;

use Closure;
use Tymon\JWTAuth\JWTAuth;
class TokenCheck
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(&$request, Closure $next, JWTAuth $jwt)
    {
          #检测request中header头是否带了token
        if(is_null($token = \request() ->header('authorization'))){
            return $this->response(400,'Authorization Failed，未携带Authorization');
        }

        return $next($request);
    }
}
