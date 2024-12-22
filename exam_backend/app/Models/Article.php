<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    //
    protected $fillable = ['title', 'author', 'content'];
    protected $casts = [
      'created_at' => 'timestamp',
      'updated_at' => 'timestamp'
    ];
}
