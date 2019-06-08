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

Route::group([ 'prefix' =>'/auth',
             [ 'middleware' =>'throttle:20,5','cors' ]],function()
             {
                 Route::post('/register','Auth\RegisterController@register');
                 Route::post('/login','Auth\LoginController@login');
             }
    
);

Route::group([ 'prefix' =>'/admins',
             [ 'middleware' =>'throttle:20,5','cors' ]],function()
             {
                 Route::post('/register','admins\Auth\RegisterController@register');
                 Route::post('/login','admins\Auth\LoginController@login');
             }
    
);

Route::group([ 'prefix' =>'/students',
             [ 'middleware' =>'throttle:20,5','cors' ]],function()
             {
                 Route::post('/register','students\Auth\RegisterController@register');
                 Route::post('/login','students\Auth\LoginController@login');
             }
    
);

Route::group([ 'prefix' =>'/teachers',
             [ 'middleware' =>'throttle:20,5','cors' ]],function()
             {
                 Route::post('/register','teachers\Auth\RegisterController@register');
                 Route::post('/login','teachers\Auth\LoginController@login');
             }
    
);

Route::group([ 'prefix' =>'/staffs',
             [ 'middleware' =>'throttle:20,5','cors' ]],function()
             {
                 Route::post('/register','staffs\Auth\RegisterController@register');
                 Route::post('/login','staffs\Auth\LoginController@login');
             }
    
);

//Route::group(['middleware' => 'cors'], function () {
