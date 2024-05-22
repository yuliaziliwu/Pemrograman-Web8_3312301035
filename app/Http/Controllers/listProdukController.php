<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Produk;
class listProdukController extends Controller
{
    public function show()
    {
        // Misalkan kita mengambil data dari database dan melakukan paginasi
        $items = Produk::paginate(3); // Mengambil 10 item per halaman
        foreach ($items as $produk) {
            $nama[] = $produk->nama;
            $deskripsi[] = $produk->deskripsi;
            $harga[] = $produk->harga;
        }
        return view('list_produk', compact('items'));
    }
    public function simpan(Request $request) 
    {
        $produk = new Produk;
        $produk->nama = $request->input('nama');
        $produk->deskripsi = $request->input('deskripsi');
        $produk->harga = $request->input('harga');
        $produk->save();

        return redirect()->back()->with('success', 'Data berhasil disimpan!');
    }

//  public function simpan(Request $request)
//     {
//         $valid = $request->validate([
//             'nama' => 'required',
//             'deskripsi' => 'required',
//             'harga' => 'required',
//         ]);
//          if (produk::create($valid)) {
//              return redirect()->back()->with('success', 'Data Berhasil Disimpan!');}
//         return redirect('/')->with('gagal', 'Tambah produk gagal.');
//     }




// public function simpan(Request $request)
// {
//     $produk = new Produk;
//     $produk->nama = $request->input('nama');
//     $produk->deskripsi = $request->input('deskripsi');
//     $produk->harga = $request->input('harga');
//     $produk->save();

//     return redirect()->back()->with('success', 'Data Berhasil Disimpan!');
// }
}
