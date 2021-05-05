<?php

namespace App\Http\Middleware;

use App\Models\Traffic;
use Carbon\Carbon;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Arr;

class TrafficMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */

    public function handle(Request $request, Closure $next)
    {

        $ipInfo=  geoip()->getLocation( $request->ip());
        $data = array(
            'ip'=>$ipInfo->ip,
            'iso_code'=>$ipInfo->iso_code,
            'country'=>$ipInfo->country,
            'timezone'=>$ipInfo->timezone,
            'city'=>$ipInfo->city,
            'continent'=>$ipInfo->continent,
            'default'=>$ipInfo->default,
            'currency'=>$ipInfo->currency,
            'state'=>$ipInfo->state,
            'postal_code'=>$ipInfo->postal_code,
            'state_name'=>$ipInfo->state_name,
            'lat'=>$ipInfo->lat,
            'lon'=>$ipInfo->lon,
        );

//        print_r($data);
        $traffic = new Traffic();
        $traffic->fill($data);
        $traffic->save();

//        //Email notification
//        $totalTraffic = Traffic::all()->sum('visits');
//        $totalVisitors = Traffic::all()->count();
//
//        \Mail::raw("New visit at {$time} from {$visitor}. You have over all {$totalTraffic} visits from {$totalVisitors} visitors.", function ($note) {
//            $note->to('manager@mail.com');
//        });

        return $next($request);
    }
}
