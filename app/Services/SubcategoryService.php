<?php

namespace App\Services;

use App\Models\Subcat;

class SubcategoryService
{
    public static function getSubcategories(?int $catid = null)
    {
        $query = Subcat::select('id', 'name', 'catid')
                       ->orderBy('name', 'asc');

        if ($catid !== null && $catid > 0) {
            $query->where('catid', $catid);
        }

        return $query->get();
    }
}
