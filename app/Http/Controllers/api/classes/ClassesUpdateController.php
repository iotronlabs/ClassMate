<?php

namespace App\Http\Controllers\api\classes;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\classes\table_classes;

class ClassesUpdateController extends Controller
{
    
   
	 public function index()
    {
        $user_details=table_classes::all();
        return $user_details;
    }





     public function show(Request $request,$class_id)
    {
      $user= table_classes::findorfail($class_id);
      return response()->json
           ([
               'success' =>  true,
               'data' => $user,
               
           ],200);
   
      
    } 

  public function edit($class_id)
  {
     $project = table_classes::find($class_id);
     return response()->json
           ([
               'success' =>  true,
               'data' => $project,
               
           ],200);
  }

public function update(Request $request, $class_id)
{
		  	$task = table_classes::findOrFail($class_id);
		    $this->validate($request, [
		    	//'t_email' => 'required',
		        'starting_year'  => 'required',
		        'passing_year'   => 'required',
		        'standard'    => 'required',
		        'section'   => 'required',
		        'ct_id'   =>  'required',


		    ]);

		    $input = $request->all();
		    $task->fill($input)->save();
		     return response()->json
		           ([
		               'success' =>  true,
		               'data' => $task,
		               
		           ],200);
	

}


		public function destroy($class_id)
		{
			    $task = table_classes::findOrFail($class_id);

			    $task->delete();
			//dd($task);
			 return response()->json
				           ([
				               'success' =>  true,
				               'data' => '$task',
				               
				           ],200);

		}
}
