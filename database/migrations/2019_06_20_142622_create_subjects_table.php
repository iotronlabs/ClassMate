<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSubjectsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('subjects', function (Blueprint $table) {
            $table->Increments('subject_id');
            $table->string('subject_name');
           // $table->string('dept_name');
            $table->integer('department_id');
           // $table->integer('dept_name');
            $table->string('stream_id');
            $table->string('status')->default('Active');
            $table->string('t_ref_id')->nullable();



            $table->timestamps();
        });



        DB::statement("ALTER TABLE subjects AUTO_INCREMENT = 15001;");

        //  Schema::table('subjects', function(Blueprint $table){

        //     $table->foreign('dept_name')
        //           ->references('dept_id')->on('departments')
        //           ->onDelete('cascade');
            
        // });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('subjects');
    }
}
