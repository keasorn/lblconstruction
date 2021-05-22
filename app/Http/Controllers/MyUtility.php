<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of MyUtility
 *
 * @author Sreyhuy Leng
 */
class MyUtility extends Controller
{

    //put your code here


     public static $index = 0;

    // dd-mm-yyyy --> y-m-d
    public static function toMySqlDate($strDate)
    {

        $mySqlDate = MyUtility::n2e($strDate);
        if ($mySqlDate == "") return "";

        if ($strDate == "00-00-0000") {
            return "";
        } else {
            $date = explode("-", $strDate);

            $day = $date[0];
            $month = $date[1];
            $year = $date[2];

            if (!is_numeric($month)) {

                $month3 = array(
                    'dec' => 12, 'nov' => 11, 'oct' => 10, 'sep' => 9, 'aug' => 8, 'jul' => 7,
                    'jun' => 6, 'may' => 5, 'apr' => 4, 'mar' => 3, 'feb' => 2, 'jan' => 1
                );
                $month = $month3[strtolower($month)];
            }
            return $year . "-" . $month . "-" . $day;
        }
    }

    // $mySqlDate = Y-m-d --> dd-mm-yyyy
    public static function toKhDate($mySqlDate)
    {


        $mySqlDate = MyUtility::n2e($mySqlDate);
        if ($mySqlDate == "") return "";

        //  echo $mySqlDate;

        $t = ($mySqlDate == "0000-00-00 00:00:00");
        $t |= ($mySqlDate == "00-00-0000 00:00:00");
        $t |= ($mySqlDate == "00-00-0000");
        $t |= ($mySqlDate == "0000-00-00");

        if ($t) {
            return "";
        } else {
            $date = explode(" ", $mySqlDate);
            $date = explode("-", $date[0]);
            return $date[2] . "-" . $date[1] . "-" . $date[0];
        }
    }

    public static function e2z($str)
    {
        if ($str == "") {
            return 0;
        } elseif ($str == "0.00") {
            return 0;
        } else {
            return $str;
        }
    }

    public static function z2n($str)
    {

        if ($str == "") {
            return null;
        } elseif ($str == "0.00") {
            return null;
        } elseif ($str == "0") {
            return null;
        } else {
            return $str;
        }
    }

    public static function n2z($str)
    {
        if ($str == null) {
            return 0;
        } else {
            return $str;
        }
    }

    public static function n2e($str)
    {
        if ($str == null) {
            return "";
        } else {
            return $str;
        }
    }


    public static function n2v($str, $val)
    {
        if ($str == null) {
            return $val;
        } else {
            return $str;
        }
    }

    public static function myIsset($val)
    {
        if (!isset($val)) {
            return $val;
        } else {
            return null;
        }
    }
    public static function formatThousand($val, $decimals = 0)
    {
        if (($val == 0) or ($val == "0")) {
            return "";
        } else {
//            echo "value=". $val;
//            exit();
            $val = number_format($val, $decimals);
            return ($val == "0" ? "" : $val);
        }
    }

    public static function getProgressStatus($percentage){
        if ($percentage<1){
            return "On hold";
        }elseif ($percentage<25){
            return "In Start";
        }elseif ($percentage<100){
            return "In progress";
        }elseif ($percentage>99){
            return "Completed";
        }
    }    public static function getBgProgressColorStatus($percentage){
        if ($percentage<1){
            return "deep-orange";
        }elseif ($percentage<25){
            return "pink";
        }elseif ($percentage<100){
            return "blue";
        }elseif ($percentage>99){
            return "green";
        }
    }
    public static function getProjectStatusName($status)
    {
        switch ($status) {
            case 1:
                return "On-going";
            case 2:
                return "Completed";
            case 3:
                return "Suspended";
            case 4:
                return "Pipleline";
            default:
                return "";

        }
    }


    public static function getRadio($val1, $val2)
    {
        if ($val1 == $val2) {
            $result = "radio_checked.gif";
        } else {
            $result = "radio_unchecked.gif";
        }

        return $result;
    }

    public static function getRadioImage($val1, $val2)
    {
        if ($val1 == $val2) {
            $result = "<img src='/images/radio_checked.gif'>";
        } else {
            $result = "<img src='/images/radio_unchecked.gif'>";
        }

        return $result;
    }

    public static function getImplementingAgencyName($id)
    {
        if ($id == 1) return "Royal Government of Cambodia (RGC)";
        elseif ($id == 2) return "Development Partner";
        elseif ($id == 3) return "NGO/CSO";
        elseif ($id == 4) return "Private Sector";
        elseif ($id == 5) return "Other";
    }

    public static function setSortIcon($column, $sortColumn, $sortDirection)
    {
        $result = "";
        if ($column == $sortColumn) {
            if ($sortDirection == "asc") {
                $result = "&nbsp;<img src='/images/sort-up.png' height='11'>";
            } else {
                $result = "&nbsp;<img src='/images/sort-down.png' height='11'>";
            }
        }
        return $result;
    }


    public static function removeRightComma($str)
    {
        $str = trim($str);

        $len = strlen($str);
        $rChar = substr($str, $len - 1);
        if ($rChar == ",") {
            $str = substr($str, 0, $len - 1);
        }
        return $str;
    }


    public static function getColumnNames($dataSet)
    {
        foreach ($dataSet->first() as $key => $value) {

        }
    }

    public static function getTermOA($termOACode)
    {
        if ($termOACode == "GR") {
            return "Grant";
        } else {
            return "Loan";
        }
    }

    public static function getLongTermOA($termOACode)
    {
        if ($termOACode == "GR") {
            return "Grant";
        } else if ($termOACode == "LN") {
            return "Concessional Loan";
        } else if ($termOACode == "NC") {
            return "Non-Concessional Loan";
        }
    }

    public static function getYesNo($value1, $value2)
    {
        if ($value1 == $value2) {
            return "Yes";
        } else {
            return "No";
        }
    }


    public static function formatKhDate($date)
    {
        $date = date_create($date);
        $date = date_format($date, "d-M-Y");
        return $date;
    }

    public static function getDictData($key, $dict)
    {
        if ($dict != null) {

            if (array_key_exists($key, $dict)) {
                return $dict[$key];
            } else {
                return null;
            }
        } else {
            return null;
        }
    }


    public static function getRecord_IDs($tmpDs)
    {
        $tmpDs = clone $tmpDs;
        $tmpDs = $tmpDs->groupBy("Record_ID");
        $record_ids = array();
        foreach ($tmpDs->get() as $row) {
            $record_ids[$row->Record_ID] = $row->Record_ID;
        }
        return $record_ids;
    }


    public static function selectLeftMenu($id1, $id2)
    {
        if ($id1 == $id2) {
            return "class='LeftMenuActive'";
        } else {
            return "";
        }
    }

    public static function selectTopMenu($id1, $id2)
    {

        if ($id1 == $id2) {
            return "class='ODASelectedMenu'";
        } else {
            return "class='ODANormalMenu'";
        }
    }


    public static function getAlterBackground($id)
    {
        if ($id % 2 == 0) {
            return "background-color: #F2F4FF;";
        } else {
            return "background-color: white;";

        }
    }


    public static function toExcel($toExcel, $file_name)
    {
        if ($toExcel == true) {
            header("Content-Type: application/xls");
            header("Content-Disposition: attachment; filename=" . $file_name);
            header("Pragma: no-cache");
            header("Expires: 0");
        }
    }

    function Dlookup($myfield, $mytable, $fCriteria, $vCriteria, $Cnt)
    {
        $result = 0;
        if ($Cnt != "") {
            $model = DB::connection($Cnt)->table($mytable);
        } else {
            $model = DB::table($mytable);
        }

        if ($fCriteria != "" || $vCriteria != "") {
            $model = $model->where($fCriteria, $vCriteria);
        }

        $model = $model->sum($myfield);

        if ($model) {
            $result = $model;
        }
        return $result;
    }

    function getSelected($variable, $value)
    {
        if ($variable == $value) {
            $selected = "true";
        } else {
            $selected = "";
        }
        return $selected;
    }

    public static function getTmpTable($table)
    {

        $sql = "select * from " . $table;
        $tmpTable = "tmp_" . $table;
        DB::insert(DB::raw("CREATE TEMPORARY TABLE `" . $tmpTable . "` as " . $sql));
        return $tmpTable;
    }

    public static function laravelUploadImg($request, $file_name, $path, $name = false)
    {
        if ($request->hasFile($file_name)) {
            $image = $request->file($file_name);
            if (!$name) {
                $name = uniqid();
            }
            $destinationPath = public_path($path);
            $name = $name . "." . $image->getClientOriginalExtension();
            $image->move($destinationPath, $name);
        }
        return "/" . $path . "/" . $name;

    }
}
