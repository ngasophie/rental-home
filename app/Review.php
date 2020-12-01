<?php

namespace App;
use App\User;
use DB;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    protected $fillable = [
        'content'
    ];
    //
    public function owner()
    {
        return  DB::select('select * from reviews join
        users
         where reviews.user_id = users.id');
    }
}
