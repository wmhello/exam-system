<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionLevelsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('question_levels', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name')->comment('题目难易程度');
            $table->string('desc')->nullable()->comment("说明");
            $table->integer('total_num')->default(0)->comment("数量");
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
        Schema::dropIfExists('question_levels');
    }
}
