<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserStaffsTable extends Migration
{
    public function up()
    {
        Schema::create('user_staffs', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            //$table->bigIncrements('id');
            $table->bigIncrements('st_id')->length(7)->unique();
            $table->integer('t_ref_id')->length(10)->nullable();
            $table->string('st_fname');
            $table->string('st_mname');
            $table->string('st_surname');
            $table->string('st_dob');
            $table->string('st_age');
            $table->unsignedInteger('st_contact')->length(10);
            $table->string('st_email')->unique();
            $table->char('st_gender',1);
            $table->string('st_nationality')->length(50);
            $table->string('st_religion');
            $table->string('st_address')->length(200);
            $table->string('st_address_pin')->length(6);
            $table->string('st_address_state')->length(20);
            //$table->unsignedInteger('contact')->length(15);
          //  $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('st_sub')->length(50)->nullable();
            $table->unsignedTinyinteger('status')->length(3)->default('000');
            $table->rememberToken();
            $table->timestamps();
            $table->integer('st_authentication')->length(2)->default('3');
        });

        
        DB::statement("ALTER TABLE user_staffs AUTO_INCREMENT = 170300;");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_staffs');
    }
}
