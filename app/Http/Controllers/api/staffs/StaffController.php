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

     public function show(Request $request,$st_id)
    {


      $user_staff= user_staff::findorfail($st_id);

      return response()->json
           ([
               'success' =>  true,
               'data' => $user_staff,
               
           ],200);
   
      
    } 

  public function edit($st_id)
  {

     $project = user_staff::find($st_id);

     return response()->json
           ([
               'success' =>  true,
               'data' => $project,
               
           ],200);
  }

public function update(Request $request, $st_id)
{


		  	$task = user_staff::findOrFail($st_id);

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


public function destroy($st_id)
{
	    $task = user_staff::findOrFail($st_id);

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
