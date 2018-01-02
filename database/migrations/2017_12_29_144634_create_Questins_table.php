<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuestinsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Questions', function (Blueprint $table) {
            $table->increments('id');
            $table->string('topic')->nullable();
            $table->string('question_text')->nullable();
            $table->string('question_data')->nullable();
            $table->string('answer_explanation')->nullable();
            $table->integer('hid')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('Questins');
    }
}
