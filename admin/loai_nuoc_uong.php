<?php
session_start();

include_once("controllers/c_loai_nuoc_uong.php");
$clnu = new C_loai_nuoc_uong();
$clnu->HienGiaoDien();


?>