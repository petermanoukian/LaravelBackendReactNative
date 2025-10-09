<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Models\Cat;
use App\Models\Subcat;
use Illuminate\Http\Request;
use App\Services\ImageUploader;
use App\Services\FileUploader;
use App\Http\Requests\StoreCatRequest;
use Illuminate\Support\Facades\Log;

class CatController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function viewadmin(Request $request)
    {
        $search = trim($request->query('search', ''));
        $orderBy = $request->query('sort', 'id');
        $direction = strtolower($request->query('direction', 'desc')) === 'asc' ? 'asc' : 'desc';
        $perPage = max(1, min(100, intval($request->query('per_page', 10))));
        $query = Cat::select('id as idx', 'name', 'img', 'img2', 'filer');

        if ($search !== '') {
            $query->where('name', 'like', '%' . $search . '%');
        }

        $cats = $query->orderBy($orderBy, $direction)->paginate($perPage);

        return response()->json($cats);
    }



    public function getCatsAdmin($catid = null)
    {
        $query = Cat::select('id', 'name')->orderBy('name', 'asc');
        $cats = $query->get();
        return response()->json($cats);
    }




    public function checkadmin(Request $request)
    {
        $name = trim($request->input('name', ''));

        if (strlen($name) <= 1) {
            return; // Stay silent, no response
        }

        $exists = Cat::where('name', $name)->exists();

        return response()->json([
            'checkable' => true,
            'exists' => $exists,
            'name' => $name,
        ]);
    }

    public function checkeditadmin(Request $request)
    {
        $name = trim($request->input('name', ''));
        $id = $request->input('id');

        if (strlen($name) <= 1) 
        {
            return; 
        }

        $exists = Cat::where('name', $name)
            ->where('id', '!=', $id)
            ->exists();

        return response()->json([
            'checkable' => true,
            'exists' => $exists,
            'name' => $name,
        ]);
    }





    public function storeadmin(StoreCatRequest $request,ImageUploader $imageUploader, FileUploader $fileUploader) 
    {
        /*
        Log::info('🧾 Incoming file metadata', [
            'img_mime' => $request->file('img')?->getMimeType(),
            'img_ext' => $request->file('img')?->getClientOriginalExtension(),
            'img_name' => $request->file('img')?->getClientOriginalName(),
            'filer_mime' => $request->file('filer')?->getMimeType(),
            'filer_ext' => $request->file('filer')?->getClientOriginalExtension(),
            'filer_name' => $request->file('filer')?->getClientOriginalName(),
        ]);
        */
        
        $data = $request->validated();
        $catName = $data['name'];

        $exists = Cat::where('name', $catName)->exists();

        if ($exists) {
            return response()->json([
                'message' => 'Category already exists',
            ], 409);
        }

        $randomSuffix = uniqid();

        // Image upload
        $imageResult = $request->hasFile('img')
            ? $imageUploader->handleUpload(
                $request,
                folderName: 'images/cat',
                baseFileName: $catName,
                randomSuffix: $randomSuffix,
                maxWidth: 1500,
                maxHeight: 1000,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'webp']
            )
            : null;

        // File upload
        $fileResult = $request->hasFile('filer')
            ? $fileUploader->handleUpload(
                $request,
                folderName: 'files/cat',
                baseFileName: $catName,
                randomSuffix: $randomSuffix,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'webp', 'pdf', 'txt', 'doc', 'docx']
            )
            : 'nofile';
        
        //Log::info('Filer received:', [$request->file('filer')]);
        //Log::info('File result:', [$fileResult]);    
        
        $cat = Cat::create([
            'name' => $catName,
            'img' => $imageResult['image'] ?? null,
            'img2' => $imageResult['thumbnail'] ?? null,
            'filer' => $fileResult['path'] ?? null,

        ]);

        return response()->json($cat, 201);
    }

    public function editadmin($id)
    {
        $row = Cat::findOrFail($id);
        return response()->json($row);
    }

    public function updateadmin(
        StoreCatRequest $request,
        ImageUploader $imageUploader,
        FileUploader $fileUploader,
         $id
    ) {
        $cat = Cat::findOrFail($id);
        $data = $request->validated();
        $catName = $data['name'];
        $randomSuffix = uniqid();


    Log::info("🔧 Update request received for category ID: $id");
    Log::info("Validated data:", $request->validated());

    Log::info("Has image?", [$request->hasFile('img')]);
    Log::info("Has file?", [$request->hasFile('file')]);



        // Image upload
        $imageResult = $request->hasFile('img')
            ? $imageUploader->handleUpload(
                $request,
                folderName: 'images/cat/img',
                baseFileName: $catName,
                randomSuffix: $randomSuffix,
                maxWidth: 1500,
                maxHeight: 1000,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'webp']
            )
            : null;

        // File upload
        $fileResult = $request->hasFile('filer')
            ? $fileUploader->handleUpload(
                $request,
                folderName: 'files/cat',
                baseFileName: $catName,
                randomSuffix: $randomSuffix,
                allowedExtensions: ['jpg', 'jpeg', 'png', 'gif', 'webp', 'pdf', 'txt', 'doc', 'docx']
            )
            : null;

        // Update Cat record
        $cat->update([
            'name' => $catName,
            'img' => $imageResult['image'] ?? $cat->img,
            'img2' => $imageResult['thumbnail'] ?? $cat->img,
            'filer' => $fileResult['path'] ?? $cat->filer,

        ]);

        return response()->json($cat);
    }



    public function destroyadmin($id)
    {
        $cat = Cat::findOrFail($id);
        $cat->delete();

        return response()->json(['deleted' => true, 'id' => $id]);
    }


    public function destroyManyadmin(Request $request)
    {
        $ids = $request->input('ids', []);

        if (!is_array($ids) || empty($ids)) {
            return response()->json(['deleted' => false, 'message' => 'No IDs provided'], 422);
        }

        Cat::whereIn('id', $ids)->delete();

        return response()->json(['deleted' => true, 'ids' => $ids]);
    }


}
