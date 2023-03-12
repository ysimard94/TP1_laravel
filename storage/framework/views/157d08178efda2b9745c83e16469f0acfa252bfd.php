
<?php $__env->startSection('title', 'Mettre à jour'); ?>
<?php $__env->startSection('content'); ?>
<div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-5">
                    Edit the student's information
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <?php if(session('success')): ?>
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong><?php echo e(session('success')); ?></strong> 
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                    <?php endif; ?>
                    <form  method="post">
                        <?php echo csrf_field(); ?>
                        <?php echo method_field('PUT'); ?>
                        <div class="card-body">   
                                <div class="col-12">
                                    <label for="name">Name</label>
                                    <input type="text" id="name" name="name" class="form-control" value="<?php echo e($student->name); ?>">
                                </div>
                                <div class="col-12 mt-3">
                                    <label for="email">Email</label>
                                    <input type="text" id="email" name="email" class="form-control" value="<?php echo e($student->email); ?>">
                                </div>
                                <div class="col-12 mt-3">
                                    <label for="address">Address</label>
                                    <input type="text" id="address" name="address" class="form-control" value="<?php echo e($student->address); ?>">
                                </div>
                                <div class="col-12 mt-3">
                                    <label for="phone">Phone</label>
                                    <input type="text" id="phone" name="phone" class="form-control" value="<?php echo e($student->phone); ?>">
                                </div>
                                <div class="col-12 mt-3">
                                    <label for="city_id">City</label>
                                    <br>
                                    <select name="city_id" id="city_id" class="form-select">
                                        <?php $__currentLoopData = $cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <?php if($student->city_id == $city->id): ?>
                                                <option value="<?php echo e($city->id); ?>" selected><?php echo e($city->name); ?></option>
                                            <?php else: ?>
                                                <option value="<?php echo e($city->id); ?>"><?php echo e($city->name); ?></option>
                                            <?php endif; ?>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </select>
                                </div>
                                <input type="submit" class="btn btn-outline-success w-100 mt-3" value="Submit">      
                        </div>
                    </form>
                    <form method="post" action="<?php echo e(route('student.destroy',$student->id)); ?>">
                        <?php echo method_field('delete'); ?>
                        <?php echo csrf_field(); ?>
                        <button type="submit" class="btn btn-danger w-100">Delete</button>
                    </form>
                </div>
            </div>
        </div>
</div><!--/container-->

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\Maisonneuve2194679\resources\views/student/edit.blade.php ENDPATH**/ ?>