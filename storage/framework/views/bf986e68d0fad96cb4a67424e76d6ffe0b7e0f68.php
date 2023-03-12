<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title><?php echo e(config('app.name')); ?> - <?php echo $__env->yieldContent('title'); ?></title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"  crossorigin="anonymous" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" rel="stylesheet" >
       
        <style>
            body {
                font-family: 'Nunito';
            }
        </style>

    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand ms-3" href="<?php echo e(route('student.index')); ?>">Maisonneuve 2194679</a>
            <button class="navbar-toggler" type="button">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
              <div class="navbar-nav">
                <a class="nav-item nav-link" href="<?php echo e(route('student.index')); ?>">Student list</a>
                <a class="nav-item nav-link border-start border-2" href="<?php echo e(route('student.create')); ?>">Create student</a>
                <a class="nav-item nav-link border-start border-2" href="<?php echo e(route('city.index')); ?>">Cities</a>
              </div>
            </div>
          </nav>
        <?php echo $__env->yieldContent('content'); ?>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"  crossorigin="anonymous"></script>
</html><?php /**PATH C:\wamp64\www\Maisonneuve2194679\resources\views/layout.blade.php ENDPATH**/ ?>