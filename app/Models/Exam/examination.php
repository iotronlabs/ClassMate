<?php

namespace App\Models\Exam;
//amespace App\Models\classes;
use App\Models\Exam\examination;
use App\Models\Exam\question;
use App\Models\teacher\user_teacher;
use Illuminate\Database\Eloquent\Model;


class examination extends Model
{
    

    protected $guarded =[];

    public function questions()
    {
        return $this->hasMany(question::class,'exam_id','exam_code');
    }

  
    public function getRouteKeyName()
    {

    	return 'exam_code';
    }

    public function teacher()
    {
    	return $this->belongsTo(user_teacher::class,'teacher_id_created','t_id');
    }

    
    
}
