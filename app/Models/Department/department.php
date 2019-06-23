<?php

namespace App\Models\Department;
//amespace App\Models\classes;

//use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;


//use Tymon\JWTAuth\Contracts\JWTSubject;

class department extends Authenticatable 
{
     use Notifiable;
      //protected $primaryKey = '';


    protected $guarded =[
        ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
      //  'email_verified_at' => 'datetime',
    ];
    
    
    public function getJWTIdentifier()
    {
      return $this->getkey();
    }
    public function getJWTCustomClaims()
    {
      return [];

    }
}