<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserTeachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_teachers', function (Blueprint $table) {


            $table->engine = 'InnoDB';

            $table->bigIncrements('id');
            $table->string('t_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10);
            $table->string('t_fname')->length(100);
            $table->string('t_mname')->lenth(100);
            $table->string('t_surname')->length(100);
            $table->string('t_dob');
            $table->integer('t_age');
            $table->string('t_email')->unique();
            $table->char('t_gender',1);
            $table->unsignedBiginteger('t_contact')->length(10);
          
            $table->string('t_nationality')->length(100);
            $table->string('t_address')->length(100);
            $table->integer('t_address_pin')->length(6);
            $table->string('t_address_state')->length(100);


            $table->string('password');
            $table->string('t_sub')->length(200);

            $table->unsignedTinyinteger('status')->length(3);
            $table->rememberToken();
            $table->timestamps();
            $table->integer('t_authentication')->length(1);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_teachers');
    }
}
