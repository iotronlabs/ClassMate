<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDepartmentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('departments', function (Blueprint $table) {
            $table->increments('dept_id');
           //  $table->integer('dept_id')->unsigned();
           // $table->foreign('dept_id')->references('id')->on('departments');
            $table->string('dept_name');
            $table->string('stream_id');
            $table->string('stream_name');
            $table->string('course_length');
            $table->string('status')->default('Active');
            $table->string('t_ref_id')->nullable();

            $table->timestamps();
        });

         DB::statement("ALTER TABLE departments AUTO_INCREMENT = 65001;");

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('departments');
    }
}
