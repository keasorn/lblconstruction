<?php
use App\Http\Controllers\MyUtility as MyUt;
?>
<div class="row clearfix">
    <!-- Task Info -->
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <div class="card">
            <div class="body">
                <div class="table-responsive">
                    <table class="table table-hover dashboard-task-infos">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>Task</th>
                            <th>Status</th>
                            <th>Response By</th>
                            <th>Estimate Start Date</th>
                            <th>Estimate Complete Date</th>
                            <th>Progress</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $i = 1;
                        $sumProgress = 0;
                        ?>
                        @foreach($tasks as $row)
                            <?php
                            $sumProgress += $row->progress;
                            ?>

                            <tr>
                                <td>{{$i++}}</td>
                                <td>{{$row->title}}</td>
                                <td><span class="label bg-{{MyUt::getBgProgressColorStatus($row->progress)}}">{{MyUt::getProgressStatus($row->progress)}}</span></td>
                                <td class="text-center">{{$row->response_by}}</td>
                                <td class="text-center">{{MyUt::toKhDate($row->start_date)}}</td>
                                <td class="text-center">{{MyUt::toKhDate($row->complete_date)}}</td>
                                <td>
                                    <div class="progress">
                                        <div class="progress-bar bg-{{MyUt::getBgProgressColorStatus($row->progress)}}" role="progressbar" aria-valuenow="100"
                                             aria-valuemin="0" aria-valuemax="100"
                                             style="width: {{$row->progress}}%"></div>
                                    </div>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>

                    <h5>Total Progress {{MyUt::formatThousand($sumProgress/($i-1),2)}} %</h5>
                    <div class="progress">
                        <div class="progress-bar bg-green" role="progressbar" aria-valuenow="100"
                             aria-valuemin="0" aria-valuemax="100"
                             style="width: {{$sumProgress/($i-1)}}%"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- #END# Task Info -->

</div>