<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class MainController extends Controller
{
   public function welcome()
   {
       return view('welcome');
   }

   public function adminMenu()
   {
       return view('adminMenu');
   }
}
