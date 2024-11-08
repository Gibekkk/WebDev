<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\BooksController;
use App\Http\Controllers\CDController;
use App\Http\Controllers\FinalYearProjectController;
use App\Http\Controllers\JournalsController;
use App\Http\Controllers\NewspaperController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/books/{sort?}', [BooksController::class, 'index']);
Route::get('/journals/{sort?}', [JournalsController::class, 'index']);
Route::get('/cds/{sort?}', [CDController::class, 'index']);
Route::get('/final_year_projects/{sort?}', [FinalYearProjectController::class, 'index']);
Route::get('/newspapers/{sort?}', [NewspaperController::class, 'index']);
