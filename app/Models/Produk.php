<?php

namespace App\Models;

use Carbon\Traits\Timestamp;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Produk extends Model
{
    use HasFactory;
    protected $table = 'tblproduk';
    protected $fillable = ['nama', 'deskripsi', 'harga'];
    public $timestamps = false;
   }
