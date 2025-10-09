<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreSubcatRequest;
use App\Services\CategoryService;
use App\Models\Cat;
use App\Models\Subcat;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Log;

class SubcatController extends Controller
{
    
    public function viewadmin(Request $request, $catid = null)
    {
        $search = trim($request->query('search', ''));
        $orderBy = $request->query('sort', 'id');
        $direction = strtolower($request->query('direction', 'desc')) === 'asc' ? 'asc' : 'desc';
        $perPage = max(1, min(100, intval($request->query('per_page', 10))));

        // Override logic: prefer route param if valid, else fallback to query param
        $queryCatid = intval($request->query('catid', 0));
        $activeCatid = ($catid !== null && $catid !== '' && intval($catid) > 0)
            ? intval($catid)
            : ($queryCatid > 0 ? $queryCatid : null);

        $query = Subcat::with('cat')->select('id as idx', 'catid', 'name');

        if ($search !== '') {
            $query->where('name', 'like', '%' . $search . '%');
        }

        if ($activeCatid !== null) {
            $query->where('catid', $activeCatid);
        }

        $subcats = $query->orderBy($orderBy, $direction)->paginate($perPage);
        $cats = CategoryService::getDropdownOptions();

        return response()->json([
            'subcats' => $subcats,
            'cats' => $cats,
        ]);
    }


    public function checkadmin(Request $request)
    {
        $name = trim($request->input('name', ''));
        $catid = intval($request->input('catid', 0));

        if (strlen($name) <= 1 || $catid <= 0) {
            return; // Stay silent, no response
        }

        $exists = Subcat::where('name', $name)
                        ->where('catid', $catid)
                        ->exists();

        return response()->json([
            'checkable' => true,
            'exists' => $exists,
            'name' => $name,
            'catid' => $catid,
        ]);
    }

    public function checkeditadmin(Request $request)
    {
        $name = trim($request->input('name', ''));
        $id = intval($request->input('id', 0));
        $catid = intval($request->input('catid', 0));
        if (strlen($name) <= 1 || $id <= 0 || $catid <= 0) 
        {
            return; 
        }
        $exists = Subcat::where('name', $name)
                        ->where('catid', $catid)
                        ->where('id', '!=', $id)
                        ->exists();

        return response()->json([
            'checkable' => true,
            'exists' => $exists,
            'name' => $name,
            'catid' => $catid,
        ]);
    }

    public function createadmin($catid = null)
    {
        $cats = CategoryService::getCategories();

        return response()->json([
            'cats' => $cats,
            'catid' => $catid,
        ]);
    }


    public function editadmin($id)
    {
        $row = Subcat::with('cat')->findOrFail($id);
        $cats = CategoryService::getDropdownOptions();

        return response()->json([
            'row' => $row,
            'cats' => $cats,
        ]);
    }

    
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


    public function updateadmin(StoreSubcatRequest $request, $id)
    {
        $data = $request->validated();
        $catid = $data['catid'];
        $name = $data['name'];

        $exists = Subcat::where('catid', $catid)
                        ->where('name', $name)
                        ->where('id', '!=', $id)
                        ->exists();

        if ($exists) {
            return response()->json([
                'message' => 'Subcategory already exists for this category',
            ], 409);
        }

        $subcat = Subcat::findOrFail($id);
        $subcat->update([
            'catid' => $catid,
            'name' => $name,
        ]);

        return response()->json($subcat);
    }

    public function destroyadmin($id)
    {
        $subcat = Subcat::findOrFail($id);
        $subcat->delete();

        return response()->json(['deleted' => true, 'id' => $id]);
    }


    public function destroyManyadmin(Request $request)
    {
        $ids = $request->input('ids', []);

        if (!is_array($ids) || empty($ids)) {
            return response()->json(['deleted' => false, 'message' => 'No IDs provided'], 422);
        }

        Subcat::whereIn('id', $ids)->delete();

        return response()->json(['deleted' => true, 'ids' => $ids]);
    }



}
