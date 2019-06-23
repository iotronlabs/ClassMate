<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAddForiegnKey extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //  Schema::table('topics', function ($table) {

        //    // $table->engine = 'InnoDB';

        //    $table->foreign('sub_id')->references('id')->on('subjects')->onDelete('cascade');
        // });

       //  Schema::table('streams', function ($table) {

        //    // $table->engine = 'InnoDB';

        //    $table->foreign('department_code')->references('')->on('subjects')->onDelete('cascade');
        // }); 


    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('add_foriegn_key');
    }
}
