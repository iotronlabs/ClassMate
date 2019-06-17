<?php

namespace App\Http\Controllers\api\teachers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\teacher\user_teacher;

class TeacherController extends Controller
{
    public function index()
    {
        $user_details=user_teacher::all();
        return $user_details;
    }
}
