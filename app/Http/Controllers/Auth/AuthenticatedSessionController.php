<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();

        $user = $request->user();

        $url = '';

        // Check if the user's role is empty and redirect back with an error
        if (empty($user->role)) {
            flash()->addError("Your account role is not set. Please contact the administrator.");
            Auth::logout();
            return redirect()->back()->withInput($request->only('email'));
        }


        // Determine the URL based on the user's role
        if ($user->role === 'superadmin') {
            $url = 'superadmin/dashboard';
        } elseif ($user->role === 'admin') {
            $url = 'admin/dashboard';
        } elseif ($user->role === 'teacher') {
            $url = 'teacher/dashboard';
        } elseif ($user->role === 'user') {
            $url = '/dashboard';
        }


        flash()->addSuccess("Login Successful.");

        return redirect()->intended($url);
    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}