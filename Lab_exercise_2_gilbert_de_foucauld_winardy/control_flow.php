<?php
class control_flow{
    var $definition;
    function __construct($student){
        $this->definition = (($student->ageYear >= 18) ? "You are an adult" : "You are a minor").'!';
        echo $this->definition . '<br><br>';
    }
}
include_once "variables.php";