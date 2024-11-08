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
        <a href="/newspapers/<?php echo e($sort === 'asc' ? 'desc' : 'asc'); ?>">
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
            <?php $__currentLoopData = $newspapers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $newspaper): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td><?php echo e($newspaper->name); ?></td>
                    <td><?php echo e($newspaper->publication_date); ?></td>
                    <td><?php echo e($newspaper->publisher); ?></td>
                    <td><?php echo e($newspaper->language); ?></td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
    </table>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\WebDev\WebDev\my-library\resources\views/newspapers.blade.php ENDPATH**/ ?>