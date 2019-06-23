<?php

namespace App\Models\Exam;
//amespace App\Models\classes;
use Illuminate\Database\Eloquent\Model;
use App\Models\Exam\examination;
//use Tymon\JWTAuth\Contracts\JWTSubject;
use App\Models\Exam\question;

class examination extends Model
{
    

    protected $guarded =[
        ];

    public function question()
    {
        return $this->hasMany(Question::class);
    }




    
    
}
