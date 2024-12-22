<?php

use Illuminate\Database\Seeder;

class Exam extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
         $this->call(QuestionTypeSeeder::class);
         $this->call(QuestionLevelSeeder::class);
         $this->call(QuestionSeeder::class);
    }
}
