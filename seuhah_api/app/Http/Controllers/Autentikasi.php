<?php

namespace App\Http\Controllers;

use App\Models\Users;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class Autentikasi extends Controller
{
    public function register(Request $request)
    {
        $this->validate($request, [
            'nama_depan' => 'required',
            'nama_belakang' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:8'
        ]);


        $namaDep = $request->input('nama_depan');
        $namaBel = $request->input('nama_belakang');
        $email = $request->input('email');
        $password = Hash::make($request->input('password'));

        // Timestamp
        $time = time();

        Users::create([
            'nama_depan'    => $namaDep,
            'nama_belakang' => $namaBel,
            'email'         => $email,
            'pass'          => $password,
            'role'          => 2,
            'tgl_edit'      => $time,
            'tgl_buat'      => $time
        ]);
        return $this->hasil(200, true, "Registrasi Berhasil");
    }

    public function login(Request $request)
    {
        $email = $request->input('email');
        $password = $request->input('password');
        $member = Users::query()->firstWhere(['email' => $email]);
        if ($member == null)
        {
            return $this->hasil(400, false, 'Email tidak ditemukan');
        }

        if (!Hash::check($password, $member->pass))
        {
            return $this->hasil(400, false, 'Password tidak valid');
        }

        $login = Users::where('email', $member->email)->update(['token' => $this->RandomString()]);
        // $login = Users::create([
        //     'token' => $this->RandomString(),
        // ]);


        if (!$login)
        {
            return $this->hasil(401, false, 'Unauthorized');
        }

        $member = Users::query()->firstWhere(['email' => $member->email]);

        $data = [
            'token' => $member->token,
            'user' => [
                'id' => $member->id_user,
                'email' => $member->email,
            ]
        ];
        return $this->hasil(200, true, $data);
    }

    private function RandomString($length = 100)
    {
        $karakkter = '012345678dssd9abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $panjang_karakter = strlen($karakkter);
        $str = '';
        for ($i = 0; $i < $length; $i++)
        {
            $str .= $karakkter[rand(0, $panjang_karakter - 1)];
        }
        return $str;
    }
}
