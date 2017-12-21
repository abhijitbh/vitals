<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\User;

class HomeController extends Controller
{



    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        $this->middleware('logusersactivity');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function dashboard()
    {
        $activemodules = DB::table('modules')
                  ->select('user_product.module_id','user_product.toggle', 
                          'modules.module_name')
                  ->leftJoin('user_product', 'user_product.module_id', '=', 'modules.id')
                  ->where('user_product.uid', Auth::user()->id)
                  ->where('user_product.toggle', 1)
                  ->get();


        return view('dashboard', ['activemodules' => $activemodules ]);
    }


    public function updateProfile(Request $request){
        $data = $request->all();

        $this->validator($request->all())->validate();

        User::where('email', Auth::user()->email)->update([
            'name' => $data['name'],
            'address' => $data['address'],
            'city' => $data['city'],
            'country' => $data['country'],
            'postal_code' => $data['postal_code'],
            'about_me' => $data['about_me'],
        ]);
        return redirect('/profile');

    }

    protected function validator(array $data)
    {

        return Validator::make($data, [
            'name' => 'required|string|max:50',
            'address' => 'required|string|max:100',
            'city' => 'required|string|max:25',
            'country' => 'required|string|max:20',
            'postal_code' => 'required|string|max:50',
            'about_me' => 'max:500',
        ]);
    }

}

