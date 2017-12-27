<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Mail;
use App\Mail\ActivationMail;
use App\User;
use App\Modules;
use App\Company;
use App\UserProduct;
use Session;

class AdminController extends Controller
{

    public function __construct()
    {
        $this->middleware('isadmin');
        $this->middleware('logusersactivity');
        $this->middleware('checksubdomain');
    }

    public function module(Request $request, $id)
    {
        $userProduct = Modules::getModulesByUser($id);
        return view('module',['userProduct' => $userProduct]);
    }

    public function showuser()
    {
  
        $users = User::getCompanyUsers(Auth::user()->cid);
        $company =  Company::where('id', '=', Auth::user()->cid)->first();
        return view('userproduct', ['users' => $users, 'company' => $company]);
    }

    public function store(Request $request, $id)
    {
        UserProduct::where('uid', $id )->delete();
        $data = collect(Input::get('toggle_type'));

        foreach ($data as $key => $value) {
            $userProduct = new UserProduct;
            $userProduct->uid = $id;
            $userProduct->toggle = $value;
            $userProduct->module_id = $key;
            $userProduct->save();
        }

        $userProduct = Modules::getModulesByUser($id);
        return view('module',['userProduct' => $userProduct])->with('status', 'Module updated!');
    }

    public function approveUser(Request $request, $id, $flag)
    {
        $user = User::findOrFail($id);
        $user->status = $flag;
        $user->save();
        $updatedUser = DB::table('users')
                      ->select('users.name','users.email', 'users.address','users.city','users.country','users.status','users.id','company.domain_name','company.name as company_name')
                      ->leftJoin('company', 'users.cid', '=', 'company.id')
                      ->where('users.id', '=', [$id])->first();

        /*if( $flag == 1){
          Mail::to(Auth::user()->email)->send(new ActivationMail( $updatedUser ));
        }*/
    }
}
