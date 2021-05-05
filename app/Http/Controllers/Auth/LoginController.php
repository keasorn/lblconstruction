<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }

    public function index()
    {
        return view('back_end.auth_page.sign_in');
    }

    public function login(Request $request)
    {
//        return $request->all();
//        $request->validate([
//            'email' => 'required',
//            'password' => 'required'
//        ]);
        $credentials = $request->except(['_token','remember_me']);
        $remember_me  = ( !empty( $request->remember_me ) )? TRUE : FALSE;

        if (auth()->attempt($credentials, $remember_me)) {
            return redirect()->route('home');

        } else {
            session()->flash('message', 'Invalid credentials');
            return redirect()->back();
        }

        return redirect()->back();
    }

    public function show_signup_form()
    {
        return view('backend.register');
    }

    public function process_signup(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'password' => 'required'
        ]);

        $user = User::create([
            'name' => trim($request->input('name')),
            'email' => strtolower($request->input('email')),
            'password' => bcrypt($request->input('password')),
        ]);

        session()->flash('message', 'Your account is created');

        return redirect()->route('login');
    }

    public function logout()
    {
        Auth::logout();

        return redirect()->route('login');
    }
}
