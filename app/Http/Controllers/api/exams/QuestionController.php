<?php

namespace App\Http\Controllers\api\exams;

use  Tymon\JWTAuth\Facades\JWTAuth;
use App\Http\Controllers\Controller;
use App\Http\Controllers\api\exams\edit_question;
use App\Models\Exam\examination;
use App\Models\Exam\question;
use App\Models\teacher\user_teacher;
use Auth;
use Config;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use \Illuminate\Http\Request;

class QuestionController extends Controller
{
   protected function validator(array $data)
    {
        return Validator::make($data, [
           // 'class_id' => ['required', 'string', 'max:255'],
            
            'type'  => ['required'],
            'question' => ['required'],
 
        ]);
    }

    public function add_question(Request $request,examination $exam)
    {
       $validator=$this->validator($request->all());
        
       if(!$validator->fails())
       {
           $user= $this->create($request->all(),$exam);
          

           
           return response()->json
           ([
           		
           		
               'success' =>  true,
               'Id' => $user->question_code,
               'data' =>  $user,
               
               //'token' => $token
           ],200);
       }
       return response()->json([
           
           'success' =>false,
           'errors' => $validator->errors()
           
       ]);
    }



    protected function create(array $data,examination $exam)
    { 
        return question::create([

        		  'question_code'  => 'QES-'.mt_rand(0001,9999).'',
	        	  'exam_id' => $exam->exam_code,
	            'type' => $data['type'],
              'question' => $data['question'],
              'option_1' => $data['option_1'],
              'option_2' => $data['option_2'],
              'option_3' => $data['option_3'],
              'option_4' => $data['option_4'],
              'answer' => $data['answer'],  
     
        ]);
      }

      public function edit_question(question $question)
     
       {
        
       $details = $question;
       dd($details);
       // return response()->json
       //        ([
       //            'success' =>  true,
       //            'data' => $details,
                   
       //        ],200);

      }


      


}
