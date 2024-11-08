<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CD Display</title>
</head>
<body>
    <header>
        <nav>
            <a href="/">Home</a>
            <a href="/books">Books</a>
            <a href="/journals">Journals</a>
            <a href="/newspapers">Newspapers</a>
            <a href="/final_year_projects">Final Year Projects</a>
        </nav>
    </header>

    <h1>Daftar CD 
        <a href="/cds/{{ $sort === 'asc' ? 'desc' : 'asc' }}">
            (Change Order)
        </a>
    </h1>

    <table border="1">
        <thead>
            <tr>
                <th>Title</th>
                <th>Artist</th>
                <th>Publisher</th>
                <th>Release Year</th>
                <th>Genre</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($cds as $cd)
                <tr>
                    <td>{{ $cd->title }}</td>
                    <td>{{ $cd->artist }}</td>
                    <td>{{ $cd->publisher }}</td>
                    <td>{{ $cd->release_year }}</td>
                    <td>{{ $cd->genre }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
