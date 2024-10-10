<?php  
    class Book{
        private $title;
        private $author;
        private $publicationYear;
        
        function __construct($title, $author, $publicationYear){
            $this->title = $title;
            $this->author = $author;
            $this->publicationYear = $publicationYear;
        }

        function getDetails(){
            $result = 'Title: '.$this->title.', '
            .'Author: '.$this->author.', '
            .'Year: '.$this->publicationYear.', ';
            return $result;
        }

        function getTitle(){
            return $this->title;
        }

        function getAuthor(){
            return $this->author;
        }

        function getPublicationYear(){
            return $this->publicationYear;
        }
    }
?>