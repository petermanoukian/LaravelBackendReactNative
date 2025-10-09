<?php

namespace App\Services;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Log;


class FileUploader
{
    public function handleUpload(
    Request $request,
    string $folderName,
    string $baseFileName,
    string $randomSuffix,
    array $allowedExtensions = ['jpg', 'jpeg', 'png', 'gif', 'webp', 'pdf', 'txt', 'doc', 'docx']
): ?array {
    Log::info('📥 FileUploader triggered');

    if (!$request->hasFile('filer')) {
        Log::warning('🚫 No file received under "filer"');
        return [
            'path' => '19',
            'original' => '20',
        ];
    }

    $file = $request->file('filer');
    Log::info('📄 File received', [
        'originalName' => $file->getClientOriginalName(),
        'mimeType' => $file->getMimeType(),
        'extension' => $file->getClientOriginalExtension(),
    ]);

    $extension = strtolower($file->getClientOriginalExtension());

    if (!in_array($extension, $allowedExtensions)) {
        Log::warning('❌ File extension not allowed', ['extension' => $extension]);
        return [
            'path' => '30',
            'original' => '31',
        ];
    }

    $baseFileName = str_replace(' ', '-', $baseFileName);
    $fileName = $baseFileName . '-' . $randomSuffix . '.' . $extension;
    $relativePath = "{$folderName}/{$fileName}";
    $absolutePath = public_path($relativePath);

    if (!file_exists(public_path($folderName))) {
        mkdir(public_path($folderName), 0777, true);
        Log::info('📁 Created folder', ['folder' => public_path($folderName)]);
    }

    $file->move(public_path("{$folderName}/"), $fileName);
    Log::info('✅ File moved', ['path' => $relativePath]);

    return [
        'path' => $relativePath,
        'original' => $file->getClientOriginalName(),
    ];
}
}

