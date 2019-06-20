 <?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/


// Route::group([ 'prefix' =>'/auth',
//              [ 'middleware' =>'assign.guard:admins','jwt.auth' ]],function()
//              {
//                  Route::post('/register','Auth\RegisterController@register');
//                  Route::post('/login','Auth\LoginController@login');
//              }
    
// );

// Route::group([ 'prefix' =>'/auth',
//              [ 'middleware' =>'assign.guard:admins','jwt.auth' ]],function()
//              {
//                  Route::post('/register','Auth\RegisterController@register');
//                  Route::post('/login','Auth\LoginController@login');
//              }

// );


Route::group([ 'prefix' =>'/admins',
             [ 'middleware' =>'auth_users','jwt.auth']],function()
             {
                 Route::post('/register','admins\Auth\RegisterController@register');
                 Route::post('/login','admins\Auth\LoginController@login');
             }

);

Route::group([ 'prefix' =>'/students',
             [ 'middleware' =>'auth_users','jwt.auth' ]],function()
             {
                 Route::post('/register','students\Auth\RegisterController@register');
                 Route::post('/login','students\Auth\LoginController@login');
                 Route::get('/','students\StudentController@index');
                  Route::get('/{s_id}/show',  'students\StudentController@show');
                 Route::get('/{s_id}/edit', 'students\StudentController@edit');

                Route::post('/{s_id}','students\StudentController@update');

                 
                 Route::delete('/{s_id}','students\StudentController@destroy');
             }

);

Route::group([ 'prefix' =>'/teachers',
             [ 'middleware' =>'auth_users','jwt.auth' ]],function()
             {
                 Route::post('/register','teachers\Auth\RegisterController@register');
                 Route::post('/login','teachers\Auth\LoginController@login');

                 Route::get('/{t_id}/show',  'teachers\TeacherController@show');
                 Route::get('/{t_id}/edit', 'teachers\TeacherController@edit');

                Route::post('/{t_id}','teachers\TeacherController@update');

                 
                 Route::delete('/{t_id}','teachers\TeacherController@destroy');

                 Route::get('/','teachers\TeacherController@index');

             }

);

Route::group([ 'prefix' =>'/staffs',
             [ 'middleware' =>'auth_users','jwt.auth' ]],function()
             {
                 Route::post('/register','staffs\Auth\RegisterController@register');
                 Route::post('/login','staffs\Auth\LoginController@login');
                 Route::get('/','staffs\StaffController@index');

                 Route::get('/{st_id}/show',  'staffs\StaffController@show');
                 Route::get('/{st_id}/edit', 'staffs\StaffController@edit');

                Route::post('/{st_id}','staffs\StaffController@update');

                 
                 Route::delete('/{st_id}','staffs\StaffController@destroy');

             }

);

Route::group([ 'prefix' =>'/forum',
             ['middleware' =>'auth_users']],function()
             {

                 Route::post('/threads','forum\ThreadsController@store');
                 Route::get('/threads','forum\ThreadsController@index');
                 Route::get('/threads/{channel}','forum\ThreadsController@index');
                 Route::get('/channels','forum\ChannelsController@index');
                 Route::get('/channels/{channel}/','forum\ChannelsController@show');
                 Route::get('/threads/{channel}/{thread}','forum\ThreadsController@show');
                 Route::post('/threads/{channel}/{thread}/replies','forum\RepliesController@store');


             }

);



// Route::post('/register','api\classes\RegisterClassController@register');
// Route::post('/login','staffs\Auth\LoginController@login');


//Route::group(['middleware' => 'cors'], function () {
Route::group([ 'prefix' =>'/classes',
            ],function()
             {
                 Route::post('/register','classes\RegisterClassController@register');
                  Route::get('/{class_id}/show',  'classes\ClassesUpdateController@show');
                 Route::get('/{class_id}/edit', 'classes\ClassesUpdateController@edit');
                 Route::post('/{class_id}','classes\ClassesUpdateController@update');  
                 Route::delete('/{sub_id}','classes\ClassesUpdateController@destroy');
                 Route::get('/',           'classes\ClassesUpdateController@index');
                 


             }

);

Route::group([ 'prefix' =>'/courses',
            ],function()
             {
                 Route::post('/register','courses\RegisterCourseController@register');
                 Route::get('/{sub_id}/show',  'courses\CourseUpdateController@show');
                 Route::get('/{sub_id}/edit', 'courses\CourseUpdateController@edit');
                 Route::post('/{sub_id}','courses\CourseUpdateController@update');  
                 Route::delete('/{sub_id}','courses\CourseUpdateController@destroy');
                 Route::get('/',           'courses\CourseUpdateController@index');
                // Route::post('/login','classes\LoginController@login');
             }

);


Route::group([ 'prefix' =>'/backlog',
            ],function()
             {
                 Route::post('/register','backlog\InsertBacklogController@register');
                 // Route::get('/{sub_id}/show',  'courses\CourseUpdateController@show');
                 // Route::get('/{sub_id}/edit', 'courses\CourseUpdateController@edit');
                 // Route::post('/{sub_id}','courses\CourseUpdateController@update');  
                 // Route::delete('/{sub_id}','courses\CourseUpdateController@destroy');
                 // Route::get('/',           'courses\CourseUpdateController@index');
                // Route::post('/login','classes\LoginController@login');
             }

);
 