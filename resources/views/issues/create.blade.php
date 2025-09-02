<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Create Issue') }}
        </h2>
    </x-slot>

    <div class="py-6">
        <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6">
            <form action="{{ route('issues.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label>Project</label>
                    <select name="project_id" class="form-control" required>
                        @foreach($projects as $project)
                            <option value="{{ $project->id }}">{{ $project->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="mb-3">
                    <label>Title</label>
                    <input type="text" name="title" class="form-control" required>
                </div>
                <div class="mb-3">
                    <label>Description</label>
                    <textarea name="description" class="form-control"></textarea>
                </div>
                <div class="mb-3">
                    <label>Status</label>
                    <select name="status" class="form-control" required>
                        <option value="open">Open</option>
                        <option value="in_progress">In Progress</option>
                        <option value="closed">Closed</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label>Priority</label>
                    <select name="priority" class="form-control" required>
                        <option value="low">Low</option>
                        <option value="medium">Medium</option>
                        <option value="high">High</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label>Due Date</label>
                    <input type="date" name="due_date" class="form-control">
                </div>
                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</x-app-layout>
