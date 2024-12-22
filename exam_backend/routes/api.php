<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

//Route::middleware('auth:api')->get('/user', function (Request $request) {
//    return $request->user();
//});


Route::group(['prefix' => 'admin', 'namespace' => 'Admin'], function(){
    Route::post('login', 'LoginController@login');
    Route::post('logout', 'LoginController@logout');
    Route::post('refresh', 'LoginController@refresh');
    Route::post('me', 'LoginController@me');
    Route::post('sms/send', 'SmsController@send_code')->name('sms.send_code');
    Route::post('sms/verify', 'SmsController@verify_code')->name('sms.verify_code');
});


Route::middleware(['auth:admin'])->prefix('admin')->namespace('Admin')->group(function(){

//   Route::get('roles/all', 'RoleController@get_roles')->name('roles.get_roles'); // 获取当前用户的所有角色
//   Route::post('roles/test', 'RoleController@assign_role')->name('roles.assign_role');  // 给当前用户分配角色
//   Route::apiResource('roles', 'RoleController');
   // 模块和权限管理

});


Route::prefix('admin')->namespace('Admin')->group(function(){

   // 模块和权限管理
   Route::apiResource('modules', 'ModuleController');
   // 角色管理
   Route::apiResource('roles', 'RoleController');
   // 管理员管理
    Route::post('users/export', "AdminController@export")->name("users.export");
    Route::post('users/import', "AdminController@import")->name("users.import");
    Route::post('users/modify', "AdminController@modify")->name("users.modify");
    Route::apiResource('users', 'AdminController');

    Route::post('medias', "MediaController@store")->name("medias.store");
    Route::post('members/import', "UserController@import")->name("members.import");
    // 会员管理
    Route::apiResource('members', "UserController");

    // 题库层次管理
    Route::apiResource('question_levels', "QuestionLevelController");

    // 题库类型管理
    Route::apiResource('question_types', "QuestionTypeController");

    // 题库管理
    Route::apiResource('questions', "QuestionController");

    // 测试管理

    Route::apiResource('tests', "TestController");

    // 文章管理
    Route::apiResource('articles', 'ArticleController');

});




//  小程序或者微信公众号管理端
Route::group(['prefix' => 'auth'], function(){
    Route::post('login', 'AuthController@login');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
    Route::post('users/modify', "Admin\UserController@modify");
    Route::get('tests/list', 'Admin\TestController@index')->name("tests.list");
    Route::post('test_shows/create/{id}', 'Admin\TestShowController@create')->name('test_shows.create');
    Route::post('test_shows/update/{id}', 'Admin\TestShowController@update')->name('test_shows.update');
    Route::apiResource('test_shows', 'Admin\TestShowController');
    Route::get('articles', 'Admin\ArticleController@index');
    Route::get('articles/{id}', 'Admin\ArticleController@show');
});
