<?php

namespace App\Http\Controllers;

use App\Models\dataMurid;
use App\Models\Events;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $role = Auth::user()->role;

        if (Auth::check()) {
            // DASHBOARD ADMIN \\
            if ($role == 'Admin') {

              $murid = User::where('role','Murid')->where('status','Aktif')->count();
              $acara = Events::where('is_active','0')->count();
              $event = Events::where('is_active','0')->orderBy('created_at','desc')->first();

              return view('backend.website.home', compact('murid','event','acara'));

            }
            // DASHBOARD MURID \\
            elseif ($role == 'Murid') {
              $auth = Auth::id();

              $event = Events::where('is_active','0')->first();
              return view('murid::index', compact('event'));

            }

            // DASHBOARD PPDB & PENDAFTAR \\
            elseif($role == 'Guest' || $role == 'PPDB') {

              $register = dataMurid::whereNotIn('proses',['Murid','Ditolak'])->whereYear('created_at', Carbon::now())->count();
              $needVerif = dataMurid::whereNotNull(['tempat_lahir','tgl_lahir','agama'])->whereNull('nisn')->count();
              return view('ppdb::backend.index', compact('register','needVerif'));

            }

        }
    }
}
