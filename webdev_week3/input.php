<?php 
include_once "Setup.php"; 
if (isset($_SESSION['hitung']) && isset($_SESSION['jumlah'])) {
    if ($_SESSION['hitung'] > $_SESSION['jumlah']) {
        header("Location:index.php");
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Input Buku</title>
</head>

<body>
    <h1>Inputan Buku <?= $_SESSION['hitung'] . '/' . $_SESSION['jumlah']; ?></h1>
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

</html>