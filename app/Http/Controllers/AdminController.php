<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    //
<<<<<<< Updated upstream
    public function index()
    {
        return view('/admin/home_admin');
    }

    public function view_admin()
    {
        return view('/admin/view_admin');
    }
=======
    public function editprofil()
	{
		return view('/admin/editprofil');
	}

	public function tambahadmin()
	{
		return view('/admin/tambahadmin');
	}
>>>>>>> Stashed changes
}

