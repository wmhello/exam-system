<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
class QuestionTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
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
    }
}
