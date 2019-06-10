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

            $table->bigIncrements('id');
            $table->string('u_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10);
            $table->string('name',100);
            $table->string('email',100)->unique();
            $table->char('gender',1);
            $table->unsignedBiginteger('contact')->length(10);
            $table->date('d_o_b');
           // $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('guardian_id')->length(10);
            $table->string('class_id')->length(10);
            $table->unsignedTinyinteger('status')->length(3);
            $table->rememberToken();
            $table->timestamps();


        });

      /*  

        Schema::table('user_students', function(Blueprint $table){

            $table->foreign('guardian_id')
                  ->references('u_id')->on('table_guardians')
                  ->onDelete('cascade');
            $table->foreign('class_id')
                  ->references('u_id')->on('table_classes')
                  ->onDelete('cascade');     
        });*/
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
