<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('nickname')->comment('昵称')->nullable();
            $table->string('email')->comment('登陆名');
            $table->string('password')->nullable()->comment('密码');
            $table->string('phone', 11)->nullable()->comment('手机号码');
            $table->string('open_id')->nullable()->comment('微信端用户ID');
            $table->string('union_id')->nullable()->comment('微信端用户联合ID');
            $table->string('avatar')->nullable()->comment('用户头像');
            $table->string('status')->default(1)->comment('用户状态');
            $table->rememberToken();
            $table->softDeletes();
            $table->timestamps();
            $table->unique('email');
            $table->unique('phone');
            $table->unique('open_id');
            $table->unique('union_id');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
