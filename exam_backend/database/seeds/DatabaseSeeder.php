<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
         $this->call(AdminSeeder::class);
         $this->call(RoleSeeder::class);
         $this->call(AdminRoleSeeder::class);
//
//         $this->call(QuestionTypeSeeder::class);
//         $this->call(QuestionLevelSeeder::class);
//         $this->call(QuestionSeeder::class);

            DB::table('question_types')->insert([
            [
              'name' => '单选题',
              'desc' => '单选,四选一',
              'created_at' => Carbon::now()
            ],
            [
              'name' => '多选题',
              'desc' => '多选，四选多',
              'created_at' => Carbon::now()
            ],
            [
              'name' => '判断题',
              'desc' => '判断题,正误',
              'created_at' => Carbon::now()
            ],
        ]);

                DB::table('question_levels')->insert([
            [
              'name' => '容易',
              'desc' => '简单知识点，背诵即可以',
              'created_at' => Carbon::now()
            ],
            [
              'name' => '适中',
              'desc' => '通过经过几次练习，才能掌握解答步骤和方法',
              'created_at' => Carbon::now()
            ],
            [
              'name' => '困难',
              'desc' => '需要结合实际上下文来选择，理论练习实际',
              'created_at' => Carbon::now()
            ]
        ]);

//        factory(App\Models\Question::class, 50)->create();
//        factory(App\Models\Article::class, 50)->create();
    }
}
