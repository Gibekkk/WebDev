<?php
class control_flow
{
    var $definition;
    function __construct($student)
    {
        $this->definition = $student->name . ', ' . (($student->ageYear >= 18) ? "You are an adult" : "You are a minor") . '!';
        echo $this->definition . '<br>';
    }
}
include_once "class/Student.php";
$controlFlow = new control_flow($student1);
$controlFlow = new control_flow($student2);
$controlFlow = new control_flow($student3);
$controlFlow = new control_flow($student4);
$controlFlow = new control_flow($student5);
