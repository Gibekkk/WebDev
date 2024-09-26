<?php
$max = 0; // Menetapkan nilai maksimum awal
$min = 0; // Menetapkan nilai minimum awal
$regex = "/^\[(([0-9])([\,][0-9]){0,}){1,}\]$/"; // Menetapkan pola regex untuk memvalidasi input
$isError = true; // Menetapkan status error awal
$execute = false; // Menetapkan status eksekusi awal
if (isset($_POST['submit'])) { // Memeriksa apakah form telah disubmit
    if (isset($_POST['nums1']) && isset($_POST['nums2']) && isset($_POST['m']) && isset($_POST['n'])) { // Memeriksa apakah semua input yang diperlukan ada
        $nums1 = $_POST['nums1']; // Mengambil nilai nums1 dari POST
        $nums2 = $_POST['nums2']; // Mengambil nilai nums2 dari POST
        $m = $_POST['m']; // Mengambil nilai m dari POST
        $n = $_POST['n']; // Mengambil nilai n dari POST
        if (preg_match($regex, $nums1) && preg_match($regex, $nums2)) { // Memeriksa apakah nums1 dan nums2 sesuai dengan pola regex
            $isError = false; // Mengubah status error menjadi false
            $nums1 = explode(",", substr($nums1, 1, strlen($nums1) - 2)); // Mengubah string nums1 menjadi array
            $nums2 = explode(",", substr($nums2, 1, strlen($nums2) - 2)); // Mengubah string nums2 menjadi array
            if ($n < $min) $n = $min; // Memastikan nilai n tidak kurang dari nilai minimum
            if ($n > $max && $max > 1) $n = $max; // Memastikan nilai n tidak lebih dari nilai maksimum
            if ($m < $min) $m = $min; // Memastikan nilai m tidak kurang dari nilai minimum
            if ($m > $max && $max > 1) $m = $max; // Memastikan nilai m tidak lebih dari nilai maksimum
            $execute = true; // Mengubah status eksekusi menjadi true
        }
    }
    if ($isError) echo "Something went wrong, please recheck everything!"; // Menampilkan pesan error jika ada kesalahan
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"> <!-- Menetapkan karakter encoding -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Menetapkan viewport untuk responsif -->
    <title>Soal 2</title> <!-- Menetapkan judul halaman -->
</head>

<body>
    <form action="" method="post"> <!-- Membuat form dengan metode POST -->
        <table>
            <tr>
                <td><label>Nums1:</label></td> <!-- Label untuk input nums1 -->
                <td><input type="text" value="<?= (isset($nums1)) ? '[' . implode(",", $nums1) . ']' : ''; ?>" pattern="<?= substr($regex, 1, strlen($regex) - 2); ?>" placeholder="Format: [0,1,2,..]" name="nums1" required></td> <!-- Input untuk nums1 -->
            </tr>
            <tr>
                <td><label>Nums2:</label></td> <!-- Label untuk input nums2 -->
                <td><input type="text" value="<?= (isset($nums2)) ? '[' . implode(",", $nums2) . ']' : ''; ?>" pattern="<?= substr($regex, 1, strlen($regex) - 2); ?>" placeholder="Format: [0,1,2,..]" name="nums2" required></td> <!-- Input untuk nums2 -->
            </tr>
            <tr>
                <td><label>m:</label></td> <!-- Label untuk input m -->
                <td><input type="number" name="m" value="<?= (isset($m)) ? $m : ''; ?>" placeholder="Index for Nums1" required min="<?= $min; ?>" <?= ($max > 0) ? 'max="' . $max . '"' : ''; ?>></td> <!-- Input untuk m -->
            </tr>
            <tr>
                <td><label>n:</label></td> <!-- Label untuk input n -->
                <td><input type="number" name="n" value="<?= (isset($n)) ? $n : ''; ?>" placeholder="Index for Nums2" required min="<?= $min; ?>" <?= ($max > 0) ? 'max="' . $max . '"' : ''; ?>></td> <!-- Input untuk n -->
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="submit" value="Calculate!" style="width: 100%"></td> <!-- Tombol submit -->
            </tr>
        </table>
    </form>
    <a href="index.php">Soal1</a> <!-- Link ke index.php -->
    <br>
</body>

</html>
<?php
function execute($nums1, $nums2, $m, $n) // Mendefinisikan fungsi execute
{
    if ($m > count($nums1)) $m = count($nums1); // Memastikan nilai m tidak lebih dari jumlah elemen nums1
    if ($n > count($nums2)) $n = count($nums2); // Memastikan nilai n tidak lebih dari jumlah elemen nums2
    $emptyArray = []; // Inisialisasi array kosong
    for ($i = 0; $i < $m; $i++) { // Loop dari 0 hingga m
        $emptyArray[count($emptyArray)] = $nums1[$i]; // Menambahkan elemen nums1 ke array kosong
    }
    for ($i = 0; $i < $n; $i++) { // Loop dari 0 hingga n
        $emptyArray[count($emptyArray)] = $nums2[$i]; // Menambahkan elemen nums2 ke array kosong
    }
    sort($emptyArray); // Mengurutkan array kosong
    $nums1 = $emptyArray; // Menetapkan nums1 dengan array yang telah diurutkan
    echo 'Hasil: ' . implode(', ', $nums1); // Menampilkan hasil
}

if ($execute) execute($nums1, $nums2, $m, $n); // Memanggil fungsi execute jika status eksekusi true
?>