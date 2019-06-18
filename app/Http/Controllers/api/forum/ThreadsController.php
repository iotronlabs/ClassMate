<?php

namespace App\Http\Controllers\api\forum;

use App\Http\Controllers\Controller;
use App\Models\forum\forum_thread;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ThreadsController extends Controller
{
     public function __construct()
    {
      $this->middleware('auth_users');
     // $this->middleware('guest:user_teachers');
    }

    public function index()
    {

      $threads = forum_thread::latest()->get();

      return response()->json
      ([
               'success' =>  true,
               'data' => $threads,
               
        ],200);

    }
     public function show(forum_thread $thread)
    {

      $replies = $thread->replies()->get();

      return response()->json
      ([
               'success' =>  true,
               'data' => $thread,
               'reply' => $replies,
               
        ],200);

    }

    public function store(Request $request)
    {

      $user = Auth::user();

    	$thread = forum_thread::create([
      
         'user_id' => $user->id, // request('user_id'),
         'title'  => request('title'),
         'body' => request('body'),
         'channel_id' => request('channel_id'),
         'slug' => request('slug'),

    	]);

    	return redirect('/api/forum/threads');
    }

    
}    
