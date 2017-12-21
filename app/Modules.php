<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Modules extends Model
{

	protected $table = 'modules';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'id',  'module_name',
    ];


}
