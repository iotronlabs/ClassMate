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
		
		return response()->json(
            [
               'success' =>  true,
               'data' => Auth::guard('user_admins')->user(),
              
           ],200);
	}


	public function userlogout()
	{
		Auth::guard('user_admins')->logout();

		return response()->json
           ([
               'success' =>  true,
           ],200);
	}
}
