<?php

namespace App\Http\Controllers;

use App\Models\Project;
use Illuminate\Http\Request;

class ProjectController extends Controller
{
    //list projects
    public function index()
    {
        $projects = Project::withCount('issues')->get();
        return view('projects.index', compact('projects'));
    }

    //create a project
    public function create()
    {
        return view('projects.create');
    }

    //store new project
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'start_date' => 'nullable|date',
            'deadline' => 'nullable|date|after_or_equal:start_date',
        ]);

        Project::create($request->all());

        return redirect()->route('projects.index')->with('success', 'Project created successfully.');
    }

    //one project and its issues
    public function show(Project $project)
    {
        $project->load('issues');
        return view('projects.show', compact('project'));
    }

    //edit project
    public function edit(Project $project)
    {
        return view('projects.edit', compact('project'));
    }

    //update
    public function update(Request $request, Project $project)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'nullable|string',
            'start_date' => 'nullable|date',
            'deadline' => 'nullable|date|after_or_equal:start_date',
        ]);

        $project->update($request->all());

        return redirect()->route('projects.index')->with('success', 'Project updated successfully.');
    }

    //delete
    public function destroy(Project $project)
    {
        $project->delete();
        return redirect()->route('projects.index')->with('success', 'Project deleted successfully.');
    }
    
}
