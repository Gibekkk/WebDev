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
        <a href="/final_year_projects/<?php echo e($sort === 'asc' ? 'desc' : 'asc'); ?>">
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
            <?php $__currentLoopData = $finalYearProjects; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $project): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td><?php echo e($project->title); ?></td>
                    <td><?php echo e($project->student_name); ?></td>
                    <td><?php echo e($project->supervisor); ?></td>
                    <td><?php echo e($project->submission_year); ?></td>
                    <td><?php echo e($project->abstract); ?></td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
        </tbody>
    </table>
</body>
</html>
<?php /**PATH C:\xampp\htdocs\WebDev\WebDev\my-library\resources\views/fyps.blade.php ENDPATH**/ ?>