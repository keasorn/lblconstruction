<?php
namespace App\Http\Controllers\Frontend\Auth;


use DB;
use Mail;
use blog\User;
use blog\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use App\Mail\EmailVerification;

class RegisterController extends Controller
{
    use RegisterRequest;

    public function ShowRegisterForm()
    {
        return view('authentication.register');
    }

    public function HandleRegister(Request $request)
    {
        $this->inputDataSanitization($request->all());

        $user = User::create([
            'name' => trim($request->input('name')),
            'email' => strtolower($request->input('email')),
            'password' => bcrypt($request->input('password')),
            'email_verification_token' => Str::random(32)
        ]);

        \Mail::to($user->email)->send(new VerificationEmail($user));

        session()->flash('message', 'Please check your email to activate your account');

        return redirect()->back();

    }
}
