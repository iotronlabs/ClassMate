<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateForeignKeys extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    // public function up()
    // {
    //     Schema::table('table_classes', function (Blueprint $table) {

    //         $table->foreign('ct_id')
    //               ->references('u_id')->on('user_teachers')
    //               ->onDelete('cascade');
    //         $table->foreign('course_id')
    //               ->references('u_id')->on('table_courses')
    //               ->onDelete('cascade');
    //     });

    //     Schema::table('table_courses', function (Blueprint $table) {

    //        $table->foreign('t_id')
    //               ->references('u_id')->on('user_teachers')
    //               ->onDelete('cascade');
    //         $table->foreign('c_id')
    //               ->references('u_id')->on('table_classes')
    //               ->onDelete('cascade');
    //     });

    //      Schema::table('user_students', function(Blueprint $table){

    //         $table->foreign('guardian_id')
    //               ->references('u_id')->on('table_guardians')
    //               ->onDelete('cascade');
    //         $table->foreign('class_id')
    //               ->references('u_id')->on('table_classes')
    //               ->onDelete('cascade');
    //     });
    // }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('');
    }
}
