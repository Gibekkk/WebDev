<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Books Display</title>
</head>
<body>
    <header class="grid grid-cols-2 items-center gap-2 py-10 lg:grid-cols-3">
            <nav class="-mx-3 flex flex-1 justify-end">
                        <a
                            href="/"
                            class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                        >
                            Home
                        </a>
                        <a
                            href="/books"
                            class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
                        >
                            Books
                        </a>
            </nav>
    </header>
    <h1>Daftar Jurnal <a
        href="/journals/<?= $sort == 'asc' ? 'desc':'asc'; ?>"
        class="rounded-md px-3 py-2 text-black ring-1 ring-transparent transition hover:text-black/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white"
    >
        (Change Order)
    </a></h1>
    <table border="1">
        <thead>
            <tr>
                <th>Judul</th>
                <th>Penerbit</th>
                <th>Penulis</th>
                <th>Tahun Terbit</th>
                <th>ISBN</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($journals as $journal)
                <tr>
                    <td>{{ $journal->judul }}</td>
                    <td>{{ $journal->penerbit }}</td>
                    <td>{{ $journal->penulis }}</td>
                    <td>{{ $journal->tahun_terbit }}</td>
                    <td>{{ $journal->ISBN }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
