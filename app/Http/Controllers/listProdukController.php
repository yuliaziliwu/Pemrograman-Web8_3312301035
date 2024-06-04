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

    // public function delete($id){
    //     $produk = Produk::where('id', $id)->first();
    //     if ($produk) {
    //         $produk->delete();
    //         return redirect()->back()->with('success', 'Produk berhasil dihapus.');
    //     }
    //     else {
    //         return redirect()->back()->with('error', 'Produk tidak ditemukan.');
    //     }
    //     }
    // }
    public function delete($id){
        $produk = Produk::where('id', $id)->first();
        if ($produk) {
            $produk->delete();
            return redirect()->back()->with('success', 'Produk berhasil dihapus.');
        }
        else {
            return redirect()->back()->with('error', 'Produk tidak ditemukan.');
        }
        }
    }