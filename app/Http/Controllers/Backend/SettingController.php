<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use ErrorException;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class SettingController extends Controller
{

    // Setting Notification
    public function notifications(Request $request)
    {
        try {
            $setting = Setting::where('user_id', Auth::id())->first();
            $setting->isEmail  = $request->isEmail ?? 0;
            $setting->update();
            Session::flash('success','Setting Berhasil Diupdate.');
            return back();
        } catch (Exception $e) {
            throw new ErrorException($e->getMessage());
        }
    }
}
