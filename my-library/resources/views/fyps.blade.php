<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Final Year Projects Display</title>
</head>
<body>
    <header>
        <nav>
            <a href="/">Home</a>
            <a href="/books">Books</a>
            <a href="/cds">CDs</a>
            <a href="/newspapers">Newspapers</a>
            <a href="/journals">Journals</a>
        </nav>
    </header>

    <h1>Daftar Final Year Projects 
        <a href="/final_year_projects/{{ $sort === 'asc' ? 'desc' : 'asc' }}">
            (Change Order)
        </a>
    </h1>

    <table border="1">
        <thead>
            <tr>
                <th>Title</th>
                <th>Student Name</th>
                <th>Supervisor</th>
                <th>Submission Year</th>
                <th>Abstract</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($finalYearProjects as $project)
                <tr>
                    <td>{{ $project->title }}</td>
                    <td>{{ $project->student_name }}</td>
                    <td>{{ $project->supervisor }}</td>
                    <td>{{ $project->submission_year }}</td>
                    <td>{{ $project->abstract }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
