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
            'sub_name' => ['required', 'string',  'max:255'],
            'sub_code'  =>      ['required'],



  
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
             'sub_name' => $data['sub_name'],
             'sub_code' => $data['sub_code'],
            // 'stream_id' => $data['']
              //'dept_name' => $data['dept_name'],
           // 'dept_id' => $data['dept_id'],
            'status' => $data['status'],
           // 'department_id' => $data['department_id'],
            //'stream_id' => $data['stream_id'],

     
        ]);
    }
     public function index()
        {
            $details=subject::all();
            return $details;
        }


     public function show(Request $request,$id)
    {
      $user= subject::findorfail($subject_id);
      return response()->json
           ([
               'success' =>  true,
               'data' => $user,
               
           ],200);
   
      
    } 

  public function edit($id)
  {
         $project = subject::find($id);
         return response()->json
               ([
                   'success' =>  true,
                   'data' => $project,
                   
               ],200);
  }

public function update(Request $request, $id)
{
        $task = subject::findOrFail($id);
        $this->validate($request, [
          //'t_email' => 'required',
            'sub_code' => 'required',
            'sub_name' => 'required',
            'sub_stream' => 'required',
            'sub_department' => 'required',
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