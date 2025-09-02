<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreIssueRequest extends FormRequest
{
    //to determine if the user is authorized to make this request
    public function authorize(): bool
    {
        return false;
    }

    
    public function rules(): array
    {
        return [
            //
        ];
    }
}
