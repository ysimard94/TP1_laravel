@extends('layout')
@section('title', 'Create')
@section('content')
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
                    <form  action="{{ route('student.create') }}" method="post">
                        @csrf
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
                                    @foreach($cities as $city)
                                        <option value="{{$city->id}}">{{$city->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <input type="submit" class="btn btn-outline-success w-100 mt-3" value="Submit">
                    </div>
                    </form>
                </div>
            </div>
        </div>
</div><!--/container-->

@endsection


