<?php

namespace App\Models\forum;

use App\Models\teacher\user_teacher;
use Illuminate\Database\Eloquent\Model;

class forum_reply extends Model
{
    protected $guarded = [];
    

    public function owner()
    {
    	return $this->belongsTo(user_teacher::class, 'user_id');
    }
}
