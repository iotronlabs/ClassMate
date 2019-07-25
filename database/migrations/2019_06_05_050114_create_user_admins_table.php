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



            $table->string('name');
            $table->string('email')->unique();
            $table->char('gender',1);
            $table->unsignedBigInteger('contact')->length(15);
           // $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->integer('authentication')->default('4')->length(1);

            $table->rememberToken();
            $table->timestamps();

            $table->integer('t_ref_id')->length(10)->nullable();



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
