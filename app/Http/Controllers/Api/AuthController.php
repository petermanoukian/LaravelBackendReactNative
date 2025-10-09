<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    /**
     * Handle user login and generate a Sanctum token.
     * * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */


    /*
    public function login(Request $request)
    {
        // 1. Validate incoming request data
        $request->validate([
            'email'    => ['required', 'email'],
            'password' => ['required'],
        ]);
        $email = $request->email;
        $password = $request->password;

        // 2. Attempt authentication using the provided credentials
        if (!Auth::attempt($request->only('email', 'password'))) {
            // Return 401 Unauthorized if authentication fails
            return response()->json([
                'message' => "The provided credentials do not match our records EMAIL 
                $email PASS $password.",
            ], 401);
        }

        // 3. Authentication successful: Retrieve the user and generate a token
        $user = Auth::user();

        // Delete existing tokens for simplicity (optional, but clean for mobile sessions)
        $user->tokens()->delete();

        // Create a new Sanctum token for the authenticated user
        $token = $user->createToken('auth_token', ['*'], now()->addWeek())->plainTextToken;

        // 4. Return the token and user data
        return response()->json([
            'user'  => [
                'id'    => $user->id,
                'name'  => $user->name,
                'email' => $user->email,
            ],
            'token' => $token,
            'message' => 'Login successful',
        ]);
    }

    */


    public function login(Request $request)
    {
        $request->validate([
            'email'    => ['required', 'email'],
            'password' => ['required'],
        ]);

        if (!Auth::attempt($request->only('email', 'password'))) {
            return response()->json([
                'message' => "Invalid credentials.",
            ], 401);
        }

        $user = Auth::user();

        // Optional: rotate only mobile token
        $user->tokens()->where('name', 'mobile')->delete();

        $token = $user->createToken('mobile')->plainTextToken;

        return response()->json([
            'user' => [
                'id'    => $user->id,
                'name'  => $user->name,
                'email' => $user->email,
            ],
            'token' => $token,
            'message' => 'Login successful',
        ]);
    }


    /**
     * Handle user logout and revoke the current Sanctum token.
     * * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout(Request $request)
    {
        // Revoke the token that was used to authenticate the current request
        $request->user()->currentAccessToken()->delete();

        return response()->json([
            'message' => 'Logout successful. Token revoked.',
        ]);
    }
}
