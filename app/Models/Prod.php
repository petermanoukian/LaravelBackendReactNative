<?php
namespace App\Models;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;
use App\Models\Cat;
use App\Models\Subcat;

class Prod extends Model
{
    protected $fillable = [
        'catid','subcatid',
        'name', 'coder', 'vis', 'des','dess',
        'img',
        'img2',
        'filer',
    ];

    public function prodcat(): BelongsTo
    {
        return $this->belongsTo(Cat::class, 'catid');
    }

    public function prodsubcat(): BelongsTo
    {
        return $this->belongsTo(Subcat::class, 'subcatid');
    }

}
