<?php

namespace Database\Seeders;

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LabelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $data = array([
            'slogan'=>"A Contruction, Architecture,Refurbishment, Public work,Engineering and Developmentcompany in Cambodia.",
            'contact' => "43 Sihanouk boulevard,Phnom Penh BP 609 (855) 23 215 296 Sales: sales@lbl-group.com Careers: jobs@lbl-group.com
Suppliers: purchasing@lbl-group.com",
            'home' => "Home",
            'about_us' => "About Us",
            'design' => "Design & Build",
            'project' => "Projects",
            'recommend' => "They Recommend",
            'us' => "Us",
            'career' => "Careers",
            'award' => "Awards & Media",
            'created_at' => Carbon::now()->format('Y-m-d H:i:s'),
            'updated_at' => Carbon::now()->format('Y-m-d H:i:s'),

        ]
        );
        DB::table('labels')->insert($data);
    }
}
