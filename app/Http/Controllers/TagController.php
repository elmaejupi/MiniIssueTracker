<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use App\Models\Issue;
use Illuminate\Http\Request;

class TagController extends Controller
{
    public function index()
    {
        $tags = Tag::all();
        return view('tags.index', compact('tags'));
    }

    public function store(Request $request)
    {
        $request->validate(['name' => 'required|unique:tags']);
        $tag = Tag::create(['name' => $request->name]);

        return response()->json($tag);
    }

    public function destroy(Tag $tag)
    {
        $tag->delete();
        return response()->json(['success' => true]);
    }

    // Attach tag to issue (AJAX)
    public function attach(Request $request)
    {
        $request->validate([
            'issue_id' => 'required|exists:issues,id',
            'tag_id'   => 'required|exists:tags,id',
        ]);

        $issue = Issue::findOrFail($request->issue_id);
        $issue->tags()->syncWithoutDetaching([$request->tag_id]);

        $tag = Tag::findOrFail($request->tag_id);

        return response()->json([
            'success' => true,
            'tag' => [
                'id'    => $tag->id,
                'name'  => $tag->name,
                'color' => $tag->color ?? '#000'
            ]
        ]);
    }

    // Detach tag from issue (AJAX)
    public function detach(Request $request)
    {
        $request->validate([
            'issue_id' => 'required|exists:issues,id',
            'tag_id'   => 'required|exists:tags,id',
        ]);

        $issue = Issue::findOrFail($request->issue_id);
        $issue->tags()->detach($request->tag_id);

        return response()->json([
            'success' => true,
            'tag_id' => $request->tag_id
        ]);
    }
}
