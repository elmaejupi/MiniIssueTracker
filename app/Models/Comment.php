<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $fillable = [
        'issue_id',
        'author_name',
        'body',
    ];

    //comment belongs to an issue
    public function issue()
    {
        return $this->belongsTo(Issue::class);
    }
}
