<?php

namespace App\Http\Controllers;

use App\Models\Issue;
use App\Models\Project;
use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class IssueController extends Controller
{
    // List issues with filters
    public function index(Request $request)
    {
        $query = Issue::with('project');

        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }
        if ($request->filled('priority')) {
            $query->where('priority', $request->priority);
        }
        if ($request->filled('tag')) {
            $query->whereHas('tags', fn($q) => $q->where('tags.id', $request->tag));
        }

        $issues = $query->get();
        $tags = Tag::all();

        return view('issues.index', compact('issues', 'tags'));
    }

    // Show create form
    public function create()
    {
        $projects = Project::all(); 
        return view('issues.create', compact('projects'));
    }

    // Store new issue
    public function store(Request $request)
    {
        $validated = $request->validate([
            'project_id' => 'required|exists:projects,id',
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'status' => 'required|in:open,in_progress,closed',
            'priority' => 'required|in:low,medium,high',
            'due_date' => 'nullable|date',
        ]);

        $validated['user_id'] = Auth::id();

        Issue::create($validated);

        return redirect()->route('issues.index')->with('success', 'Issue created successfully.');
    }

    // Show issue details
    public function show(Issue $issue)
    {
        $allTags = Tag::all();
        $issue->load(['project','comments','tags']);
        return view('issues.show', compact('issue', 'allTags'));
    }

    // Edit issue
    public function edit(Issue $issue)
    {
        $projects = Project::all();
        return view('issues.edit', compact('issue', 'projects'));
    }

    // Update issue
    public function update(Request $request, Issue $issue)
    {
        $request->validate([
            'project_id' => 'required|exists:projects,id',
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'status' => 'required|in:open,in_progress,closed',
            'priority' => 'required|in:low,medium,high',
            'due_date' => 'nullable|date',
        ]);

        $issue->update($request->all());

        return redirect()->route('issues.index')->with('success', 'Issue updated successfully.');
    }

    // Delete issue
    public function destroy(Issue $issue)
    {
        $issue->delete();
        return redirect()->route('issues.index')->with('success', 'Issue deleted successfully.');
    }

    // Add comment manually
    public function addComment(Request $request, Issue $issue)
    {
        $request->validate([
            'author_name' => 'required|string|max:255',
            'body' => 'required|string',
        ]);

        $issue->comments()->create($request->only('author_name', 'body'));

        return redirect()->route('issues.show', $issue)->with('success', 'Comment added successfully.');
    }

    //  Attach a tag to an issue
    public function attachTag(Request $request, Issue $issue)
    {
        $request->validate(['tag_id' => 'required|exists:tags,id']);
        $issue->tags()->attach($request->tag_id);
        return response()->json(['success' => true]);
    }

    //  Detach a tag from an issue
    public function detachTag(Request $request, Issue $issue)
    {
        $request->validate(['tag_id' => 'required|exists:tags,id']);
        $issue->tags()->detach($request->tag_id);
        return response()->json(['success' => true]);
    }
}
