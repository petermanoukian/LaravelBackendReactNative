<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreProdRequest;
use App\Services\CategoryService;
use App\Services\SubcategoryService;
use App\Models\Cat;
use App\Models\Subcat;
use App\Models\Prod;
use Illuminate\Http\Request;
use App\Services\ImageUploader;
use App\Services\FileUploader;
use Illuminate\Support\Facades\DB;

use Illuminate\Support\Facades\Log;


class ProdController extends Controller
{


    public function viewadmin(Request $request, $catid = null, $subcatid = null)
    {
        $search = trim($request->query('search', ''));
        $orderBy = $request->query('sort', 'id');
        $directionRaw = strtolower($request->query('direction', 'desc'));
        $direction = in_array($directionRaw, ['asc', 'desc']) ? $directionRaw : 'desc';

        $limit = max(1, min(100, intval($request->query('limit', 10))));
        $page = max(1, intval($request->query('page', 1)));


        $queryCatidRaw = $request->query('catid', null);
        $activeCatid = ($queryCatidRaw === '')
            ? null
            : (($queryCatidRaw !== null && intval($queryCatidRaw) > 0)
                ? intval($queryCatidRaw)
                : (($catid !== null && intval($catid) > 0) ? intval($catid) : null));

 
        $querySubcatidRaw = $request->query('subcatid', null);
        $activeSubcatid = ($querySubcatidRaw === '')
            ? null
            : (($querySubcatidRaw !== null && intval($querySubcatidRaw) > 0)
                ? intval($querySubcatidRaw)
                : (($subcatid !== null && intval($subcatid) > 0) ? intval($subcatid) : null));

        $query = Prod::with(['prodcat:id,name', 'prodsubcat:id,name'])
            ->select('id', 'catid', 'subcatid', 'name', 'coder', 'vis', 'img', 'img2');

        if ($search !== '') {
            $query->where('name', 'like', '%' . $search . '%');
        }

        if ($activeCatid !== null) {
            $query->where('catid', $activeCatid);
        }

        if ($activeSubcatid !== null) {
            $query->where('subcatid', $activeSubcatid);
        }

        DB::enableQueryLog();
        $query->orderBy($orderBy, $direction);
        $prods = $query->skip(($page - 1) * $limit)->take($limit)->get();
        $queryLog = DB::getQueryLog();

        $cats = CategoryService::getCategories();
        $subcats = SubcategoryService::getSubcategories($activeCatid);

        return response()->json([
            'prods' => $prods,
            'cats' => $cats,
            'subcats' => $subcats,
            'query' => $queryLog,
            'filters' => [
                'catid' => $activeCatid,
                'subcatid' => $activeSubcatid,
            ],
        ]);
    }

    public function checkadminname(Request $request)
    {
            $name = trim($request->input('name', ''));
            
            $catid = intval($request->input('catid', 0)); 
            $subcatid = intval($request->input('subcatid', 0)); 

            if (strlen($name) <= 1 || $catid <= 0 || $subcatid <= 0) {
                return;
            }

            $exists = Prod::where('name', $name)
                        ->where('catid', $catid)
                        ->where('subcatid', $subcatid)
            
                        ->exists();

            return response()->json([
                'checkable' => true,
                'exists' => $exists,
                'name' => $name
            ]);
    }




    public function checkeditadminname(Request $request)
    {
        $name = trim($request->input('name', ''));
        $id = intval($request->input('id', 0));
        $catid = intval($request->input('catid', 0));
        $subcatid = intval($request->input('subcatid', 0));

        if (strlen($name) <= 1 || $id <= 0 || $catid <= 0 || $subcatid <= 0) {
            return;
        }

        $exists = Prod::where('name', $name)
                    ->where('catid', $catid)
                    ->where('subcatid', $subcatid)
                    ->where('id', '!=', $id)
                    ->exists();

        return response()->json([
            'checkable' => true,
            'exists' => $exists,
            'name' => $name
        ]);
    }


    public function checkadmincoder(Request $request)
    {
        $coder = trim($request->input('coder', ''));

        if (strlen($coder) <= 1) {
            return;
        }

        $exists = Prod::where('coder', $coder)->exists();

        return response()->json([
            'checkable' => true,
            'exists' => $exists,
            'coder' => $coder,
        ]);
    }


    public function checkeditadmincoder(Request $request)
    {
        $coder = trim($request->input('coder', ''));
        $id = intval($request->input('id', 0));

        if (strlen($coder) <= 1 || $id <= 0) {
            return;
        }

        $exists = Prod::where('coder', $coder)
                    ->where('id', '!=', $id)
                    ->exists();

        return response()->json([
            'checkable' => true,
            'exists' => $exists,
            'coder' => $coder,
        ]);
    }



    public function createadmin($catid = null, $subcatid = null)
    {
        // Resolve catid
        $queryCatidRaw = request()->query('catid', null);
        $activeCatid = ($queryCatidRaw === '')
            ? null
            : (($queryCatidRaw !== null && intval($queryCatidRaw) > 0)
                ? intval($queryCatidRaw)
                : (($catid !== null && intval($catid) > 0) ? intval($catid) : null));

        // Resolve subcatid
        $querySubcatidRaw = request()->query('subcatid', null);
        $activeSubcatid = ($querySubcatidRaw === '')
            ? null
            : (($querySubcatidRaw !== null && intval($querySubcatidRaw) > 0)
                ? intval($querySubcatidRaw)
                : (($subcatid !== null && intval($subcatid) > 0) ? intval($subcatid) : null));

        $cats = CategoryService::getCategories();
        $subcats = $activeCatid !== null
            ? SubcategoryService::getSubcategories($activeCatid)
            : [];

        return response()->json([
            'cats' => $cats,
            'subcats' => $subcats,
            'catid' => $activeCatid,
            'subcatid' => $activeSubcatid,
        ]);
    }


    public function editadmin($id)
    {
        $row = Prod::with(['prodcat:id,name', 'prodsubcat:id,name'])->findOrFail($id);

        // Resolve catid from query or fallback to row
        $queryCatidRaw = request()->query('catid', null);
        $activeCatid = ($queryCatidRaw === '')
            ? null
            : (($queryCatidRaw !== null && intval($queryCatidRaw) > 0)
                ? intval($queryCatidRaw)
                : ($row->catid > 0 ? $row->catid : null));

        $cats = CategoryService::getCategories();
        $subcats = $activeCatid !== null
            ? SubcategoryService::getSubcategories($activeCatid)
            : [];

        return response()->json([
            'row' => $row,
            'cats' => $cats,
            'subcats' => $subcats,
        ]);
    }



    public function storeadmin(StoreProdRequest $request, ImageUploader $imageUploader, FileUploader $fileUploader)
    {
        $data = $request->validated();
        $prodName = $data['name'];
        $catid = intval($data['catid']);
        $subcatid = intval($data['subcatid']);
        $coder = trim($data['coder']);

        // 🔒 Uniqueness check
        $exists = Prod::where('name', $prodName)
                    ->where('catid', $catid)
                    ->where('subcatid', $subcatid)
                    ->orWhere('coder', $coder)
                    ->exists();

        if ($exists) {
            return response()->json([
                'message' => 'Product already exists (name/catid/subcatid or coder)',
            ], 409);
        }

        $randomSuffix = uniqid();

        // 🖼️ Image upload
        $imageResult = $request->hasFile('img')
            ? $imageUploader->handleUpload(
                $request,
                folderName: 'images/prod',
                baseFileName: $prodName,
                randomSuffix: $randomSuffix,
                maxWidth: 1500,
                maxHeight: 1000,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'webp']
            )
            : null;

        // 📎 File upload
        $fileResult = $request->hasFile('filer')
            ? $fileUploader->handleUpload(
                $request,
                folderName: 'files/prod',
                baseFileName: $prodName,
                randomSuffix: $randomSuffix,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'webp', 'pdf', 'txt', 'doc', 'docx']
            )
            : 'nofile';

        // 🧱 Create product
        $prod = Prod::create([
            'name' => $prodName,
            'catid' => $catid,
            'subcatid' => $subcatid,
            'coder' => $coder,
            'vis' => $data['vis'] ?? 'yes',
            'des' => $data['des'] ?? null,
            'dess' => $data['dess'] ?? null,
            'img' => $imageResult['image'] ?? null,
            'img2' => $imageResult['thumb'] ?? null,
            'filer' => $fileResult['path'] ?? null,
        ]);

        return response()->json($prod, 201);
    }


    public function updateadmin($id, StoreProdRequest $request, ImageUploader $imageUploader, FileUploader $fileUploader)
    {
        $prod = Prod::findOrFail($id);
        $data = $request->validated();

        $prodName = $data['name'];
        $catid = intval($data['catid']);
        $subcatid = intval($data['subcatid']);
        $coder = trim($data['coder']);

        // 🔒 Uniqueness check (excluding current record)
        $exists = Prod::where(function ($query) use ($prodName, $catid, $subcatid) {
                        $query->where('name', $prodName)
                            ->where('catid', $catid)
                            ->where('subcatid', $subcatid);
                    })
                    ->orWhere(function ($query) use ($coder) {
                        $query->where('coder', $coder);
                    })
                    ->where('id', '!=', $id)
                    ->exists();

        if ($exists) {
            return response()->json([
                'message' => 'Product already exists (name/catid/subcatid or coder)',
            ], 409);
        }

        $randomSuffix = uniqid();

        // 🖼️ Image upload
        $imageResult = $request->hasFile('img')
            ? $imageUploader->handleUpload(
                $request,
                folderName: 'images/prod',
                baseFileName: $prodName,
                randomSuffix: $randomSuffix,
                maxWidth: 1500,
                maxHeight: 1000,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'webp']
            )
            : null;

        // 📎 File upload
        $fileResult = $request->hasFile('filer')
            ? $fileUploader->handleUpload(
                $request,
                folderName: 'files/prod',
                baseFileName: $prodName,
                randomSuffix: $randomSuffix,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'webp', 'pdf', 'txt', 'doc', 'docx']
            )
            : 'nofile';

        // 🧱 Update product
        $prod->update([
            'name' => $prodName,
            'catid' => $catid,
            'subcatid' => $subcatid,
            'coder' => $coder,
            'vis' => $data['vis'] ?? 'yes',
            'des' => $data['des'] ?? null,
            'dess' => $data['dess'] ?? null,
            'img' => $imageResult['image'] ?? $prod->img,
            'img2' => $imageResult['thumb'] ?? $prod->img2,
            'filer' => $fileResult['path'] ?? $prod->filer,
        ]);

        return response()->json($prod);
    }

    public function destroyadmin($id)
    {
        $prod = Prod::findOrFail($id);
        $prod->delete();

        return response()->json(['deleted' => true, 'id' => $id]);
    }

    public function destroyManyadmin(Request $request)
    {
        $ids = $request->input('ids', []);

        if (!is_array($ids) || empty($ids)) {
            return response()->json(['deleted' => false, 'message' => 'No IDs provided'], 422);
        }

        Prod::whereIn('id', $ids)->delete();

        return response()->json(['deleted' => true, 'ids' => $ids]);
    }


}
