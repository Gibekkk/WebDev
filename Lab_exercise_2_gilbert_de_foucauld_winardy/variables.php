<?php
class variables
{
    var $name;
    var $sex;
    var $ageYear;
    var $ageMonth;
    var $ageDay;
    var $gpa;
    var $isStudent;
    function __construct($name = "Gilbert De Foucauld Winardy", $sex = "Male", $birthDate = "02-12-2004", $gpa = 3.96, $isStudent = true)
    {
        $this->name = $name;
        $this->sex = $sex;
        $dayAge = floor((strtotime(date("d-m-Y")) - strtotime($birthDate)) / 86400);
        $this->ageMonth =  floor(($dayAge % 365) / 30);
        $this->ageYear =  floor($dayAge / 365);
        $this->ageDay = floor(($dayAge % 365) % 30);
        $this->gpa = $gpa;
        $this->isStudent = $isStudent;
    }

    function printAge(){
        return $this->ageDay . ' Days, ' . $this->ageMonth . ' Months, ' . $this->ageYear . ' Years Old';
    }

    function display()
    {
        echo '
        Name: ' . $this->name . '<br>
        Sex: ' . $this->sex . '<br>
        Age: ' . $this->printAge() . '<br>
        GPA: ' . $this->gpa . '<br>
        Is Student: ' . ($this->isStudent ? "Yes" : "No") . '<br>
    ';
    }
}
