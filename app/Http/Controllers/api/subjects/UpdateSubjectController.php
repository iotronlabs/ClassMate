<?php

namespace App\Http\Controllers\api\subjects;


use App\Models\subject\subject;
use \Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use  Tymon\JWTAuth\Facades\JWTAuth;
use Config; 
use Auth;

class UpdateSubjectController extends Controller
{
   protected function validator(array $data)
    {
        return Validator::make($data, [
           // 'class_id' => ['required', 'string', 'max:255'],
            'subject_name' => ['required', 'string',  'max:255'],
            'stream_id'  =>      ['required'],


  
        ]);
    }

    public function register(Request $request)
    {
        $validator=$this->validator($request->all());
        
       if(!$validator->fails())
       {
           $user= $this->create($request->all());
           
           
           
           return response()->json
           ([
              
              
               'success' =>  true,
               'data' => $user,
            //    'data' => [

            //     'dept_id'  => 'DEP - '.$user->dept_id.'',
            //   'dept_name' =>$user->dept_name,
              
            //     //'t_ref_id' => $user-?t_ref_id,
            //     'stream_id' => $user->stream_id,
            //     'stream_name'  => $user->stream_name,
               
            //     'status' => $user->status,
            // 'course_length' => $user->course_length,
            // ]   
               
               //'token' => $token
           ],200);
       }
       return response()->json([
           
           'success' =>false,
           'errors' => $validator->errors()
           
       ]);
    }



    protected function create(array $data)
    { 
        return subject::create([
            //'dept_name' => $data['dept_name'],
             'subject_name' => $data['subject_name'],
              //'dept_name' => $data['dept_name'],
           // 'dept_id' => $data['dept_id'],
            'status' => $data['status'],
            'department_id' => $data['department_id'],
            'stream_id' => $data['stream_id'],

     
        ]);
    }
     public function index()
        {
            $details=subject::all();
            return $details;
        }


     public function show(Request $request,$subject_id)
    {
      $user= subject::findorfail($subject_id);
      return response()->json
           ([
               'success' =>  true,
               'data' => $user,
               
           ],200);
   
      
    } 

  public function edit($subject_id)
  {
         $project = subject::find($subject_id);
         return response()->json
               ([
                   'success' =>  true,
                   'data' => $project,
                   
               ],200);
  }

public function update(Request $request, $subject_id)
{
        $task = subject::findOrFail($subject_id);
        $this->validate($request, [
          //'t_email' => 'required',
            'dept_id' => 'required',
            'stream_id' => 'required',
            'subject_name' => 'required',
            
            'status' => 'required',


        ]);

        $input = $request->all();
        $task->fill($input)->save();
         return response()->json
               ([
                   'success' =>  true,
                   'data' => $task,
                   
               ],200);
  

}   

// Delete the stream and Delete the department is not be alvalable for any users//
//Only can be activated and deactivate//
}
