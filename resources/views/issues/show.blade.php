<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ $issue->title }}
        </h2>
    </x-slot>

<div class="py-6">

    {{-- Issue Info --}}
    <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6 mb-6">
        <p><strong>Project:</strong> {{ $issue->project->name }}</p>
        <p>{{ $issue->description }}</p>
        <p><strong>Status:</strong> {{ $issue->status }} | <strong>Priority:</strong> {{ $issue->priority }}</p>
        <p><strong>Due Date:</strong> {{ $issue->due_date }}</p>
    </div>

    {{-- Comments Section --}}
    <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6">
        <h4 class="font-semibold mb-4">Comments</h4>

        <ul id="comments-list" class="list-group mb-3">
            {{-- Comments loaded via AJAX --}}
        </ul>

        <div class="mb-4 text-center">
            <button id="load-more" class="btn btn-link">Load more</button>
        </div>

        <h5 class="font-semibold mt-4">Add a Comment</h5>
        <form id="comment-form" action="{{ route('comments.store', $issue) }}" method="POST">
            @csrf
            <div class="mb-3">
                <textarea name="body" class="form-control" placeholder="Write your comment..." rows="3" required></textarea>
            </div>
            <button type="submit" class="btn btn-success">Post Comment</button>
        </form>
    </div>

</div>

@push('scripts')
<script>
document.addEventListener('DOMContentLoaded', () => {
    const commentsList = document.getElementById("comments-list");
    const loadMoreBtn = document.getElementById("load-more");
    const commentForm = document.getElementById("comment-form");

    let nextPage = "{{ route('comments.index', $issue) }}";

    // Load comments
    async function loadComments() {
        if (!nextPage) {
            loadMoreBtn.style.display = "none";
            return;
        }

        try {
            const res = await fetch(nextPage, { headers: { "Accept": "application/json" } });
            const data = await res.json();

            data.comments.forEach(c => {
                const li = document.createElement("li");
                li.className = "list-group-item";
                li.innerHTML = `
                    <div>
                        <strong>${c.author_name}</strong>
                        <p class="mb-0">${c.body}</p>
                    </div>`;
                commentsList.appendChild(li);
            });

            nextPage = data.next_page_url;
            if (!nextPage) loadMoreBtn.style.display = "none";
        } catch (err) {
            console.error("Error loading comments:", err);
        }
    }

    // Initial load
    loadComments();

    // Load more button
    loadMoreBtn.addEventListener("click", e => {
        e.preventDefault();
        loadComments();
    });

    // Submit new comment
    commentForm.addEventListener("submit", async e => {
        e.preventDefault();
        const formData = new FormData(commentForm);

        try {
            const res = await fetch(commentForm.action, {
                method: "POST",
                headers: {
                    "X-CSRF-TOKEN": "{{ csrf_token() }}",
                    "Accept": "application/json"
                },
                body: formData
            });

            const data = await res.json();

            if (data.success) {
                const li = document.createElement("li");
                li.className = "list-group-item";
                li.innerHTML = `
                    <div>
                        <strong>${data.comment.author_name}</strong>
                        <p class="mb-0">${data.comment.body}</p>
                    </div>`;
                commentsList.insertBefore(li, commentsList.firstChild);
                commentForm.reset();
            } else if (data.errors) {
                alert(Object.values(data.errors).flat().join("\n"));
            }
        } catch (err) {
            console.error("Error posting comment:", err);
        }
    });
});
</script>
@endpush

</x-app-layout>
