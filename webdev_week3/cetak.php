<?php
include_once "Setup.php";
if (isset($_SESSION['hitung']) && isset($_SESSION['jumlah'])) {
    if ($_SESSION['hitung'] <= $_SESSION['jumlah']) {
        header("Location:input.php");
    }
}
if(count($_SESSION['datas']) == $_SESSION['jumlah']){
    echo '
        Buku Random:<br>
        '.$_SESSION['datas'][array_rand($_SESSION['datas'],1)]->getDetails().'
    ';
}
?>