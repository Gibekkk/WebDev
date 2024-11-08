<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Newspaper Display</title>
</head>
<body>
    <header>
        <nav>
            <a href="/">Home</a>
            <a href="/books">Books</a>
            <a href="/cds">CDs</a>
            <a href="/journals">Journals</a>
            <a href="/final_year_projects">Final Year Projects</a>
        </nav>
    </header>

    <h1>Daftar Newspapers 
        <a href="/newspapers/{{ $sort === 'asc' ? 'desc' : 'asc' }}">
            (Change Order)
        </a>
    </h1>

    <table border="1">
        <thead>
            <tr>
                <th>Name</th>
                <th>Publication Date</th>
                <th>Publisher</th>
                <th>Language</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($newspapers as $newspaper)
                <tr>
                    <td>{{ $newspaper->name }}</td>
                    <td>{{ $newspaper->publication_date }}</td>
                    <td>{{ $newspaper->publisher }}</td>
                    <td>{{ $newspaper->language }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
