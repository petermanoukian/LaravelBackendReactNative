<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\ProdController;

Route::get('/prods/view/{catid?}/{subcatid?}', [ProdController::class, 'viewadmin'])->name('adminsubcat.view');
Route::get('/prod/create/{catid?}/{subcatid?}', [ProdController::class, 'createadmin']);
Route::post('/prod/add', [ProdController::class, 'storeadmin']);
Route::post('/prod/check', [ProdController::class, 'checkadminname']);
Route::post('/prod/checkcode', [ProdController::class, 'checkadmincoder']);
Route::get('/prod/edit/{id}', [ProdController::class, 'editadmin'])->name('adminsubcat.edit');
Route::match(['post', 'put'], '/prod/update/{id}', [ProdController::class, 'updateadmin']);
Route::post('/prod/checkedit', [ProdController::class, 'checkeditadmin']);
Route::post('/prod/checkcodeedit', [ProdController::class, 'checkeditadmincoder']);
Route::delete('/prod/delete/{id}', [ProdController::class, 'destroyadmin']);
Route::post('/subcats/deletemany', [ProdController::class, 'destroyManyadmin']);