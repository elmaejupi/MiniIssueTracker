<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Issue extends Model
{
    use HasFactory;

    protected $fillable = [
        'project_id',
        'title',
        'description',
        'status',
        'priority',
        'due_date',
    ];

    //issue belongs to a project
    public function project()
    {
        return $this->belongsTo(Project::class);
    }

    //issue has many comments
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    //issue belongs to many tags
    public function tags()
    {
        return $this->belongsToMany(Tag::class, 'issue_tag');
    }
}
