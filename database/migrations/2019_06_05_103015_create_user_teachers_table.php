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

           $table->bigIncrements('t_id')->length(7)->unique();
            
            $table->string('t_ref_id')->length(10)->nullable();
            $table->string('t_fname')->length(100);
            $table->string('t_mname')->lenth(100);
            $table->string('t_surname')->length(100);
            $table->string('t_dob');
            $table->integer('t_age');
            $table->string('t_email')->unique();
            $table->char('t_gender',1);
            $table->unsignedBiginteger('t_contact')->length(10);
          
            $table->string('t_nationality')->length(100);
            $table->string('t_religion')->length(30);
            $table->string('t_address')->length(100);
            $table->integer('t_address_pin')->length(6);
            $table->string('t_address_state')->length(100)->nullable();


            $table->string('password');
            $table->string('t_sub')->length(200);

            $table->unsignedTinyinteger('status')->length(3)->default('111');
            $table->rememberToken();
            $table->timestamps();
            $table->integer('t_authentication')->length(1)->default('2');
           // $table->string('t_profile_picture')->nullable();
        });

       DB::statement("ALTER TABLE user_teachers AUTO_INCREMENT = 170200;");
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
