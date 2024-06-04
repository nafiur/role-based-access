<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class Role
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */

    public function handle(Request $request, Closure $next, $role): Response
    {
        $user = auth()->user();

        // Check if user is authenticated and has the required role
        if (isset($user->role) && $user->role === $role) {
            return $next($request);
        }

        // Use Flasher to display the error message
        flash()->addError("You don't have access to this account.");

        return redirect()->back();
    }


}