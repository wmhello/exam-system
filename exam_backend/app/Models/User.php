<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Tymon\JWTAuth\Contracts\JWTSubject;


class User extends Authenticatable implements  JWTSubject
{
   use Notifiable;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'nickname','phone', 'email', 'password', 'avatar','open_id', 'union_id'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $casts = [
      'created_at' => 'timestamp',
      'updated_at' => 'timestamp',
      'status' => 'boolean'
    ];


    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
       return ['role' => 'member'];
    }

    public function test_shows()
    {
        return $this->hasMany(TestShow::class);
    }

}
