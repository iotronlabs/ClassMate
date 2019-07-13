<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateThreadsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('forum_threads', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('user_id');
            $table->string('forum_channel_id');
            $table->unsignedInteger('replies_count')->default(0);
            $table->string('title');
            $table->text('body');
            $table->string('t_ref_id')->nullable();
            $table->string('slug');
            $table->timestamps();
            $table->tinyInteger('t_authentication')->length(1);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('threads');
    }
}
