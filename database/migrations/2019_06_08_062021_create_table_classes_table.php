<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_classes', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            $table->bigIncrements('id');
            $table->unsignedInteger('u_id')->length(10)->unique();
            $table->integer('t_ref_id')->length(10);
            $table->unsignedInteger('standard')->length(2);
            $table->char('section',1);
            $table->unsignedInteger('ct_id')->length(10);
            $table->unsignedInteger('course_id')->length(10);
            $table->integer('count')->length(10);
            $table->integer('status')->length(10);
            $table->timestamps();

/*
            $table->foreign('ct_id')
                  ->references('u_id')->on('user_teachers')
                  ->onDelete('cascade');
            $table->foreign('course_id')
                  ->references('u_id')->on('table_courses')
                  ->onDelete('cascade');      */
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_classes');
    }
}
