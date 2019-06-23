<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateExaminationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('examinations', function (Blueprint $table) {
            $table->string('exam_code')->primary();
            $table->string('topic');
            $table->string('subject');
            $table->string('exam_name');
            $table->date('date');
            $table->integer('duration');
            $table->integer('pass_mark');
            $table->integer('re_exam');
            $table->string('description');
            $table->string('status');
            $table->string('class_id');
            $table->string('teacher_id_created');
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
        Schema::dropIfExists('examinations');
    }
}
