<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableElectiveCoursesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_elective_courses', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('s_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10);
            $table->string('c_id')->length(10);
            $table->string('t_id')->length(10);
            $table->string('u_id')->length(10);
            $table->string('s_name',100);
            $table->tinyinteger('c_day')->length(1);
            $table->tinyinteger('current_sem')->length(2);
            $table->time('time_start');
            $table->time('time_end');
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
        Schema::dropIfExists('table_elective_courses');
    }
}
