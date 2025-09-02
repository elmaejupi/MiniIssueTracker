<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Create Project') }}
        </h2>
    </x-slot>

    <div class="py-6">
        <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6">
            <form action="{{ route('projects.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label>Name</label>
                    <input type="text" name="name" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>Description</label>
                    <textarea name="description" class="form-control"></textarea>
                </div>
                <div class="mb-3">
                    <label>Start Date</label>
                    <input type="date" name="start_date" class="form-control">
                </div>
                <div class="mb-3">
                    <label>Deadline</label>
                    <input type="date" name="deadline" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</x-app-layout>
