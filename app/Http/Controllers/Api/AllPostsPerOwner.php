<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Post;
use JWTAuth;
use App\Type;
class AllPostsPerOwner extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //get all post p
        if(JWTAuth::parseToken()->authenticate()){
            $id = (JWTAuth::parseToken()->authenticate())['id'];
             // get all post per owner
           $recentPosts = Post::with('address')
           -> where('user_id','=',$id)
           -> paginate(5);
           return $recentPosts;
        }
        return $response() -> json('wrong token');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //create post
        if(JWTAuth::parseToken()->authenticate()){
            $user_id = (JWTAuth::parseToken()->authenticate())['id'];
            $user = User::where('id','=',$user_id)->get();
             $validator = Validator::make($request->all(), [
                 'title'=>'required|string|max:255',
                 'address'=>'required|string|max:255',
                 'description' =>'required|string|max:255',
                 'city' =>'required|string|max:50',
                 'district'=>'required|string|max:50',
                 'type'=>'required|string',
                 'rooms'=>'required|numeric|min:1|max:9',
                 'bath_rooms'=>'required|string|max:50',
                 'water'=>'required|string|max:50',
                 'area' =>'required|numeric',
                 'internet'=>'required|string|max:50',
                 'price'=>'required|string|max:50',
                 'air_cond'=>"required|boolean",
                 'bancony'=>"required|boolean",
                 'general_owner'=>"required|boolean",
                 'other'=>'string|max:255',
                 'images'=>'required|array|min:3',
                 'kitchen'=>'required|string'
             ]);
     
             if($validator->fails()){
                 return response()->json($validator->errors()->toJson(), 400);
             }
             $existCity = City::where('city','=',$request['city'])->get();
             if(count($existCity) >0){
                 $id = $existCity[0]['id'];
                 $existDistrict = District::where('district','=',$request['district'])
                                         ->where('city_id','=',$id) ->get();
                 if(count($existDistrict)>0){
                    $checkType = Type::where('type','=',$request['type'])->get();
                    if(count($checkType)>0){
                        
                    }
                     return response() ->json('update success',200);
                 }
             }
             return response()->json('district is not exist!');
         }
         return response() -> json('you are log out or city is not exist!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
          
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
