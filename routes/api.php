<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
//  create a renter
Route::post('/all-renters/store','Api\AllRentersController@store');
//  create user
Route::post("/create-user", "UserController@createUser");
//  login
Route::post("/user-login", "Auth\LoginController@authenticate");
//  detail user
Route::group(['middleware' => 'auth:api'], function () {
    Route::get("/user-detail", "UserController@userDetail");
});
//  get all owner
Route::get('/all-owners','Api\AllOwnersController@index');
//  get all-posts
Route::get('/all-posts','Api\AllPostsController@index');
// gat all recommendposts
Route::get('/all-recommend-posts','Api\RecommendsPost@index');
//  get all type
Route::get('/all-types','Api\TypeController@index');
//  get post by id
Route::get('/post/{id}','Api\AllPostsController@show');


Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('/login', [AuthController::class, 'login']);
    Route::post('/register', 'AuthController@register');
    Route::post('/logout', [AuthController::class, 'logout']);
    Route::post('/refresh', [AuthController::class, 'refresh']);
    Route::get('/user-profile', [AuthController::class, 'userProfile']);    
});
Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {
    Route::post('/owner/login', [AuthController::class, 'loginAsOwner']);
    Route::post('/owner/register', 'AuthController@register');
    Route::post('/owner/logout', [AuthController::class, 'logout']);
    Route::post('/owner/refresh', [AuthController::class, 'refresh']);
    Route::get('/owner/user-profile', [AuthController::class, 'userProfile']);    
});