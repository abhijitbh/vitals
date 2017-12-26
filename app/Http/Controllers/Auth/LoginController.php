<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\Controller;
use App\User;
use App\Company;
use App\AuthenticateUser;
use Socialite;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    // protected $redirectTo = '/home';


    /**
     * Handle an authentication attempt.
     *
     * @return Response
     */
    public function login(Request $request,$company = '')
    {
        if (Auth::attempt(['email' => request('email'), 'password' => request('password'), 'status' => 1])) {

            $companyname = $request->route('company');
            $domain = Company::where('domain_name', '=', $companyname);

            if($domain) {
                return $this->userHasLoggedIn( Auth::user() );
            } else {
                return response()->view('errors.nouser', compact('CompanyUsername'));
            }

            //return $this->userHasLoggedIn( Auth::user() );
        } else {
            return redirect()->intended('/login')->with('status', 'Invalid Credentials or your account is not active');
        }
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }


    public function socialLogin(AuthenticateUser $authenticateUser, Request $request){
        $hasCode = $request->has('code');
        return $authenticateUser->execute($hasCode, $this);
    }

    /**
     * When a user has successfully been logged in...
     *
     * @param $user
     * @return \Illuminate\Routing\Redirector
     */
    public function userHasLoggedIn($user)
    {
        if($user->admin == 2){
            return redirect('/userproduct');
        }else{
            return redirect('/home');
        }
    }
}
