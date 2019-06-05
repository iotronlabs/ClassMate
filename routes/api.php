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

//Route::group(['middleware' => 'cors'], function () {
