<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ $project->name }}
        </h2>
    </x-slot>

    <div class="py-6">
        <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6">
            <p>{{ $project->description }}</p>
            <p><strong>Start:</strong> {{ $project->start_date }} | <strong>Deadline:</strong> {{ $project->deadline }}</p>
        </div>

        <div class="mt-6">
            <h4 class="text-lg font-semibold mb-2">Issues</h4>
            <a href="{{ route('issues.create') }}" class="btn btn-primary mb-3">+ New Issue</a>

            <ul class="list-group">
                @foreach($project->issues as $issue)
                    <li class="list-group-item d-flex justify-content-between align-items-center">
                        <a href="{{ route('issues.show', $issue) }}">{{ $issue->title }}</a>
                        <span class="badge bg-secondary">{{ $issue->status }}</span>
                    </li>
                @endforeach
            </ul>
        </div>
    </div>
</x-app-layout>