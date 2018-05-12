<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
   public function auth()
   {
    return view('login');
   }

    public function login()
    {
        dd('lalala');
    }
}
