<?php

namespace App\Http\Controllers\api\Departments;


use App\Models\Department\department;
use \Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use  Tymon\JWTAuth\Facades\JWTAuth;
use Config; 
use Auth;

class UpdateDepartmentController extends Controller
{
   protected function validator(array $data)
    {
        return Validator::make($data, [
           // 'class_id' => ['required', 'string', 'max:255'],
            'dept_name' => ['required', 'string',  'max:255'],
            'stream_id'  => ['unique:departments' ,'required'],


  
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
               'data' => [

                'dept_id'  => 'DEP - '.$user->dept_id.'',
            	'dept_name' =>$user->dept_name,
            	
               	//'t_ref_id' => $user-?t_ref_id,
               	'stream_id' => $user->stream_id,
               	'stream_name'  => $user->stream_name,
               
                'status' => $user->status,
         		'course_length' => $user->course_length,
         		]		
               
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
        return department::create([
            'dept_name' => $data['dept_name'],
             'stream_id' => $data['stream_id'],
              'stream_name' => $data['stream_name'],
            'course_length' => $data['course_length'],
            'status' => $data['status'],
     
        ]);
    }
		 public function index()
		    {
		        $details=department::all();
		        return $details;
		    }


     public function show(Request $request,$stream_id)
    {
      $user= department::findorfail($stream_id);
      return response()->json
           ([
               'success' =>  true,
               'data' => $user,
               
           ],200);
   
      
    } 

  public function edit($stream_id)
  {
		     $project = department::find($stream_id);
		     return response()->json
		           ([
		               'success' =>  true,
		               'data' => $project,
		               
		           ],200);
  }

public function update(Request $request, $stream_id)
{
		  	$task = department::findOrFail($stream_id);
		    $this->validate($request, [
		    	//'t_email' => 'required',
		        'dept_name' => 'required',
		        'stream_id' => 'required',
		        'stream_name' => 'required',
		        'course_length' => 'required',
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
