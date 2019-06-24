<?php

namespace App\Http\Controllers\api\exams;

use App\Models\Exam\question;
use App\Models\Exam\examination;
use \Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use  Tymon\JWTAuth\Facades\JWTAuth;
use Config; 
use Auth;

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

        		  'question_code'  => 'EX-'.mt_rand(1000,9999).'',
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



}
