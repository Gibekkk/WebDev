<?php

namespace App\Http\Controllers;

use App\Models\CD;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class CDController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($sort = "asc")
    {
        if (strtolower($sort) != "desc") {
            $sort = "asc";
        }
        $cds = DB::select('select * from cds order by title '.strtoupper($sort));
        return view('cds', compact('cds', 'sort'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(CD $cd)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(CD $cd)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, CD $cd)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(CD $cd)
    {
        //
    }
}
