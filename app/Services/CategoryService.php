<?php

namespace App\Services;

use App\Models\Cat;

class CategoryService
{
    public static function getCategories()
    {
        return Cat::select('id', 'name')
                  ->orderBy('name', 'asc')
                  ->get();
    }
}

