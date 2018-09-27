<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    function list() {
    	$users = User::all();
    	return view('user.list', [
    		'users' => $users 
    	]);
    }
}
