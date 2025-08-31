@extends('layouts.app')

@section('content')
<h2>Projects</h2>
<a href="{{ route('projects.create') }}" class="btn btn-primary mb-3">+ New Project</a>

<table class="table table-bordered">
    <tr>
        <th>Name</th>
        <th>Issues</th>
        <th>Actions</th>
    </tr>
    @foreach($projects as $project)
    <tr>
        <td>{{ $project->name }}</td>
        <td>{{ $project->issues_count }}</td>
        <td>
            <a href="{{ route('projects.show', $project) }}" class="btn btn-sm btn-info">View</a>
            <a href="{{ route('projects.edit', $project) }}" class="btn btn-sm btn-warning">Edit</a>
            <form action="{{ route('projects.destroy', $project) }}" method="POST" style="display:inline;">
                @csrf @method('DELETE')
                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
            </form>
        </td>
    </tr>
    @endforeach
</table>
@endsection
