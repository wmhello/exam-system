<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TestShow extends Model
{
    //
    protected $fillable = ["user_id", "start_time", "end_time", "test_id", "correct_num", "correct_score", "incorrect_num", "incorrect_score", "final_score"];

    protected $casts = [
      'created_at' => 'timestamp',
      'updated_at' => 'timestamp',
      "start_time" => 'timestamp',
      "end_time" => 'timestamp',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function test()
    {
        return $this->belongsTo(Test::class);
    }
}
