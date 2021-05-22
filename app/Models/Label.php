<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Label extends Model
{
    use HasFactory;
    protected $fillable = [
        'slogan',
        'contact',
        'home',
        'about_us',
        'design',
        'project',
        'recommend',
        'us',
        'career',
        'award',
        'copyrights',
        'created_by',
    ];
}
