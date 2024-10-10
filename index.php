<?php
class Book{
    private $title;
    private $author;
    private $publicationYear;
    
    function __construct($title, $author, $publicationYear){
        $this->title = $title;
        $this->author = $author;
        $this->publicationYear = $publicationYear;
    }

    function getDetails(){
        $result = 'Title: '.$this->title.'<br>'
        .'Author: '.$this->author.'<br>'
        .'Publication Year: '.$this->publicationYear.'<br>';
        return $result;
    }

    function getTitle(){
        return $this->title;
    }

    function getAuthor(){
        return $this->author;
    }

    function getPublicationYear(){
        return $this->publicationYear;
    }
}

class EBook extends Book{
    private $fileSize;

    function __construct($title, $author, $publicationYear, $fileSize){
        parent::__construct($title, $author, $publicationYear);
        $this->fileSize = $fileSize;
    }
    function getDetails(){
        $result = parent::getDetails()
        .'File Size: '.$this->fileSize.' MB';
        return $result;
    }

    function getFileSize(){
        return $this->fileSize;
    }
}

class PrintedBook extends Book{
    private $numberOfPages;

    function __construct($title, $author, $publicationYear, $numberOfPages){
        parent::__construct($title, $author, $publicationYear);
        $this->numberOfPages = $numberOfPages;
    }
    function getDetails(){
        $result = parent::getDetails()
        .'Number of Pages: '.$this->numberOfPages.' Pages';
        return $result;
    }

    function getFileSize(){
        return $this->numberOfPages;
    }
}

session_start();
if (isset($_GET['jumlah'])) {
    $_SESSION['jumlah'] = $_GET['jumlah'];
    $_SESSION['hitung'] = 1;
    $_SESSION['datas'] = [];
    echo "
        <script>
            window.location.href = window.location.href.split('?')[0]+'?page=input';
        </script>
    ";
}
if (isset($_POST['create']) && $_SESSION['hitung'] <= $_SESSION['jumlah']) {
    if (isset($_SESSION['datas'])) {
        if (is_array($_SESSION['datas'])) {
            if ($_POST['tipe_buku'] == "E-Book") array_push($_SESSION['datas'], new EBook($_POST['title'], $_POST['author'], $_POST['publicationYear'], $_POST['bookSize']));
            else if ($_POST['tipe_buku'] == "Printed Book") array_push($_SESSION['datas'], new EBook($_POST['title'], $_POST['author'], $_POST['publicationYear'], $_POST['bookSize']));
            $_SESSION['hitung']++;
        }
    } else {
        $_SESSION['datas'] = [];
    }
}
if(!(isset($_SESSION['hitung']) && $_SESSION['jumlah'])) header("Location:index.php");

function index()
{
    echo '<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Buku</title>
</head>

<body>
    <button onclick="input()">Input</button>
    <a href="index.php?page=cetak"><button>Cetak</button></a>
    <script>
        function input(){
            let jumlah = window.prompt("Mau berapa buku?", 1);
            if(!(jumlah >= 1 && jumlah <= 100)){
                alert("Salah brow");
            } else {
                window.location.href = "index.php?page=input&jumlah="+jumlah;
            }
        }
    </script>
</body>
</html>';
}
function cetak()
{
    if (isset($_SESSION['hitung']) && isset($_SESSION['jumlah'])) {
        if ($_SESSION['hitung'] <= $_SESSION['jumlah']) {
            header("Location:index.php?page=input");
        }
    }
    if (count($_SESSION['datas']) == $_SESSION['jumlah']) {
        echo '
            Buku Random:<br>
            ' . $_SESSION['datas'][array_rand($_SESSION['datas'], 1)]->getDetails() . '
        ';
    }
}
function input()
{
    if (isset($_SESSION['hitung']) && isset($_SESSION['jumlah'])) {
        if ($_SESSION['hitung'] > $_SESSION['jumlah']) {
            header("Location:index.php?page=index");
        }
    }
    echo '<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Buku</title>
</head>

<body>
    <h1>Inputan Buku ' . $_SESSION['hitung'] . '/' . $_SESSION['jumlah'] . '</h1>
    <form action="" method="post" id="formBuku">
        Tipe Buku: 
        <select name="tipe_buku" id="tipe_buku">
            <option selected disabled></option>
            <option>E-Book</option>
            <option>Printed Book</option>
        </select>
        <br>
        Title: 
        <input type="text" name="title" id="title">
        <br>
        Author: 
        <input type="text" name="author" id="author">
        <br>
        Publication Year: 
        <input type="number" name="publicationYear" id="publicationYear" min="1500" max="2024">
        <br>
        <y id="ubah">File Size/Number of Pages: </y>
        <input type="number" name="bookSize" id="bookSize">
        <br>
        <input type="submit" name="create" value="Kirim">
    </form>

    <script>
        const form = document.getElementById("formBuku");
        const bookSize = document.getElementById("bookSize");
        const bookSizeText = document.getElementById("ubah");
        const tipeBuku = document.getElementById("tipe_buku");
        bookSize.style.display = "none";
        bookSizeText.style.display = "none";

        tipeBuku.addEventListener("change", function() {
            if (tipeBuku.value !== "") {
                bookSize.style.display = "inline";
                bookSizeText.style.display = "inline";
                if(tipeBuku.value === "E-Book"){
                    bookSizeText.innerHTML = "File Size (MB): ";
                    bookSize.setAttribute("min", 1);
                    bookSize.setAttribute("max", 100);
                }
                else if(tipeBuku.value === "Printed Book"){
                    bookSizeText.innerHTML = "Number of Pages: ";
                    bookSize.removeAttribute("min");
                    bookSize.removeAttribute("max");
                }
            } else {
                bookSize.style.display = "none";
                bookSizeText.style.display = "none";
            }
        });

        form.addEventListener("submit", function(e) {
            var errorText = "";
            if (!["E-Book", "Printed Book"].includes(tipeBuku.value)) {
                errorText += "Tipe Buku Salah!";
            }
            if (document.getElementById("title").value === "" || document.getElementById("title").value.length > 100) {
                if (errorText != "") errorText += "\n";
                errorText += "Title Invalid!";
            }
            if (document.getElementById("author").value === "" || document.getElementById("author").value.length > 100) {
                if (errorText != "") errorText += "\n";
                errorText += "Author Invalid!";
            }
            if (document.getElementById("publicationYear").value === "" || document.getElementById("publicationYear").value < 1500 || document.getElementById("publicationYear").value > 2024) {
                if (errorText != "") errorText += "\n";
                errorText += "Publication Year Invalid!";
            }
            if (tipeBuku.value === "E-Book" && (document.getElementById("bookSize").value < 1 || document.getElementById("bookSize").value > 100)) {
                if (errorText != "") errorText += "\n";
                errorText += "Book Size Invalid!";
            }
            if (errorText != "") {
                e.preventDefault();
                alert(errorText);
            }
        });
    </script>
</body>

</html>';
}

if(isset($_GET['page'])){
    switch($_GET['page']){
        case "index":
            index();
            break;
        case "input":
            input();
            break;
        case "cetak":
            cetak();
            break;
        default:
            index();
    }
} else{
    index();
}