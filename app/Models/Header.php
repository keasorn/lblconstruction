<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Header extends Model
{
    use HasFactory;
    protected $fillable = [
        'display_title',
        'title',
        'description',
        'facebook',
        'instagram',
        'linkin',
        'logo',
        'background_pc',
        'background_mobile',
        'created_by',
    ];
}
