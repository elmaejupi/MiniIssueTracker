<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Projects') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    <a href="{{ route('projects.create') }}" class="btn btn-primary mb-3">+ New Project</a>

                    <table class="table table-bordered w-full">
                        <tr>
                            <th>Name</th>
                            <th>Issues</th>
                            <th>Actions</th>
                        </tr>
                        @forelse($projects as $project)
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
                        @empty
                            <tr>
                                <td colspan="3" class="text-center">No projects found.</td>
                            </tr>
                        @endforelse
                    </table>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
