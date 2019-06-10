<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableStudentResultsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_student_results', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('u_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10);
            $table->string('class_id')->length(10);
            $table->string('s_id')->length(10);
            $table->string('s_name',100);
            $table->tinyinteger('c_day')->length(1);
            $table->tinyinteger('marks')->length(3);
            $table->char('grade',1);
            $table->tinyinteger('backlog_status')->length(1);
            $table->time('taken_at');
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
        Schema::dropIfExists('table_student_results');
    }
}
