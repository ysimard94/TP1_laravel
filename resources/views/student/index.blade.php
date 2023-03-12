@extends('layout')
@section('title', 'Student list')
@section('content')
    <div class="container">
        <div class="row mt-5">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        Student list
                    </div>
                    <div class="card-body">
                        <ul>
                            @forelse($students as $student)
                                <li class="mt-2">{{ $student->name }} <a href="{{ route('student.show', $student->id)}}" class="btn btn-outline-success">See more</a></li>
                            @empty
                                <li>There are currently no students enlisted</li>
                            @endforelse
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection