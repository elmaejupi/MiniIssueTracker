<?php

namespace App\Http\Controllers;

use App\Models\Issue;
use App\Models\Comment;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CommentController extends Controller
{
    public function index(Issue $issue)
{
    $comments = $issue->comments()->latest()->paginate(5);

    return response()->json([
        'comments' => $comments->map(fn($c) => [
            'id' => $c->id,
            'author_name' => $c->user?->name ?? 'Anonymous',
            'body' => $c->body,
        ]),
        'next_page_url' => $comments->nextPageUrl()
    ]);
}




  public function store(Request $request, Issue $issue)
{
    $validated = $request->validate([
        'body' => 'required|string',
    ]);

    $comment = $issue->comments()->create([
        'body' => $validated['body'],
        'user_id' => auth()->id(),
    ]);

    return response()->json([
        'success' => true,
        'comment' => [
            'id' => $comment->id,
            'author_name' => $comment->user->name,
            'body' => $comment->body,
        ]
    ]);
}


}
