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
            $table->foreign('t_id')
                  ->references('u_id')->on('user_teachers')
                  ->onDelete('cascade');
            $table->foreign('c_id')
                  ->references('u_id')->on('table_classes')
                  ->onDelete('cascade'); */
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
