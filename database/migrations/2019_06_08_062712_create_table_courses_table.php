<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_courses', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            $table->bigIncrements('id');
            $table->unsignedInteger('u_id')->length(10)->unique();
            $table->integer('t_ref_id')->length(10);
            $table->unsignedInteger('c_id')->length(10);
            $table->unsignedInteger('t_id')->length(10);
            $table->string('s_name',100);
            $table->integer('c_day')->length(1);
            $table->time('time_start');
            $table->time('time_end');
            $table->timestamps();

/*
             */
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_courses');
    }
}
