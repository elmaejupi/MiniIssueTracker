<?php

namespace App\Http\Controllers;

use App\Models\Issue;
use App\Models\Project;
use App\Models\Tag;
use Illuminate\Http\Request;

class IssueController extends Controller
{
    //Listing issues (with filters by status, priority, and tag)
    public function index()
    {
        $issues = Issue::with('project')->get();
        return view('issues.index', compact('issues'));
    }

    //create form
    public function create()
    {
        $projects = Project::all(); 
        return view('issues.create', compact('projects'));
    }

    //to store a new issue
    public function store(Request $request)
    {
        $request->validate([
            'project_id' => 'required|exists:projects,id',
            'title' => 'required|string|max:255',
            'description' => 'nullable|string',
            'status' => 'required|in:open,in_progress,closed',
            'priority' => 'required|in:low,medium,high',
            'due_date' => 'nullable|date',
        ]);

        Issue::create($request->all());

        return redirect()->route('issues.index')->with('success', 'Issue created successfully.');
    }

    //issue details
    public function show(Issue $issue)
    {
        $issue->load(['project', 'comments', 'tags']);
        $allTags = Tag::all(); // for tag dropdown
        return view('issues.show', compact('issue', 'allTags'));
    }

    //edit
    public function edit(Issue $issue)
    {
        $projects = Project::all();
        return view('issues.edit', compact('issue', 'projects'));
    }

    //update issue
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

    //delete issue
    public function destroy(Issue $issue)
    {
        $issue->delete();
        return redirect()->route('issues.index')->with('success', 'Issue deleted successfully.');
    }

    // ✅ Update tags for an issue
    public function updateTags(Request $request, Issue $issue)
    {
        $request->validate([
            'tags' => 'array',
            'tags.*' => 'exists:tags,id'
        ]);

        $issue->tags()->sync($request->tags ?? []);

        return redirect()->route('issues.show', $issue)
                         ->with('success', 'Tags updated successfully.');
    }

    // ✅ Add a new comment to an issue
    public function addComment(Request $request, Issue $issue)
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
