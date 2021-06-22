<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'background',
        'discover',
        'cover',
        'over_cover',
        'description',
        'created_by',
    ];
}
