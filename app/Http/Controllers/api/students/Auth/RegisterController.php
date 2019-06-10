<?php

namespace App\Http\Controllers\api\students\Auth;

use App\Models\student\user_student;
use \Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use  Tymon\JWTAuth\Facades\JWTAuth;
use Config; 
use Auth;

class RegisterController extends Controller
{
    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '';
    protected $auth;
    /**
     * Create a new controller instance.
     *
     * @return void
   */

    public function __construct()
    {

       $this->middleware('guest:students');
       $this->middleware('guest');
      
      // $this->auth= $auth;
       
    }
     
    
      protected function guard()
    {
        return Auth::guard('students');
    }


    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255','unique:user_students'],
            'password' => ['required', 'string', 'min:8'],
            'gender' => ['required', 'max:1'],
            'contact' => ['required', 'min:10'],
            'd_o_b' => ['required'],

        ]);
    }

    
     
    /*
      * Handle a registration request for the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator=$this->validator($request->all());
        
       if(!$validator->fails())
       {
           $user= $this->create($request->all());
           
           Config::set('jwt.user', 'App\Models\student\user_student'); 
           Config::set('auth.providers.users.model', \App\Models\student\user_student::class);
           
           $token= Auth::guard('students')->attempt($request->only('email','password'));
           
           
           
           return response()->json
           ([
               'success' =>  true,
               'data' => $user,
               'token' => $token
           ],200);
       }
       return response()->json([
           
           'success' =>false,
           'errors' => $validator->errors()
           
       ]);
    }

   
    
    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\admin\user_admin
     */
    protected function create(array $data)
    {
        return user_student::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'gender' => $data['gender'],
            'contact' => $data['contact'],
            'd_o_b' => $data['d_o_b'],
            'u_id' => $data['u_id'],
            't_ref_id' => $data['t_ref_id'],
            'guardian_id' => $data['guardian_id'],
            'class_id' => $data['class_id'],
            'status' => $data['status'],
        ]);
    }
}


