<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('questions', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('question')->comment('问题');
            $table->bigInteger('type_id')->unsigned()->comment('问题类型');
            $table->bigInteger('level_id')->unsigned()->comment('问题层次');
            $table->string('a')->nullable()->comment('备选答案A');
            $table->string('b')->nullable()->comment('备选答案B');
            $table->string('c')->nullable()->comment('备选答案C');
            $table->string('d')->nullable()->comment('备选答案D');
            $table->string('correct')->comment('正确答案');
            $table->foreign('type_id')->references('id')->on('question_types');
            $table->foreign('level_id')->references('id')->on('question_levels');
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
        Schema::dropIfExists('questions');
    }
}
