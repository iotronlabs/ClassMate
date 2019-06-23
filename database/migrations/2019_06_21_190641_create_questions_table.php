<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {

           //$table->increments('q_id');
           $table->string('question_id')->primary();
           $table->string('exam_id');
           $table->string('type');
           $table->string('question');
           $table->string('option_1');
           $table->string('option_2');
           $table->string('option_3');
           $table->string('option_4');
           $table->string('answer');
           $table->timestamps();
        });

         DB::statement("ALTER TABLE questions AUTO_INCREMENT = 1000;");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('questions');
    }
}
