<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Socialite;
use App\User;
use Illuminate\Http\Request;
use App\AuthenticateUser;
use Illuminate\Support\Facades\View;

class UserController extends Controller
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
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    /**
     * Show the application company.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view::make('auth.passwords.company');
    }


    // public function socialLogin(AuthenticateUser $authenticateUser, Request $request){
    //     $hasCode = $request->has('code');
    //     return $authenticateUser->execute($hasCode, $this);
    // }


    /**
     * When a user has successfully been logged in...
     *
     * @param $user
     * @return \Illuminate\Routing\Redirector
     */
    public function userHasLoggedIn($user)
    {
        if(Auth::user()->admin == 2){
            return redirect('/userproduct');
        }else{
            return redirect('/home');
        }
    }

}



