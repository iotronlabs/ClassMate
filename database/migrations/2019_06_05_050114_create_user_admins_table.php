<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUserAdminsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_admins', function (Blueprint $table) {
           
           $table->engine = 'InnoDB';


            $table->bigIncrements('id');

            $table->integer('u_id')->length(10)->unique();
          
            $table->string('name');
            $table->string('email')->unique();
            $table->char('gender',1);
            $table->unsignedInteger('contact')->length(15);
          
            $table->string('password');
          
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
        Schema::dropIfExists('user_admins');
    }
}
