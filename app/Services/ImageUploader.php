<?php

namespace App\Services;

use Illuminate\Http\Request;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;

class ImageUploader
{
    public function handleUpload(
    Request $request,
    string $folderName,
    string $baseFileName,
    string $randomSuffix,
    int $maxWidth = 1500,
    int $maxHeight = 1000,
    array $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif','webp']
): ?array 
{
    if (!$request->hasFile('img')) {
        return null;
    }

    $imgFile = $request->file('img');
    $imgExtension = strtolower($imgFile->getClientOriginalExtension());

    if (!in_array($imgExtension, $allowedExtensions)) {
        return null;
    }

    $baseFileName = str_replace(' ', '-', $baseFileName);
    $imgName = $baseFileName . '-' . $randomSuffix . '.' . $imgExtension;

    // ✅ Corrected paths
    $relativeImagePath = "{$folderName}/large/{$imgName}";
    $relativeThumbPath = "{$folderName}/thumb/{$imgName}";

    $originalPath = public_path($relativeImagePath);
    $thumbPath = public_path($relativeThumbPath);

    // ✅ Ensure folders exist
    if (!file_exists(public_path("{$folderName}/large"))) {
        mkdir(public_path("{$folderName}/large"), 0777, true);
    }

    if (!file_exists(public_path("{$folderName}/thumb"))) {
        mkdir(public_path("{$folderName}/thumb"), 0777, true);
    }

    $manager = new ImageManager(new Driver());
    $image = $manager->read($imgFile->getPathname());

    if ($image->width() > $maxWidth || $image->height() > $maxHeight) {
        $image->resize($maxWidth, $maxHeight, function ($constraint) {
            $constraint->aspectRatio();
            $constraint->upsize();
        });
    }

    $image->save($originalPath);
    $manager->read($imgFile->getPathname())->cover(200, 200)->save($thumbPath);

    return [
        'image' => $relativeImagePath,
        'thumb' => $relativeThumbPath,
    ];
}

}


