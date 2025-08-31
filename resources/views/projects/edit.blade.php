@extends('layouts.app')

@section('content')
<h2>Edit Project</h2>

<form action="{{ route('projects.update', $project) }}" method="POST">
    @csrf @method('PUT')
    <div class="mb-3">
        <label>Name</label>
        <input type="text" name="name" class="form-control" value="{{ $project->name }}" required>
    </div>
    <div class="mb-3">
        <label>Description</label>
        <textarea name="description" class="form-control">{{ $project->description }}</textarea>
    </div>
    <div class="mb-3">
        <label>Start Date</label>
        <input type="date" name="start_date" class="form-control" value="{{ $project->start_date }}">
    </div>
    <div class="mb-3">
        <label>Deadline</label>
        <input type="date" name="deadline" class="form-control" value="{{ $project->deadline }}">
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
</form>
@endsection
