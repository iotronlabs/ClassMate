<?php

namespace App\Http\Controllers\api\staffs;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\staff\user_staff;

class StaffController extends Controller
{
    public function index()
    {
        $user_details=user_staff::all();
        return $user_details;
    }
}
