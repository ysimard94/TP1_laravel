@extends('layout')
@section('title', 'Mettre à jour')
@section('content')
<div class="container">
        <div class="row">
            <div class="col-12 text-center pt-2">
                <h1 class="display-5">
                    {{ $student->name }}'s information
                </h1>
            </div> <!--/col-12-->
        </div><!--/row-->
                <hr>
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card">
                    <form  method="post">
                        @csrf
                        @method('PUT')
                        <div class="card-body">
                                <p>Name : {{ $student->name }}</p>
                                <p>Email : {{ $student->email }}</p>
                                <p>Address : {{ $student->address }}</p>
                                <p>City : {{ $student->email }}</p>
                                <p>Phone : {{ $student->phone }}</p>

                                <a href="{{ route('student.edit', $student->id)}}" class="btn btn-outline-success">Edit</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
</div><!--/container-->

@endsection