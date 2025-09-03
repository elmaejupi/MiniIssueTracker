<x-app-layout>
    <x-slot name="header">
        <h2 class="fw-bold text-dark">
            {{ __('Projects') }}
        </h2>
    </x-slot>

    <div class="container my-4">
        <a href="{{ route('projects.create') }}" class="btn btn-primary mb-4">+ New Project</a>

        <div class="row g-4">
            @forelse($projects as $project)
                <div class="col-md-4">
                    <div class="card shadow-sm h-100">
                        <div class="card-body">
                            <h5 class="card-title">{{ $project->name }}</h5>
                            <p class="card-text">Issues: {{ $project->issues_count }}</p>
                            <div class="d-flex gap-2">
                                <a href="{{ route('projects.show', $project) }}" class="btn btn-sm text-white" style="background-color: #5bc0de;">View</a>

                                <a href="{{ route('projects.edit', $project) }}" class="btn btn-sm text-white" style="background-color: #343a40;">Edit</a>

                                <form action="{{ route('projects.destroy', $project) }}" method="POST" class="d-inline">
                                    @csrf 
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-sm text-white" style="background-color: #dc3545;">Delete</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            @empty
                <div class="col-12 text-center">
                    <p>No projects found.</p>
                </div>
            @endforelse
        </div>
    </div>
</x-app-layout>
