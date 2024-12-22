<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class QuestionLevelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

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
    }
}
