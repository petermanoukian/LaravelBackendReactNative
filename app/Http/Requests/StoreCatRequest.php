<?php
namespace App\Http\Requests;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Support\Facades\Log;

class StoreCatRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array 
    {
      return [
            'name' => ['required', 'string', 'max:255'],
            'img' => ['nullable', 'file', 'mimetypes:image/jpeg,image/jpg,image/png,image/gif,image/webp', 'max:20480'], // 20 MB
            'filer' => ['nullable', 'file', 'mimetypes:image/jpeg,image/jpg,image/png,image/webp,image/gif,application/pdf,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'max:40960'], // 40 MB
        ];

    }

    protected function failedValidation(Validator $validator)
    {
        Log::warning('🚫 Validation failed', [
            'errors' => $validator->errors()->toArray(),
            'img_mime' => $this->file('img')?->getMimeType(),
            'img_ext' => $this->file('img')?->getClientOriginalExtension(),
            'img_name' => $this->file('img')?->getClientOriginalName(),
            'filer_mime' => $this->file('filer')?->getMimeType(),
            'filer_ext' => $this->file('filer')?->getClientOriginalExtension(),
            'filer_name' => $this->file('filer')?->getClientOriginalName(),
        ]);

        throw new HttpResponseException(response()->json([
            'message' => 'Validation error',
            'errors' => $validator->errors(),
        ], 422));
    }
}

