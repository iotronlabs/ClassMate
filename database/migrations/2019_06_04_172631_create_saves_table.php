<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSavesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('forum_saves', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('user_id');
            $table->string('saved_id');
            $table->string('saved_type',50);
            $table->string('t_ref_id')->length(10)->nullable();
            $table->timestamps();


            $table->unique(['user_id','saved_id','saved_type']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('saves');
    }
}
