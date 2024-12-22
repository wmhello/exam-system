<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Test extends Model
{
    //
    protected $fillable = ["name", "start_time", "end_time", "score", "time", "test_rules", "status"];

    protected $casts = [
      "status" => 'boolean',
      "start_time" => 'timestamp',
      "end_time" => 'timestamp',
      'created_at' => 'timestamp',
      'updated_at' => 'timestamp',
    ];

    public function test_shows()
    {
        return $this->hasMany(TestShow::class);
    }
}
