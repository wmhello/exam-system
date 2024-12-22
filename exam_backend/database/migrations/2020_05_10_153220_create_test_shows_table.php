<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestShowsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('test_shows', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->biginteger('user_id')->unsigned()->comment('会员标识');
            $table->timestamp('start_time')->nullable()->comment('个人测试开始时间');
            $table->timestamp('end_time')->nullable()->comment('个人测试开始时间');
            $table->integer('test_id')->comment('测试标识');
            $table->integer('correct_num')->default(0)->comment('正确的题目数量');
            $table->double('correct_score')->default(0)->comment('正确的分值');
            $table->integer('incorrect_num')->default(0)->comment('错误的题目数量');
            $table->double('incorrect_score')->default(0)->comment('错误的分值');
            $table->double('final_score')->default(0)->comment('最终得分');
            $table->foreign('user_id')->references('id')->on('users');
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
        Schema::dropIfExists('test_shows');
    }
}
