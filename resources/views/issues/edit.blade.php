@extends('layouts.app')

@section('content')
<h2>Edit Issue</h2>

<form action="{{ route('issues.update', $issue) }}" method="POST">
    @csrf @method('PUT')
    <div class="mb-3">
        <label>Project</label>
        <select name="project_id" class="form-control" required>
            @foreach($projects as $project)
                <option value="{{ $project->id }}" {{ $issue->project_id == $project->id ? 'selected' : '' }}>
                    {{ $project->name }}
                </option>
            @endforeach
        </select>
    </div>
    <div class="mb-3">
        <label>Title</label>
        <input type="text" name="title" class="form-control" value="{{ $issue->title }}" required>
    </div>
    <div class="mb-3">
        <label>Description</label>
        <textarea name="description" class="form-control">{{ $issue->description }}</textarea>
    </div>
    <div class="mb-3">
        <label>Status</label>
        <select name="status" class="form-control" required>
            <option value="open" {{ $issue->status == 'open' ? 'selected' : '' }}>Open</option>
            <option value="in_progress" {{ $issue->status == 'in_progress' ? 'selected' : '' }}>In Progress</option>
            <option value="closed" {{ $issue->status == 'closed' ? 'selected' : '' }}>Closed</option>
        </select>
    </div>
    <div class="mb-3">
        <label>Priority</label>
        <select name="priority" class="form-control" required>
            <option value="low" {{ $issue->priority == 'low' ? 'selected' : '' }}>Low</option>
            <option value="medium" {{ $issue->priority == 'medium' ? 'selected' : '' }}>Medium</option>
            <option value="high" {{ $issue->priority == 'high' ? 'selected' : '' }}>High</option>
        </select>
    </div>
    <div class="mb-3">
        <label>Due Date</label>
        <input type="date" name="due_date" class="form-control" value="{{ $issue->due_date }}">
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
</form>
@endsection
