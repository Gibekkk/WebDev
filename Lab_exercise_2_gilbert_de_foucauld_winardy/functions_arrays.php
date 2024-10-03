<?php
class functions_arrays
{
    function greet($student)
    {
        echo 'Hello, ' . $student->name .'!<br>';
    }  
}
include_once "class/Student.php";
$students = [];

array_push($students, $student1, $student2, $student3, $student4, $student5);
$functions = new functions_arrays();
foreach ($students as $student) {
    $functions->greet($student);
}
