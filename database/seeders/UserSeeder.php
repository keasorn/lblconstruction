<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = array([
            'name'=>"admin",
            'img_profile' => "/upload/admin/profile/admin_user.jpg",
            'email' => "admin@lblconstruction.com",
            'password' =>  bcrypt("admin@123"),
            'email_verified_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s'),

        ]
        );
        DB::table('users')->insert($data);
        //
    }
}
