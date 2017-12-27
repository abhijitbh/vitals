<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UsersActivity extends Model
{


	protected $table = 'users_activity';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'url', 'ip',
    ];

}
