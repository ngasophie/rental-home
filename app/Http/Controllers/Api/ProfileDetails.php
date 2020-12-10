<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use JWTAuth;
use App\User;
use DB;
use Validator;
use App\City;
use App\District;
use App\Address;
class ProfileDetails extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        if(JWTAuth::parseToken()->authenticate()){
            $id = (JWTAuth::parseToken()->authenticate())['id'];
            $user = DB::table('users')
            ->join('address','users.address_id','=','address.id')
            ->where('users.id','=',$id)->get();
            return $user;
        }
        return '';
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
        //update
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
    public function update(Request $request)
    {
        if(JWTAuth::parseToken()->authenticate()){
           $user_id = (JWTAuth::parseToken()->authenticate())['id'];
           $user = User::where('id','=',$user_id)->get();
           $address_id = $user[0]['address_id'];
            $validator = Validator::make($request->all(), [
                'name' => 'required|string|max:50',
                'address'=>'required|string|max:255',
                'city' =>'required|string|max:50',
                'district'=>'required|string|max:50',
                'identification'=>'required|digits:9',
                'phone_number'=>'required|digits_between:8,10'
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
                    User::where('id','=',$user_id)
                        ->update(['name'=>$request['name'],'identification'=>$request['identification'],
                                 'phone_number'=>$request['phone_number'],'description'=>$request['description'],
                                 'img_src'=>$request['img_src']
                        ]);
                    Address::where('id','=',$address_id)->update([
                        'city'=>$request['city'],
                        'district'=>$request['district'],
                        'address'=>$request['address']
                    ]);
                    return response() ->json('update success',200);
                }
            }
            return response()->json('district is not exist!');
        }
        return response() -> json('you are log out or city is not exist!');
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
