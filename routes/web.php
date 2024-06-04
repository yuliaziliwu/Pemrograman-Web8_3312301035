<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SalaesController;
use App\Http\Controllers\listProdukController;
use App\Http\Controllers\ApiController;
use App\Models\Produk;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/listproduk', [listProdukController::class, 'show'] );
Route::post('/listproduk', [listProdukController::class, 'simpan'])->name('produk.simpan');
Route::delete('/listproduk/{id}', [listProdukController::class, 'delete'])->name('produk.delete');

Route::get('api/produk', [ApiController::class, 'index']);
Route::get('api/list', [ApiController::class, 'getProduct']);
