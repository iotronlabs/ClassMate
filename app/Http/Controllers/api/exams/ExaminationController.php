<?php

namespace App\Http\Controllers\api\exams;


use App\Models\Exam\examination;
use \Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use  Tymon\JWTAuth\Facades\JWTAuth;
use Config; 
use Auth;

class ExaminationController extends Controller
{
   protected function validator(array $data)
    {
        return Validator::make($data, [
           // 'class_id' => ['required', 'string', 'max:255'],
            'exam_name' => ['required', 'string',  'max:255'],
            'topic'  => ['required'],
            'subject_1' => ['required'],
            'date' => ['required'],
            'pass_mark' => ['required'],



  
        ]);
    }

    public function addexam(Request $request)
    {
        $validator=$this->validator($request->all());
        
       if(!$validator->fails())
       {
           $user= $this->create($request->all());
           
           
           
           return response()->json
           ([
           		
           		
               'success' =>  true,
               'data' =>  $user,
               
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
        return examination::create([

        		
	        	'exam_code' => 'EX-'.mt_rand(1000,9999).'',
	            'topic' => $data['topic'],
             'exam_name' => $data['exam_name'],
              'subject' => $data['subject_1'],
              'date' => $data['date'],
              'duration' => $data['duration'],
              'pass_mark' => $data['pass_mark'],
              're_exam' => $data['re_exam'],
              'description' => $data['description'],
              'status' => $data['status'],
              'class_id' => $data['class_id'],
              'teacher_id_created' => $data['teacher_id_created'],

            
     
        ]);
      } 

        // public function get_exam()
        // {
        //   $data = DB:: table('user_teachers')
        //               ->join('examinations','examinations.teacher_id_created','=','user_teachers.t_id')
        //               ->select('user_teachers.t_fname')
        //               ->get();
        // }
    
		 // public function index()
		 //    {
		 //        $details=examination:all();
		 //        return $details;
		 //    }



//   public function edit($id)
//   {
// 		     $project = department::find($id);
// 		     return response()->json
// 		           ([
// 		               'success' =>  true,
// 		               'data' => $project,
		               
// 		           ],200);
//   }

// public function update(Request $request, $id)
// {
// 		  	$task = department::findOrFail($id);
// 		    $this->validate($request, [
// 		    	,
// 		        'department_name' => 'required',
// 		        'department_code' => 'required',
		       
// 		        'status' => 'required',


// 		    ]);

// 		    $input = $request->all();
// 		    $task->fill($input)->save();
// 		     return response()->json
// 		           ([
// 		               'success' =>  true,
// 		               'data' => $task,
		               
// 		           ],200);
	

// }		

// // Delete the stream and Delete the department is not be alvalable for any users//
// //Only can be activated and deactivate//


}
