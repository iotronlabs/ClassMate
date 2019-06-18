<?php

namespace App\Http\Controllers\api\forum;

use App\Http\Controllers\Controller;
use App\Models\forum\forum_thread;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Auth;

class RepliesController extends Controller
{

    public function __construct()
    {
    	$this->middleware('guest:students');
    	$this->middleware('guest:user_teachers');
    }

    public function store(forum_thread $thread)
    {
      
       $user = Auth::user();
 
       if(Auth::guard('students')->check())
       {
       	 $user = Auth::guard('students')->user();
       }

        if(Auth::guard('user_teachers')->check())
       {
       	 $user = Auth::guard('user_teachers')->user();
       }

      $thread->addReply([

       'body' => request('body'),
       'user_id' =>  $user->id, // request('user_id'), //to be changed  $user->id(),
       't_authentication' => 1,
       't_ref_id' => request('t_ref_id')  //to be changed
    
      ]);

      return redirect('/api/forum/threads/'. $thread->id);
    }


}
