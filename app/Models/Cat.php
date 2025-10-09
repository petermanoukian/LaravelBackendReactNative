<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use App\Models\Subcat;


class Cat extends Model
{
    protected $fillable = [
        'name',
        'img',
        'img2',
        'filer',
    ];

    public function subcats(): HasMany
    {
        return $this->hasMany(Subcat::class, 'catid');
    }


}
