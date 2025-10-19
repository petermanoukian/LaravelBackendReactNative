<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Support\Facades\Log;
use Illuminate\Validation\Rule;

class UpdateProdRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        $id = $this->route('id'); // ✅ pulled from route /admin/prod/update/{id}

        return [
            'catid' => ['required', 'integer', 'exists:cats,id'],
            'subcatid' => ['required', 'integer', 'exists:subcats,id'],
            'name' => ['required', 'string', 'max:255'],
            'coder' => [
                'required',
                'string',
                'max:255',
                Rule::unique('prods', 'coder')->ignore($id),
            ],
            'vis' => ['required', 'in:yes,no'],
            'des' => ['nullable', 'string'],
            'dess' => ['nullable', 'string'],
            'img' => ['nullable', 'file', 'mimetypes:image/jpeg,image/jpg,image/png,image/gif,image/webp', 'max:20480'],
            'filer' => ['nullable', 'file', 'mimetypes:image/jpeg,image/jpg,image/png,image/webp,image/gif,application/pdf,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document', 'max:40960'],
        ];
    }

    public function messages(): array
    {
        return [
            'catid.required' => 'Category is required.',
            'subcatid.required' => 'Subcategory is required.',
            'coder.unique' => 'This product code already exists.',
            'vis.in' => 'Visibility must be either "yes" or "no".',
        ];
    }

    protected function failedValidation(Validator $validator)
    {
        Log::warning('🚫 Update validation failed', [
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
