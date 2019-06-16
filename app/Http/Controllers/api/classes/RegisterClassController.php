<?php

namespace App\Http\Controllers\api\classes;


use App\Models\classes\table_classes;
use \Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use  Tymon\JWTAuth\Facades\JWTAuth;
use Config; 
use Auth;

class RegisterClassController extends Controller
{
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'starting_year' => ['required', 'string', 'max:255'],
            'passing_year' => ['required', 'string',  'max:255'],
            'standard' => ['required', 'string', 'min:1'],
            'section' => ['required', 'max:1'],
            
            'ct_id' => ['required'],
            

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

                'starting_year'=> 	$user->starting_year,
                	'standard' =>      $user->standard,
                	'class_id'  => 'DEP - '.$user->id.'',
               	//'t_ref_id' => $user-?t_ref_id,
               	'passing' => $user->passing_year,
               	'section'  => $user->section,
               	'ct_id' => $user->ct_id,
               	'status' => $user->status,
 				
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



        return table_classes::create([
            'starting_year' => $data['starting_year'],
             'passing_year' => $data['passing_year'],
              'standard' => $data['standard'],
            'section' => $data['section'],
            
            'ct_id' => $data['ct_id'],
            'status' => $data['status'],
           



        ]);
    }


}
