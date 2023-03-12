<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\CityController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [StudentController::class, 'index'])->name('student.index');

Route::get('student', [StudentController::class, 'index'])->name('student.index');
Route::get('student/create', [StudentController::class, 'create'])->name('student.create');
Route::post('student/create', [StudentController::class, 'store'])->name('student.store');
Route::get('student/show/{student}', [StudentController::class, 'show'])->name('student.show');
Route::get('student/edit/{student}', [StudentController::class, 'edit'])->name('student.edit');
Route::delete('student/edit/{student}', [StudentController::class, 'destroy'])->name('student.destroy');
Route::put('student/edit/{student}', [StudentController::class, 'update'])->name('student.update');

Route::get('city', [CityController::class, 'index'])->name('city.index');

