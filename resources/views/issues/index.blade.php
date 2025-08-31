@extends('layouts.app')

@section('content')
<h2>Issues</h2>
<a href="{{ route('issues.create') }}" class="btn btn-primary mb-3">+ New Issue</a>

<table class="table table-bordered">
    <tr>
        <th>Title</th>
        <th>Project</th>
        <th>Status</th>
        <th>Priority</th>
        <th>Actions</th>
    </tr>
    @foreach($issues as $issue)
    <tr>
        <td>{{ $issue->title }}</td>
        <td>{{ $issue->project->name }}</td>
        <td>{{ $issue->status }}</td>
        <td>{{ $issue->priority }}</td>
        <td>
            <a href="{{ route('issues.show', $issue) }}" class="btn btn-sm btn-info">View</a>
            <a href="{{ route('issues.edit', $issue) }}" class="btn btn-sm btn-warning">Edit</a>
            <form action="{{ route('issues.destroy', $issue) }}" method="POST" style="display:inline;">
                @csrf @method('DELETE')
                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
            </form>
        </td>
    </tr>
    @endforeach
</table>
@endsection
