<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;

class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name', 'email', 'password',
    ];

    protected $hidden = ['password', 'remember_token'];

    // Relationships
    public function issues()
    {
        return $this->hasMany(Issue::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}
