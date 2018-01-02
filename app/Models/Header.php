<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Header extends Model
{

	protected $table = 'Header';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'id',  'name', 'aid',
    ];


}