<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class QuestionType extends Model
{
    //
    protected $fillable = ['name', 'desc', 'num'];

    public function questions()
    {
        return $this->hasMany(Question::class);
    }

    public function test_papers()
    {
        return $this->hasMany(TestPaper::class);
    }


}
