<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;

    protected $fillable = [
        'issue_id',
        'user_id',   
        'body',
    ];

    // Comment belongs to an issue
    public function issue()
    {
        return $this->belongsTo(Issue::class);
    }

    // Comment belongs to a user
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
