<?php

namespace App\Http\Middleware;

use Auth;
use Closure;

class AuthenticateAdmin
{
     public function handle($request, Closure $next)
    {   
        if(!Auth::guard('user_admins')->check())
        {
            return redirect('/');
        }
        return $next($request);
    }
}
