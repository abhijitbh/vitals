<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\User;
use Session;
use Illuminate\Support\Facades\Input;
use App\UserProduct;

class AdminController extends Controller
{
    
    public function __construct()
    {
      //$this->middleware('isadmin');
      $this->middleware('logusersactivity');
    }

    public function module()
    {
      return view('module');
    }

    public function showuser() 
    {
        $users = DB::table('users')->where('email', '!=', ['admin@gmail.com'])->get();
        return view('userproduct', ['users' => $users]);
	  }



    public function store(Request $request, $id) 
    {  
    	$data = collect(Input::get('toggle_type'))->filter(function($item){
    		return $item == 1;
    	});
      dd($data);
     	$userProduct = UserProduct::where('uid', Auth::id())->delete();

  		foreach ($data as $value) {
        $userProduct = new UserProduct;
        $userProduct->uid = Auth::id();
        $userProduct->toggle = $value;
        $userProduct->save();
  		}

      Session::flash('success_msg', 'Success!');
      return view('module');
    }

    public function approveUser(Request $request, $id, $flag){
      $user = User::findOrFail($id);
      $user->status = $flag;
      $user->save();
    }
}
