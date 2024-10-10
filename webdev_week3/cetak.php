<?php
include_once "Setup.php";
if (isset($_SESSION['hitung']) && isset($_SESSION['jumlah'])) {
    if ($_SESSION['hitung'] <= $_SESSION['jumlah']) {
        header("Location:input.php");
    }
}
if(count($_SESSION['datas']) == $_SESSION['jumlah']){
   foreach($_SESSION['datas'] as $data){
    echo $data->getDetails();
    echo "<br>";
   }
}
?>