<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_students', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            //$table->bigIncrements('id');
            $table->bigIncrements('s_id')->length(7)->unique();
           // $table->string('s_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10)->nullable();
            $table->string('s_fname',100);
            $table->string('s_mname',100);
            $table->string('s_surname',100);
            $table->string('s_email',100)->unique();
            $table->char('s_gender',1);
            $table->unsignedBiginteger('s_contact')->length(10);
            $table->date('s_dob');
            $table->integer('s_age')->length(2);
            $table->string('s_nationality')->length(50);
            $table->string('s_religion')->length(30);
            $table->string('s_address')->length(200);
            $table->string('s_address_pin')->length(6);
            $table->string('s_address_state')->length(20)->nullable();
            $table->string('guardian_fname')->length(100);
            $table->string('guardian_mname')->length(100);
            $table->string('guardian_surname')->length(100);
            $table->string('guardian_email')->lenght(30);
            $table->string('guardian_contact')->length(10);
            $table->string('guardian_address')->length(100);
            $table->integer('guardian_pin')->length(6);
            $table->string('guardian_state')->length(50)->nullable();

           // $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            //$table->string('guardian_id')->length(10);
            $table->string('class_id')->length(10);
            $table->unsignedTinyinteger('status')->length(3)->default('111');
            $table->integer('s_authentication')->default('1')->length(1);
            $table->rememberToken();
            $table->timestamps();
            //$table->string('s_profile_picture')->nullable();

        });

      DB::statement("ALTER TABLE user_students AUTO_INCREMENT = 170500;");

        
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_students');
    }
}
