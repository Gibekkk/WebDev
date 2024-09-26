<?php
$max = 10; // Menetapkan nilai maksimum
$min = 1; // Menetapkan nilai minimum
if ($max < $min) $max = $min + 1; // Memastikan nilai maksimum lebih besar dari nilai minimum
if (isset($_POST['submit'])) { // Memeriksa apakah form telah disubmit
    if (isset($_POST['totalAngka'])) { // Memeriksa apakah totalAngka ada dalam POST
        $angka = $_POST['totalAngka']; // Mengambil nilai totalAngka dari POST
        if ($angka < $min) $angka = $min; // Memastikan nilai angka tidak kurang dari nilai minimum
        if ($angka > $max) $angka = $max; // Memastikan nilai angka tidak lebih dari nilai maksimum
    }
}

function palindrome($reps) // Mendefinisikan fungsi palindrome
{
    $result = ""; // Inisialisasi variabel hasil
    for ($k = 1; $k <= $reps; $k++) { // Loop dari 1 hingga reps
        $palindrome = ""; // Inisialisasi variabel palindrome
        for ($l = 0; $l < $k; $l++) { // Loop dari 0 hingga k
            $palindrome .= "1"; // Menambahkan "1" ke variabel palindrome
        }
        $result .= '<p style="text-align: center; margin: auto">' . $palindrome . ' x ' . $palindrome . ' = '; // Menambahkan teks ke hasil
        $result .= $palindrome * $palindrome; // Menghitung hasil perkalian palindrome
        $result .= "</p>"; // Menutup tag paragraf
    }
    return $result; // Mengembalikan hasil
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"> <!-- Menetapkan karakter encoding -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Menetapkan viewport untuk responsif -->
    <title>Form</title> <!-- Menetapkan judul halaman -->
</head>

<body>
    <form action="" method="post"> <!-- Membuat form dengan metode POST -->
        <input type="number" name="totalAngka" style="width: 150px" required value="<?= (isset($angka)) ? $angka : ''; ?>" placeholder="Total Angka (<?= $min . ' - ' . $max; ?>)" min="<?= $min; ?>" max="<?= $max; ?>"> <!-- Input untuk totalAngka -->
        <input type="submit" name="submit" value="Create Palindrome!"> <!-- Tombol submit -->
    </form>
    <a href="soal2.php">Soal2</a> <!-- Link ke soal2.php -->
</body>

</html>

<?php
if (isset($angka)) { // Memeriksa apakah variabel angka telah diatur
    echo palindrome($angka); // Menampilkan hasil dari fungsi palindrome
}
?>