
<?php $__env->startSection('title', 'Create'); ?>
<?php $__env->startSection('content'); ?>
<div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-5">
                    Create a new student
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form  action="<?php echo e(route('student.create')); ?>" method="post">
                        <?php echo csrf_field(); ?>
                        <div class="card-body">   
                            <div class="col-12">
                                <label for="name">Name</label>
                                <input type="text" id="name" name="name" class="form-control">
                            </div>
                            <div class="col-12 mt-3">
                                <label for="email">Email</label>
                                <input type="text" id="email" name="email" class="form-control">
                            </div>
                            <div class="col-12 mt-3">
                                <label for="address">Address</label>
                                <input type="text" id="address" name="address" class="form-control">
                            </div>
                            <div class="col-12 mt-3">
                                <label for="phone">Phone</label>
                                <input type="text" id="phone" name="phone" class="form-control">
                            </div>
                            <div class="col-12 mt-3">
                                <label for="city_id">City</label>
                                <br>
                                <select name="city_id" id="city_id" class="form-select">
                                    <?php $__currentLoopData = $cities; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $city): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option value="<?php echo e($city->id); ?>"><?php echo e($city->name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                            </div>
                            <input type="submit" class="btn btn-outline-success w-100 mt-3" value="Submit">
                    </div>
                    </form>
                </div>
            </div>
        </div>
</div><!--/container-->

<?php $__env->stopSection(); ?>



<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\wamp64\www\Maisonneuve2194679\resources\views/student/create.blade.php ENDPATH**/ ?>