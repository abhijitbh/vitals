<?php

namespace App\Http\Middleware;

use Closure;
use App\UsersActivity;

class LogUsersActivity
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {

        if ($request->user()) {
            $usersActivity = new UsersActivity;
            $usersActivity->user_id = $request->user()->id;
            $usersActivity->ip = $request->ip();
            $usersActivity->url = $request->fullUrl();
            $usersActivity->save();
        }

        return $next($request);
    }
}
