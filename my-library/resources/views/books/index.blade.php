<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Welcome Laravel</title>
</head>
<body>
    @if(count($books) > 0)
    @foreach ($books as $book)
        {{$book}}
    @endforeach
    @else
        <h1>No Books</h1>
    @endif
</body>
</html>
