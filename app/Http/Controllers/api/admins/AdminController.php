<?php

namespace App\Http\Controllers\api\admins;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Cookie;

use App\Models\admin\user_admin;

class AdminController extends Controller
{
    public function index()
    {
        $user_details=user_admin::all();
        return $user_details;
    }
    public function usercheck(Request $request)
	{
		// $minute = 60;
		// $user = Auth::guard('students')->user();

		// $value = Cookie::make('student',$user,$minute);

        // return $value;
        // $response = new Response('student');
        // $response->withCookie(cookie()->forever('user_student',Auth::guard('students')->user()));
		return response()->json(
            [
               'success' =>  true,
               'data' => Auth::guard('admins')->user(),
                // 'data' => $response
            //    'token' => $token
           ],200);
	}


	public function userlogout()
	{
		Auth::guard('admins')->logout();

		return response()->json
           ([
               'success' =>  true,
               // 'data' => $request->user(),
               // 'token' => $token
           ],200);
	}
}
