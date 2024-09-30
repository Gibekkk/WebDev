<?php
class Buku
{
    private $judul;
    private $author;
    private $publisher;
    private $year;

    public function __construct($judul, $author, $publisher, $year)
    {
        $this->judul = $judul;
        $this->author = $author;
        $this->publisher = $publisher;
        $this->year = $year;
    }

    function setJudul($judul)
    {
        $this->judul = $judul;
    }

    function setAuthor($author)
    {
        $this->author = $author;
    }

    function setPublisher($publisher)
    {
        $this->publisher = $publisher;
    }

    function setYear($year)
    {
        $this->year = $year;
    }

    function getJudul()
    {
        return $this->judul;
    }

    function getAuthor()
    {
        return $this->author;
    }

    function getPublisher()
    {
        return $this->publisher;
    }

    function getYear()
    {
        return $this->year;
    }
}
