<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tests', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string("name")->comment('测试名称');
            $table->timestamp("start_time")->comment('测试开始时间');
            $table->timestamp("end_time")->comment('测试结束时间');  // 如果启用测试，则会在指定的时间允许测试，并显示在前端
            $table->double("score")->comment('测试分值');
            $table->integer("time")->comment('测试时长');
            $table->json("test_rules")->comment('测试规则');  // 表示各种类型的题目总的分值和题目数量
            $table->boolean('status')->default(1)->comment("测试状态");  // 是否启用该测试
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
        Schema::dropIfExists('tests');
    }
}
