<?php
$max = 10;
$min = 1;
if ($max < $min) $max = $min + 1;
if (isset($_POST['submit'])) {
    if (isset($_POST['totalAngka'])) {
        $angka = $_POST['totalAngka'];
        if ($angka < $min) $angka = $min;
        if ($angka > $max) $angka = $max;
    }
}

function palindrome($reps)
{
    $result = "";
    for ($k = 1; $k <= $reps; $k++) {
        $palindrome = "";
        for ($l = 0; $l < $k; $l++) {
            $palindrome .= "1";
        }
        $result .= '<p style="text-align: center; margin: auto">' . $palindrome . ' x ' . $palindrome . ' = ';
        $result .= $palindrome * $palindrome;
        $result .= "</p>";
    }
    return $result;
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form</title>
</head>

<body>
    <form action="" method="post">
        <input type="number" name="totalAngka" style="width: 150px" required value="<?= (isset($angka)) ? $angka : ''; ?>" placeholder="Total Angka (<?= $min . ' - ' . $max; ?>)" min="<?= $min; ?>" max="<?= $max; ?>">
        <input type="submit" name="submit" value="Create Palindrome!">
    </form>
    <a href="soal2.php">Soal2</a>
</body>

</html>

<?php
if (isset($angka)) {
    echo palindrome($angka);
}
?>