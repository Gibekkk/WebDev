<?php
class Person
{
    private $nama;
    private $umur;
    private $sex;
    private $agama;

    function __construct($nama, $umur, $sex, $agama){
        $this->nama = $nama;
        $this->umur = $umur;
        $this->sex = $sex;
        $this->agama = $agama;
    }

    function setNama($nama)
    {
        $this->nama = $nama;
    }

    function setUmur($umur)
    {
        $this->umur = $umur;
    }

    function setSex($sex)
    {
        $this->sex = $sex;
    }

    function setAgama($agama)
    {
        $this->agama = $agama;
    }

    function getNama()
    {
        return $this->nama;
    }

    function getUmur()
    {
        return $this->umur;
    }

    function getSex()
    {
        return $this->sex;
    }

    function getAgama()
    {
        return $this->agama;
    }
}
