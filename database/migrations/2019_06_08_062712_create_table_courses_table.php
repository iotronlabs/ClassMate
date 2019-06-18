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

            $table->bigIncrements('sub_id')->unique();
            //$table->string('u_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10)->nullable();
            $table->string('class_id')->length(10);
            $table->string('t_id')->length(10);
            $table->string('sub_name',100);
            $table->tinyinteger('c_day')->length(1);
            $table->tinyinteger('sem')->length(2);
            $table->tinyinteger('current_sem')->length(2);
            $table->tinyinteger('status')->length(1)->default('1');
            $table->time('time_start');
            $table->time('time_end');
            $table->timestamps();

/*
             */
        });
         DB::statement("ALTER TABLE table_courses AUTO_INCREMENT = 1001;");
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
