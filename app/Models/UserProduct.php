<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserProduct extends Model
{

	protected $table = 'user_product';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'id',  'uid', 'toggle','module_id',
    ];


}
