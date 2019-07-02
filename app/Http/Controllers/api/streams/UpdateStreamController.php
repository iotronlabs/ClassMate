<?php

namespace App\Http\Controllers\api\streams;


use App\Models\Stream\stream;
use \Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use  Tymon\JWTAuth\Facades\JWTAuth;
use Config; 
use Auth;

class UpdateStreamController extends Controller
{
   protected function validator(array $data)
    {
        return Validator::make($data, [
           // 'class_id' => ['required', 'string', 'max:255'],
            'stream_name' => ['required', 'string',  'max:255'],
            'stream_code'  =>      ['required'],



  
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
        $create_stream =  stream::create([
            //'dept_name' => $data['dept_name'],
             'stream_name' => $data['stream_name'],
             'stream_code' => $data['stream_code'],
             'department_code' => $data['department_code'],
             'department_name' => $data['department_name'],
             'course_length' => $data['course_length'],
            //  'Assign_Subject' => $data['Assign_Subject'],
            // 'stream_id' => $data['']
              //'dept_name' => $data['dept_name'],
           // 'dept_id' => $data['dept_id'],
           // 'status' => $data['status'],
           // 'department_id' => $data['department_id'],
            //'stream_id' => $data['stream_id'],


     
        ]);

        
        foreach ($data['subjects'] as $subject) {
           $task =    subject:: where(['sub_name'=> $subject]);
           $task->sub_stream = $data['stream_name'];
           $task->sub_department= $data['department_name'];
           $task->save();
        }
    }
     public function index()
        {
            $details=stream::all();
            return $details;
        }


     public function show(Request $request,$id)
    {
      $user= stream::findorfail($id);
      return response()->json
           ([
               'success' =>  true,
               'data' => $user,
               
           ],200);
   
      
    } 

  public function edit($id)
  {
         $project = stream::find($id);
         return response()->json
               ([
                   'success' =>  true,
                   'data' => $project,
                   
               ],200);
  }

public function update(Request $request, $id)
{
        $task = stream::findOrFail($id);
        $this->validate($request, [
          //'t_email' => 'required',
            'stream_code' => 'required',
            'stream_name' => 'required',
            'department_code' => 'required',
            'department_name' => 'required',
            //'status' => 'required',


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
