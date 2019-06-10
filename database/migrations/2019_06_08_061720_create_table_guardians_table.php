<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableGuardiansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_guardians', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            $table->bigIncrements('id');
            $table->unsignedInteger('u_id')->length(10)->unique();
            $table->integer('t_ref_id')->length(10);
            $table->string('name',100);
            $table->string('email',100)->unique();
            $table->char('gender',1);
            $table->unsignedInteger('contact')->length(15);
            $table->string('password');
            $table->unsignedTinyinteger('status')->length(3);
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
        Schema::dropIfExists('table_guardians');
    }
}
