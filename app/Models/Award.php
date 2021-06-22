<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Award extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'description',
        'logo',
        'award_type',
        'order',
        'created_by',
    ];
}
