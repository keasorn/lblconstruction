<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Traffic extends Model
{
    protected $fillable = ['ip','iso_code','country','timezone','state','city','continent','default','postal_code','currency','state_name' , 'lat','lon', 'created_at', 'updated_at'];
    public $timestamps = true;
    public static function boot()
    {
        parent::boot();
//        static::creating(function ($model) {
//
//            print_r($model);
//            $model->ip = $model->ip;
//            $model->created_at = $model->freshTimestamp();
//            $model->updated_at = $model->freshTimestamp();
//        });
    }
}
