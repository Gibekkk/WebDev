<?php
class Student
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
$student1 = new Student();
$student2 = new Student("Aryo Karel Merentek", "Male", "01-01-2003", 4.00);
$student3 = new Student("Aaron Jevon Benedict Kongdoh", "Male", "05-12-2010", 3.92);
$student4 = new Student("Alvin Yuga Pramana", "Male", "23-10-2005", 3.95);
$student5 = new Student("Javin Erasmus Clementinus", "Male", "10-02-2004", 3.50);