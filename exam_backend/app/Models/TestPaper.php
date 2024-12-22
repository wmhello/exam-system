<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TestPaper extends Model
{
    //

    protected $fillable = ["show_id", "question", "type_id", "level_id", "a", "b", "c", "d", "correct", "choose", "score"];

    protected $casts = [
       "created_at" => "timestamp",
       "updated_at" => "timestamp"
    ];

    public function show()
    {
        return $this->belongsTo(TestShow::class);
    }

    public function type()
    {
        return $this->belongsTo(QuestionType::class);
    }

    public function level()
    {
        return $this->belongsTo(QuestionLevel::class);
    }
    
}
