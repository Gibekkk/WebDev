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
        <a href="/cds/<?php echo e($sort === 'asc' ? 'desc' : 'asc'); ?>">
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
            <?php $__currentLoopData = $cds; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $cd): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td><?php echo e($cd->title); ?></td>
                    <td><?php echo e($cd->artist); ?></td>
                    <td><?php echo e($cd->publisher); ?></td>
                    <td><?php echo e($cd->release_year); ?></td>
                    <td><?php echo e($cd->genre); ?></td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
    </table>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\WebDev\WebDev\my-library\resources\views/cds.blade.php ENDPATH**/ ?>