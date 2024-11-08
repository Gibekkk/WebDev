<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BooksController;
use App\Http\Controllers\JournalsController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/books/{sort?}', [BooksController::class, 'index']);
Route::get('/journals/{sort?}', [JournalsController::class, 'index']);
