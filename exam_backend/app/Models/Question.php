<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    //
    protected $fillable = ['question', 'type_id', 'level_id', 'a', 'b', 'c', 'd', 'correct'];
        public function scopeLevelId($query)
    {
        $params = request()->input('level_id');
        return $params?$query = $query->where('level_id', $params):$query;
    }

    public function scopeTypeId($query)
    {
        $params = request()->input('type_id');
        return $params?$query = $query->where('type_id', $params):$query;
    }

    public function level()
    {
        return $this->belongsTo(QuestionLevel::class);
    }

    public function type()
    {
        return $this->belongsTo(QuestionType::class);
    }
}
