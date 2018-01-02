<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class QuestionsOption extends Model
{

	protected $table = 'questions_option';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'id', 'question_id','value',
    ];


}
