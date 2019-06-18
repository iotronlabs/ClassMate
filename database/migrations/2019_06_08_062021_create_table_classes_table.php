<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableClassesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_classes', function (Blueprint $table) {

            $table->engine = 'InnoDB';

            $table->bigIncrements('class_id');
          //  $table->string('u_id')->length(10)->unique();
            $table->string('t_ref_id')->length(10)->nullable();
            $table->integer('starting_year')->length(4);
            $table->integer('passing_year')->length(4);
            $table->unsignedInteger('standard')->length(2);
            $table->char('section',1);
            $table->string('ct_id')->length(10);
           // $table->string('course_id')->length(10);
            //$table->tinyinteger('count')->length(3);
            $table->unsignedTinyinteger('status')->length(1)->default('1');
            $table->timestamps();


        });

         DB::statement("ALTER TABLE table_classes AUTO_INCREMENT = 1001");
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('table_classes');
    }
}
