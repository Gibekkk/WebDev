<?php
class functions_arrays
{
    function greet($student)
    {
        echo 'Hello, ' . $student->name .'<br>';
    }  
}
include_once "control_flow.php";
$students = [];

$student1 = new variables();
$student1->display();
$controlFlow = new control_flow($student1);

$student2 = new variables("Aryo Karel Merentek", "Male", "01-01-2003", 4.00);
$student2->display();
$controlFlow = new control_flow($student2);

$student3 = new variables("Aaron Jevon Benedict Kongdoh", "Male", "05-12-2010", 3.92);
$student3->display();
$controlFlow = new control_flow($student3);

$student4 = new variables("Alvin Yuga Pramana", "Male", "23-10-2005", 3.95);
$student4->display();
$controlFlow = new control_flow($student4);

$student5 = new variables("Javin Erasmus Clementinus", "Male", "10-02-2004", 3.50);
$student5->display();
$controlFlow = new control_flow($student5);

array_push($students, $student1, $student2, $student3, $student4, $student5);
$functions = new functions_arrays();
foreach ($students as $student) {
    $functions->greet($student);
}
