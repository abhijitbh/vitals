<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Assessment extends Model
{
     protected $table = 'Assessment';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'id',  'name', 'location', 'version_number', 'enhanced_comments'
    ];
}
