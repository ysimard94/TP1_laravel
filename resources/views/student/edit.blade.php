@extends('layout')
@section('title', 'Mettre à jour')
@section('content')
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
                    @if(session('success'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>{{session('success')}}</strong> 
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                    @endif
                    <form  method="post">
                        @csrf
                        @method('PUT')
                        <div class="card-body">   
                                <div class="col-12">
                                    <label for="name">Name</label>
                                    <input type="text" id="name" name="name" class="form-control" value="{{ $student->name}}">
                                </div>
                                <div class="col-12 mt-3">
                                    <label for="email">Email</label>
                                    <input type="text" id="email" name="email" class="form-control" value="{{ $student->email}}">
                                </div>
                                <div class="col-12 mt-3">
                                    <label for="address">Address</label>
                                    <input type="text" id="address" name="address" class="form-control" value="{{ $student->address}}">
                                </div>
                                <div class="col-12 mt-3">
                                    <label for="phone">Phone</label>
                                    <input type="text" id="phone" name="phone" class="form-control" value="{{ $student->phone}}">
                                </div>
                                <div class="col-12 mt-3">
                                    <label for="city_id">City</label>
                                    <br>
                                    <select name="city_id" id="city_id" class="form-select">
                                        @foreach($cities as $city)
                                            @if ($student->city_id == $city->id)
                                                <option value="{{$city->id}}" selected>{{$city->name}}</option>
                                            @else
                                                <option value="{{$city->id}}">{{$city->name}}</option>
                                            @endif
                                        @endforeach
                                    </select>
                                </div>
                                <input type="submit" class="btn btn-outline-success w-100 mt-3" value="Submit">      
                        </div>
                    </form>
                    <form method="post" action="{{ route('student.destroy',$student->id) }}">
                        @method('delete')
                        @csrf
                        <button type="submit" class="btn btn-danger w-100">Delete</button>
                    </form>
                </div>
            </div>
        </div>
</div><!--/container-->

@endsection