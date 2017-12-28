<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Company;
use App\UserProduct;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Auth\Events\Registered;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:6|confirmed',
            'is_company' => '',
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        // Admin Registration
        if(($data['is_company'] == 0)){
            $company = Company::create([
                'name' => $data['company'],
                'domain_name' => str_slug($data['company'], '-')
            ]);
            $user =  User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => bcrypt($data['password']),
                'cid'=> $company->id,
                'admin' => ($data['is_company']) ? 1 : 2 ,
                'status' => 1,
            ]);

        }

        // user Registration
        if(($data['is_company']== 1)) {
            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => bcrypt($data['password']),
                'cid'=> $data['company'],
                'admin' => ($data['is_company']) ? 1 : 2 ,
                'status' => 1,
            ]);
        }

        foreach (DB::table('modules')->get() as $key => $module) {
            $userProduct = new UserProduct;
            $userProduct->uid = $user->id;
            $userProduct->toggle = 0;
            $userProduct->module_id = $module->id;
            $userProduct->save();
        }
        return $user;
    }


    /**
    * Show the application registration form.
    *
    * @return \Illuminate\Http\Response
    */
    public function showRegistrationForm(Request $request, $company = '')
    {
        $company_id = DB::table('company')->where('domain_name', $company)->first();

        return view('auth.register')->with('isCompany', empty($company)? 0 : 1 )
                                    ->with('companyid', empty($company_id->id) ? 0 : $company_id->id)
                                    ->with('status', 'Your Account created Successfuly');
    }

    /**
    * Handle a registration request for the application.
    *
    * @param \Illuminate\Http\Request $request
    * @return \Illuminate\Http\Response
    */
    public function register(Request $request)
    {

        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        // $this->guard()->login($user);

        return $this->registered($request, $user) ?: redirect($this->redirectPath());
    }


    /**
    * The user has been registered.
    *
    * @param \Illuminate\Http\Request $request
    * @param mixed $user
    * @return mixed
    */
    protected function registered(Request $request, $user)
    {
        return redirect()->intended('/')->with('status', 'Succesfully Registered!');
    }
}
