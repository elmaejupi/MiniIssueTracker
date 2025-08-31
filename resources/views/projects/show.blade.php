@extends('layouts.app')

@section('content')
<h2>{{ $project->name }}</h2>
<p>{{ $project->description }}</p>
<p><strong>Start:</strong> {{ $project->start_date }} | <strong>Deadline:</strong> {{ $project->deadline }}</p>

<h4>Issues</h4>
<a href="{{ route('issues.create') }}" class="btn btn-primary mb-3">+ New Issue</a>

<ul class="list-group">
    @foreach($project->issues as $issue)
        <li class="list-group-item d-flex justify-content-between align-items-center">
            <a href="{{ route('issues.show', $issue) }}">{{ $issue->title }}</a>
            <span class="badge bg-secondary">{{ $issue->status }}</span>
        </li>
    @endforeach
</ul>
@endsection
