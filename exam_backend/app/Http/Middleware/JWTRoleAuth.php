<?php

namespace App\Http\Middleware;

use Closure;
use phpDocumentor\Reflection\TypeResolver;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\Http\Middleware\BaseMiddleware;
use Symfony\Component\HttpKernel\Exception\UnauthorizedHttpException;

class JWTRoleAuth
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $role = null)
    {
        try{
            $tokenRole = $this->auth->parseToken()->getClaim('role');

        } catch ( JWTException $e) {
            return $next($request);
        }

        if ($tokenRole != $role) {
           throw new UnauthorizedHttpException('jwt-auth', 'user role error');
        }
        return $next($request);
    }



}
