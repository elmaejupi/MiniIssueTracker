<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Edit Project') }}
        </h2>
    </x-slot>

    <div class="py-6">
        <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6">
            <form action="{{ route('projects.update', $project) }}" method="POST">
                @csrf @method('PUT')
                <div class="mb-3">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" value="{{ $project->name }}" required>
                </div>
                <div class="mb-3">
                    <label>Description</label>
                    <textarea name="description" class="form-control">{{ $project->description }}</textarea>
                </div>
                <div class="mb-3">
                    <label>Start Date</label>
                    <input type="date" name="start_date" class="form-control" value="{{ $project->start_date }}">
                </div>
                <div class="mb-3">
                    <label>Deadline</label>
                    <input type="date" name="deadline" class="form-control" value="{{ $project->deadline }}">
                </div>
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
        </div>
    </div>
</x-app-layout>
