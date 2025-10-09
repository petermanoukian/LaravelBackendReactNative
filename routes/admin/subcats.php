<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\SubcatController;

Route::get('/subcats/view/{catid?}', [SubcatController::class, 'viewadmin'])->name('adminsubcat.view');
Route::post('/subcat/create/{catid?}', [SubcatController::class, 'createadmin']);
Route::post('/subcat/add', [SubcatController::class, 'storeadmin']);
Route::post('/subcat/check', [SubcatController::class, 'checkadmin']);
Route::get('/subcat/edit/{id}', [SubcatController::class, 'editadmin'])->name('adminsubcat.edit');
Route::match(['post', 'put'], '/subcat/update/{id}', [SubcatController::class, 'updateadmin']);
Route::post('/subcat/checkedit', [SubcatController::class, 'checkeditadmin']);
Route::delete('/subcat/delete/{id}', [SubcatController::class, 'destroyadmin']);
Route::post('/subcats/deletemany', [SubcatController::class, 'destroyManyadmin']);
