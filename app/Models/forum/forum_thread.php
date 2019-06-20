<?php

namespace App\Models\forum;

use App\Models\forum\forum_Reply;
use App\Models\forum\forum_channel;
use App\Models\teacher\user_teacher;
use Illuminate\Database\Eloquent\Model;

class forum_thread extends Model
{
    protected $guarded = [];

    public function path()
    {
    	return '/api/forum/threads/'.$this->id;
    }

    public function replies()
    {
 
      return $this->hasMany(forum_Reply::class);

    }

    public function addReply($reply)
    {

    	$this->replies()->create($reply);
    }

      public function creator()
    {
        return $this->belongsTo(user_teacher::class, 'user_id' , 't_id');
    }


    public function channel()
    {
        return $this->belongsTo(forum_channel::class);
    }
}


