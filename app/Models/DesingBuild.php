<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DesingBuild extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'design_bg',
        'build_bg',
        'design_build_bg',
        'design_title',
        'design_des',
        'build_title',
        'build_des',
        'journey',
        'created_by',
    ];
}
