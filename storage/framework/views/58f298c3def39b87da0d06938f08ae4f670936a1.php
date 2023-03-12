
<?php $__env->startSection('title', 'Mettre à jour'); ?>
<?php $__env->startSection('content'); ?>
<div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-5">
                    <?php echo e($student->name); ?>'s information
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form  method="post">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('PUT'); ?>
                        <div class="card-body">
                                <p>Name : <?php echo e($student->name); ?></p>
                                <p>Email : <?php echo e($student->email); ?></p>
                                <p>Address : <?php echo e($student->address); ?></p>
                                <p>City : <?php echo e($student->email); ?></p>
                                <p>Phone : <?php echo e($student->phone); ?></p>

                                <a href="<?php echo e(route('student.edit', $student->id)); ?>" class="btn btn-outline-success">Edit</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</div><!--/container-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\Maisonneuve2194679\resources\views/student/show.blade.php ENDPATH**/ ?>