<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateForeignKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
   
        public function up()
    {
        // Schema::table('departments', function (Blueprint $table) {
            
        //     $table->foreign('dept_id')
        //     ->references('department_id')
        //     ->on('subjects');
        // });

        // Schema::table('subjects', function (Blueprint $table) {
            
        //     $table->foreign('department_id')
        //     ->references('dept_id')
        //     ->on('departments');
        // });
        
    }
    

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('foreign_key');
    }
}
