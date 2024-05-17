<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\listProdukController;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/listproduk', [listProdukController::class, 'show'] );
