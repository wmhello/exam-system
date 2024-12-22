<?php

namespace App\Models;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Tymon\JWTAuth\Contracts\JWTSubject;

class Admin extends Authenticatable implements  JWTSubject
{
    //
    use Notifiable;

    protected  $fillable = ['nickname', 'email', 'password', 'phone', "avatar", "status"];
    protected  $hidden = ['password'];
    protected  $guarded_name = 'admin';

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
       return ['role' => 'admin'];
    }


    public function scopeEmail($query)
    {
        $params = request()->input('email');
        if ($params) {
            return $query = $query->where('email', like, "%".$params."%");
        } else {
            return $query;
        }
    }

        public function scopePhone($query)
    {
        $params = request()->input('phone');
        if ($params) {
            return $query = $query->where('phone', like, "%".$params."%");
        } else {
            return $query;
        }
    }

    public function admin_roles()
    {
        return $this->hasMany(AdminRole::class);
    }

}
