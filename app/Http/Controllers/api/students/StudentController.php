<?php

namespace App\Http\Controllers\api\students;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\student\user_student;

class StudentController extends Controller
{
    public function index()
    {
        $user_details=user_student::all();
        return $user_details;
    }
}
