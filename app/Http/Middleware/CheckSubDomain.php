<?php

namespace App\Http\Middleware;

use Closure;
use App\Company;

class CheckSubDomain
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
        $companyname = $request->route('company');
        $domain = Company::where('domain_name', '=', $companyname);
        if($domain)
        {
            return $next($request);
        } else {
            //return response()->view('errors.nouser', compact('CompanyUsername'));
            echo "not";
        }
        //return $next($request);
    }
}
