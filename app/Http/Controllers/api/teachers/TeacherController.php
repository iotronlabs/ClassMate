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

    public function show(Request $request,$t_id)
    {


      $user_teacher= user_teacher::findorfail($t_id);

      return response()->json
           ([
               'success' =>  true,
               'data' => $user_teacher,
               
           ],200);
   
      
    } 

  public function edit($t_id)
  {

     $project = user_teacher::find($t_id);

     return response()->json
           ([
               'success' =>  true,
               'data' => $project,
               
           ],200);
  }

public function update(Request $request, $t_id)
{


		  	$task = user_teacher::findOrFail($t_id);

		    $this->validate($request, [
		        't_email' => 'required',
		        't_gender' => 'required'      // all required field need to be added here whatever data to be edited is required.   Admin pay attention here//
		    ]);

		    $input = $request->all();

		    $task->fill($input)->save();


		     return response()->json
		           ([
		               'success' =>  true,
		               'data' => $task,
		               
		           ],200);
	

}


public function destroy($t_id)
{
	    $task = user_teacher::findOrFail($t_id);

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
