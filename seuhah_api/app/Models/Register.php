<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Register extends Model
{
    protected $table = 'users';
    protected $fillable = ['nama_depan', 'nama_belakang', 'email', 'pass', 'role', 'tgl_edit', 'tgl_buat'];
    public $timestamps = false;
}
