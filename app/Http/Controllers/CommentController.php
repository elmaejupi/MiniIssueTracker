<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use App\Models\Issue;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    //to store a new comment
    public function store(Request $request, Issue $issue)
    {
        $request->validate([
            'author_name' => 'required|string|max:255',
            'body' => 'required|string',
        ]);

        $issue->comments()->create($request->only('author_name', 'body'));

        return redirect()->route('issues.show', $issue)
                        ->with('success', 'Comment added successfully.');
    }
}
