<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateStreamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('streams', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string('stream_code')->unique();
            $table->string('stream_name')->unique();
            $table->integer('course_length');
            $table->string('Assign_Subject');
              $table->string('department_code');
              $table->string('department_name');
            $table->string('t_ref_id')->nullable();
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
        Schema::dropIfExists('streams');
    }
}
