<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class AuthController extends Controller
{
   public function auth()
   {
    return view('login');
   }

    public function login(Request $request)
    {
        if (!Auth::attempt([
            'Email' => $request->input('email'),
            'Password' => $request->input('password')
        ])) {
            return redirect()->back()->withInput()->withErrors('Неверный email и/или пароль.');
        }

        return redirect(route('admin.menu'));
    }
}
