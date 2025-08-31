@extends('layouts.app')

@section('content')
<h2>{{ $issue->title }}</h2>
<p><strong>Project:</strong> {{ $issue->project->name }}</p>
<p>{{ $issue->description }}</p>
<p><strong>Status:</strong> {{ $issue->status }} | <strong>Priority:</strong> {{ $issue->priority }}</p>
<p><strong>Due Date:</strong> {{ $issue->due_date }}</p>

{{-- TAGS --}}
<h4>Tags</h4>
<ul>
    @forelse($issue->tags as $tag)
        <li style="color: {{ $tag->color }}">{{ $tag->name }}</li>
    @empty
        <li>No tags assigned</li>
    @endforelse
</ul>

<h5>Update Tags</h5>
<form action="{{ route('issues.updateTags', $issue) }}" method="POST">
    @csrf
    <select name="tags[]" multiple class="form-control">
        @foreach($allTags as $tag)
            <option value="{{ $tag->id }}" {{ $issue->tags->contains($tag->id) ? 'selected' : '' }}>
                {{ $tag->name }}
            </option>
        @endforeach
    </select>
    <button type="submit" class="btn btn-primary mt-2">Update Tags</button>
</form>

{{-- COMMENTS --}}
<h4 class="mt-4">Comments</h4>
<ul>
    @foreach($issue->comments as $comment)
        <li><strong>{{ $comment->author_name }}</strong>: {{ $comment->body }}</li>
    @endforeach
</ul>

<h5>Add a Comment</h5>
<form action="{{ route('issues.addComment', $issue) }}" method="POST">
    @csrf
    <div class="mb-3">
        <label>Your Name</label>
        <input type="text" name="author_name" class="form-control" required>
    </div>
    <div class="mb-3">
        <label>Comment</label>
        <textarea name="body" class="form-control" required></textarea>
    </div>
    <button type="submit" class="btn btn-success">Post Comment</button>
</form>
@endsection
