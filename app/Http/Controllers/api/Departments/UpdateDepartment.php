<?php

namespace App\Http\Controllers\api\Departments;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class UpdateDepartment extends Controller
{
   protected function validator(array $data)
    {
        return Validator::make($data, [
           // 'class_id' => ['required', 'string', 'max:255'],
            'dept_name' => ['required', 'string',  'max:255'],
  
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

                'dept_name'  => 'DEP - '.$user->dept_id.'',
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
     
        ]);
    }
		 public function index()
		    {
		        $details=department::all();
		        return $details;
		    }


}
