<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Support\Facades\Auth;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'google_id', 'avatar','cid', 'admin','status'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public static function getCompanyUsers($companyId){

        return User::select('users.name','users.email', 'users.address','users.city','users.country','users.status','users.id','company.domain_name', 'company.name as company_name')
                ->leftJoin('company', 'users.cid', '=', 'company.id')
                ->where('admin', '!=', 2)
                ->where('users.cid', '=', $companyId )->get();
    }


}
