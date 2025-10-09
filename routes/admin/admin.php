<?php
use Illuminate\Support\Facades\Route;

//routes\superadmin.php
Route::prefix('admin')
    ->group(function () {

        require __DIR__ . '/cats.php';
        require __DIR__ . '/subcats.php';

    });