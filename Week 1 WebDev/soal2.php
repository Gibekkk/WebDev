<?php
$max = 0;
$min = 0;
$regex = "/^\[(([0-9])([\,][0-9]){0,}){1,}\]$/";
$isError = true;
$execute = false;
if (isset($_POST['submit'])) {
    if (isset($_POST['nums1']) && isset($_POST['nums2']) && isset($_POST['m']) && isset($_POST['n'])) {
        $nums1 = $_POST['nums1'];
        $nums2 = $_POST['nums2'];
        $m = $_POST['m'];
        $n = $_POST['n'];
        if (preg_match($regex, $nums1) && preg_match($regex, $nums2)) {
            $isError = false;
            $nums1 = explode(",", substr($nums1, 1, strlen($nums1) - 2));
            $nums2 = explode(",", substr($nums2, 1, strlen($nums2) - 2));
            if ($n < $min) $n = $min;
            if ($n > $max && $max > 1) $n = $max;
            if ($m < $min) $m = $min;
            if ($m > $max && $max > 1) $m = $max;
            $execute = true;
        }
    }
    if ($isError) echo "Something went wrong, please recheck everything!";
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soal 2</title>
</head>

<body>
    <form action="" method="post">
        <table>
            <tr>
                <td><label>Nums1:</label></td>
                <td><input type="text" pattern="<?= substr($regex, 1, strlen($regex) - 2); ?>" placeholder="Format: [0,1,2,..]" name="nums1" required></td>
            </tr>
            <tr>
                <td><label>Nums2:</label></td>
                <td><input type="text" pattern="<?= substr($regex, 1, strlen($regex) - 2); ?>" placeholder="Format: [0,1,2,..]" name="nums2" required></td>
            </tr>
            <tr>
                <td><label>m:</label></td>
                <td><input type="number" name="m" placeholder="Index for Nums1" required min="<?= $min; ?>" <?= ($max > 0) ? 'max="'.$max.'"' : ''; ?>></td>
            </tr>
            <tr>
                <td><label>n:</label></td>
                <td><input type="number" name="n" placeholder="Index for Nums2" required min="<?= $min; ?>" <?= ($max > 0) ? 'max="'.$max.'"' : ''; ?>></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" name="submit" value="Calculate!" style="width: 100%"></td>
            </tr>
        </table>
    </form>
    <a href="index.php">Soal1</a>
    <br>
</body>

</html>
<?php
function execute($nums1, $nums2, $m, $n)
{
    if ($m > count($nums1)) $m = count($nums1);
    if ($n > count($nums2)) $n = count($nums2);
    $emptyArray = [];
    for ($i = 0; $i < $m; $i++) {
        $emptyArray[count($emptyArray)] = $nums1[$i];
    }
    for ($i = 0; $i < $n; $i++) {
        $emptyArray[count($emptyArray)] = $nums2[$i];
    }
    sort($emptyArray);
    $nums1 = $emptyArray;
    echo 'Hasil: ' . implode(', ', $nums1);
}

if ($execute) execute($nums1, $nums2, $m, $n);
?>