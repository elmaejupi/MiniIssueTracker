<x-app-layout>
    <x-slot name="header">
        <h2 class="fw-bold text-dark">
            {{ __('Issues') }}
        </h2>
    </x-slot>

    <div class="container my-4">
        <a href="{{ route('issues.create') }}" class="btn btn-primary mb-4">+ New Issue</a>

        <!-- Search + Filters -->
        <div class="card shadow-sm mb-4">
            <div class="card-body">
                <div class="row g-2 align-items-center mb-3">
                    <div class="col-md-6">
                        <input type="text" id="search" class="form-control" placeholder="Search issues...">
                    </div>
                </div>

                <form method="GET" action="{{ route('issues.index') }}" class="row g-2">
                    <div class="col-md-3">
                        <select name="status" class="form-select">
                            <option value="">All Statuses</option>
                            <option value="open" {{ request('status') == 'open' ? 'selected' : '' }}>Open</option>
                            <option value="in_progress" {{ request('status') == 'in_progress' ? 'selected' : '' }}>In Progress</option>
                            <option value="closed" {{ request('status') == 'closed' ? 'selected' : '' }}>Closed</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select name="priority" class="form-select">
                            <option value="">All Priorities</option>
                            <option value="low" {{ request('priority') == 'low' ? 'selected' : '' }}>Low</option>
                            <option value="medium" {{ request('priority') == 'medium' ? 'selected' : '' }}>Medium</option>
                            <option value="high" {{ request('priority') == 'high' ? 'selected' : '' }}>High</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <select name="tag" class="form-select">
                            <option value="">All Tags</option>
                            @foreach($tags as $tag)
                                <option value="{{ $tag->id }}" {{ request('tag') == $tag->id ? 'selected' : '' }}>
                                    {{ $tag->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-3 d-flex gap-2">
                        <button type="submit" class="btn btn-secondary">Filter</button>
                        <a href="{{ route('issues.index') }}" class="btn btn-light">Reset</a>
                    </div>
                </form>
            </div>
        </div>

        <div class="card shadow-sm">
            <div class="card-body">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Project</th>
                            <th>Status</th>
                            <th>Priority</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody id="issues-table">
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
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    @push('scripts')
    <script>
        let timer;
        document.getElementById('search').addEventListener('input', function() {
            clearTimeout(timer);
            timer = setTimeout(() => {
                fetch(`{{ route('issues.index') }}?search=${this.value}`, {
                    headers: { 'X-Requested-With': 'XMLHttpRequest' }
                })
                .then(res => res.text())
                .then(html => {
                    const parser = new DOMParser();
                    const doc = parser.parseFromString(html, 'text/html');
                    const newTableBody = doc.querySelector('#issues-table').innerHTML;
                    document.querySelector('#issues-table').innerHTML = newTableBody;
                });
            }, 300);
        });
    </script>
    @endpush
</x-app-layout>
