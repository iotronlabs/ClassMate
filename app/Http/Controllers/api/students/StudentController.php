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


     public function show(Request $request,$s_id)
    {


      $user= user_student::findorfail($s_id);

      return response()->json
           ([
               'success' =>  true,
               'data' => $user,
               
           ],200);
   
      
    } 

  public function edit($s_id)
  {

     $project = user_student::find($s_id);

     return response()->json
           ([
               'success' =>  true,
               'data' => $project,
               
           ],200);
  }

public function update(Request $request, $s_id)
{


		  	$task = user_student::findOrFail($s_id);

		    $this->validate($request, [
		        't_email' => 'required',
		        't_gender' => 'required'
		    ]);

		    $input = $request->all();

		    $task->fill($input)->save();


		     return response()->json
		           ([
		               'success' =>  true,
		               'data' => $task,
		               
		           ],200);
	

}


public function destroy($s_id)
{
	    $task = user_student::findOrFail($s_id);

	    $task->delete();

	//dd($task);
	 return response()->json
		           ([
		               'success' =>  true,
		               'data' => '$task',
		               
		           ],200);

//return redirect()->route('api/teachers/Auth/teacherController');
}
}

