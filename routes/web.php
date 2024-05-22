<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\SalaesController;
use App\Http\Controllers\listProdukController;
use App\Models\Produk;

Route::get('/', function () {
    return view('welcome');
});

// Route::get('/listproduk', function () {
//     $produk = produk::paginate(3);
// });



Route::get('/listproduk', [listProdukController::class, 'show'] );
Route::post('/listproduk', [listProdukController::class, 'simpan'])->name('produk.simpan');