<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Task extends Model
{
    use HasFactory;
    protected $fillable = [
        'title',
        'description',
        'response_by',
        'created_by',
        'progress',
        'order',
        'start_date',
        'complete_date',
    ];

}
