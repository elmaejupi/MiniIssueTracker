<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Issues') }}
        </h2>
    </x-slot>

    <div class="py-6">
        <a href="{{ route('issues.create') }}" class="btn btn-primary mb-3">+ New Issue</a>

        {{-- Filters --}}
        <form method="GET" action="{{ route('issues.index') }}" class="mb-3 d-flex gap-2">
            <select name="status" class="form-control w-auto">
                <option value="">All Statuses</option>
                <option value="open" {{ request('status') == 'open' ? 'selected' : '' }}>Open</option>
                <option value="in_progress" {{ request('status') == 'in_progress' ? 'selected' : '' }}>In Progress</option>
                <option value="closed" {{ request('status') == 'closed' ? 'selected' : '' }}>Closed</option>
            </select>

            <select name="priority" class="form-control w-auto">
                <option value="">All Priorities</option>
                <option value="low" {{ request('priority') == 'low' ? 'selected' : '' }}>Low</option>
                <option value="medium" {{ request('priority') == 'medium' ? 'selected' : '' }}>Medium</option>
                <option value="high" {{ request('priority') == 'high' ? 'selected' : '' }}>High</option>
            </select>

            <select name="tag" class="form-control w-auto">
                <option value="">All Tags</option>
                @foreach($tags as $tag)
                    <option value="{{ $tag->id }}" {{ request('tag') == $tag->id ? 'selected' : '' }}>
                        {{ $tag->name }}
                    </option>
                @endforeach
            </select>

            <button type="submit" class="btn btn-secondary">Filter</button>
            <a href="{{ route('issues.index') }}" class="btn btn-light">Reset</a>
        </form>

        <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6">
            <table class="table table-bordered w-full">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Project</th>
                        <th>Status</th>
                        <th>Priority</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                @forelse($issues as $issue)
                    <tr>
                        <td>{{ $issue->title }}</td>
                        <td>{{ $issue->project->name }}</td>
                        <td>{{ ucfirst($issue->status) }}</td>
                        <td>{{ ucfirst($issue->priority) }}</td>
                        <td>
                            <a href="{{ route('issues.show', $issue) }}" class="btn btn-sm btn-info">View</a>
                            <a href="{{ route('issues.edit', $issue) }}" class="btn btn-sm btn-warning">Edit</a>
                            <form action="{{ route('issues.destroy', $issue) }}" method="POST" style="display:inline;">
                                @csrf @method('DELETE')
                                <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="5" class="text-center">No issues found.</td>
                    </tr>
                @endforelse
                </tbody>
            </table>
        </div>
    </div>
</x-app-layout>
