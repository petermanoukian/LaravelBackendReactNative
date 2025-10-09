<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSubcatRequest;
use App\Models\Cat;
use App\Models\Subcat;
use Illuminate\Http\Request;

//use App\Http\Requests\StoreCatRequest;
use Illuminate\Support\Facades\Log;

class SubcatController extends Controller
{
    public function storeadmin(StoreSubcatRequest $request)
    {
        $data = $request->validated();
        $catid = $data['catid'];
        $name = $data['name'];

        $exists = Subcat::where('catid', $catid)
                        ->where('name', $name)
                        ->exists();

        if ($exists) {
            return response()->json([
                'message' => 'Subcategory already exists for this category',
            ], 409);
        }

        $subcat = Subcat::create([
            'catid' => $catid,
            'name' => $name,
        ]);

        return response()->json($subcat, 201);
    }

}
