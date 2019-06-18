<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableBacklogTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_backlog', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('student_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10)->nullable();
            $table->string('class_id')->length(10);
            $table->string('sub_id')->length(10);
            $table->string('sub_name',100);
            $table->tinyinteger('current_sem')->length(2);
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
        Schema::dropIfExists('table_backlog');
    }
}
