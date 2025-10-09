<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Support\Facades\Log;

class StoreSubcatRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:255'],
            'catid' => ['required', 'integer', 'exists:cats,id'],
        ];
    }

    protected function failedValidation(Validator $validator)
    {
        Log::warning('🚫 Subcat validation failed', [
            'errors' => $validator->errors()->toArray(),
            'name' => $this->input('name'),
            'catid' => $this->input('catid'),
        ]);

        throw new HttpResponseException(response()->json([
            'message' => 'Validation error',
            'errors' => $validator->errors(),
        ], 422));
    }
}
