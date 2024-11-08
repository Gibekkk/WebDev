<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Journals Display</title>
</head>
<body>
    <header>
        <nav>
            <a href="/">Home</a>
            <a href="/books">Books</a>
            <a href="/cds">CDs</a>
            <a href="/newspapers">Newspapers</a>
            <a href="/final_year_projects">Final Year Projects</a>
        </nav>
    </header>

    <h1>Daftar Journals 
        <a href="/journals?sort={{ $sort === 'asc' ? 'desc' : 'asc' }}">
            (Change Order)
        </a>
    </h1>

    <table border="1">
        <thead>
  
