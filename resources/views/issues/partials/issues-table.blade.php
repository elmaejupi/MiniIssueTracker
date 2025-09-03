@forelse($issues as $issue)
<tr>
    <td>{{ $issue->title }}</td>
    <td>{{ $issue->project->name }}</td>
    <td>{{ ucfirst($issue->status) }}</td>
    <td>{{ ucfirst($issue->priority) }}</td>
    <td>
        <a href="{{ route('issues.show', $issue) }}" class="btn btn-info btn-sm">View</a>
        <a href="{{ route('issues.edit', $issue) }}" class="btn btn-warning btn-sm">Edit</a>
        <form action="{{ route('issues.destroy', $issue) }}" method="POST" class="d-inline">
            @csrf @method('DELETE')
            <button type="submit" class="btn btn-danger btn-sm">Delete</button>
        </form>
    </td>
</tr>
@empty
<tr>
    <td colspan="5" class="text-center">No issues found.</td>
</tr>
@endforelse

