<?php

namespace App\Http\Controllers\api\teachers\Auth;

use App\Models\teacher\user_teacher;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
//use Illuminate\Http\Request;
use DB;
use App\Http\Requests;
//use App\Http\Controllers\Controller;

class TeacherUpdateController extends Controller
{
 
    public function show()
    {


      $user_teacher= user_teacher::all();

      return response()->json
           ([
               'success' =>  true,
               'data' => $user_teacher,
               
           ],200);
   
      
    } 

  public function edit($t_id)
  {

     $project = user_teacher::find($t_id);

     return response()->json
           ([
               'success' =>  true,
               'data' => $project,
               
           ],200);
  }

  public function update($t_id)
  {


    $project = user_teacher::findorFail($t_id);
    //dd($t_id);
    //dd($project);

    $project->t_fname = request('t_fname');
    // $project->t_fname  = request('t_fname');
    // // $project->t_gender = request('t_gender');
    // // $project->t_mname=   request('t_mname');

     $project->save();

    // //$user_teacher= user_teacher::all();

    //   return response()->json
    //        ([
    //            'success' =>  true,
    //            'data' => $user_teacher,
               
    //        ],200);
    //dd($project->t_fname);
     return redirect('api/teachers/Auth/TeacherUpdateController');

  }
}

