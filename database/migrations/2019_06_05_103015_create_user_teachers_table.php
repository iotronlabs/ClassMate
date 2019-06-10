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
            $table->string('u_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10);
            $table->string('name');
            $table->string('email')->unique();
            $table->char('gender',1);
            $table->unsignedBiginteger('contact')->length(10);
          //  $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->unsignedTinyinteger('status')->length(3);
            $table->rememberToken();
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
        Schema::dropIfExists('user_teachers');
    }
}
