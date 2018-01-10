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
use App\Assessment;
use App\Header;
use App\Models\Question;
use App\Models\QuestionsOption;
use Session;
use Carbon\Carbon;

class ApiController extends Controller
{
	public function api()
	{

		$users = DB::table('users')->selectRaw('count(admin) as count, admin')->groupBy('admin')->get();

		foreach ($users as $user) {
			$userData['type'] = 'User';
			$userData['count'] = $user->count;

			if($user->admin == 2){
				$userData['type'] = 'Admin';
			}
			$modifiedUserData[] = $userData;
		}

		//$totalusers = DB::table('users')->selectRaw('count(admin) as count')->get();

	    //return response()->json($totalusers);

		return response()->json($modifiedUserData);

	}

	public function userChartData()
	{
		$chartlist = DB::table('users')
            ->select(DB::raw("count(*) as count,MONTHNAME(created_at) as month,YEAR(created_at) as year"))->groupBy('month')->groupBy('year')->get();

		//dd($chartlist);


        return response()->json($chartlist);

	}

}
