<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{

	protected $table = 'Questions';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
       'id',  'topic', 'question_text','question_data', 'answer_explanation','hid',
    ];


}
