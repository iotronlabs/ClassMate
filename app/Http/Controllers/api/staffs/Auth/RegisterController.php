<?php

namespace App\Http\Controllers\api\staffs\Auth;

use App\Models\staff\user_staff;
use \Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use  Tymon\JWTAuth\Facades\JWTAuth;
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
      $this->middleware('guest');
         $this->middleware('guest:user_staffs');
       // $this->auth= $auth;
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
            'st_fname' => ['required', 'string', 'max:255'],
            'st_email' => ['required', 'string', 'email', 'max:255','unique:user_staffs'],
            'password' => ['required', 'string', 'min:8'],
            'st_gender' => ['required', 'max:1'],
            'st_contact' => ['required', 'min:10'],
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
           
           
            $token= Auth::guard('user_staffs')->attempt($request->only('st_email','password'));
           
           
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
        return user_staff::create([
            'st_fname' => $data['st_fname'],
            'st_email' => $data['st_email'],
            'password' => Hash::make($data['password']),
            'st_gender' => $data['st_gender'],
            'st_contact' => $data['st_contact'],
            'st_id' => $data['st_id'],
            't_ref_id' => $data['t_ref_id'],
            'status' => $data['status'],
            'st_mname' => $data['st_mname'],
            'st_dob' => $data['st_dob'],
            'st_age' =>$data['st_age'],
            'st_nationality' => $data['st_nationality'],
            'st_address' => $data['st_address'],
            'st_address_pin' => $data['st_address_pin'],
            'st_address_state' => $data['st_address_state'],
            'st_sub' => $data['st_sub'],
            'st_surname' => $data['st_surname'],
            'st_authentication' => $data['st_authentication'],

        ]);
    }
}
