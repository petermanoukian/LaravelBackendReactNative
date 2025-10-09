<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\CatController;

Route::get('/cats/view', [CatController::class, 'viewadmin'])->name('admincat.view');
Route::get('/cats/all/{catid?}', [CatController::class, 'getCatsAdmin']);
Route::post('/cat/create', [CatController::class, 'createadmin']);
Route::post('/cat/add', [CatController::class, 'storeadmin']);
Route::post('/cat/check', [CatController::class, 'checkadmin']);
Route::get('/cat/edit/{id}', [CatController::class, 'editadmin'])->name('admincat.edit');
Route::match(['post', 'put'], '/cat/update/{id}', [CatController::class, 'updateadmin']);

Route::post('/cat/checkedit', [CatController::class, 'checkeditadmin']);
Route::delete('/cat/delete/{id}', [CatController::class, 'destroyadmin']);
Route::post('/cats/deletemany', [CatController::class, 'destroyManyadmin']);