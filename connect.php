<?php

$connect = new mysqli("localhost","root","","food");

if($connect){

}else{
    echo "connection failed";
    exit();
}