<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use App\Models\Cat;

class Subcat extends Model
{
    
    protected $fillable = [
        'name',
        'catid',
    ];
    
    
    public function cat(): BelongsTo
    {
        return $this->belongsTo(Cat::class, 'catid');
    }

    

}
