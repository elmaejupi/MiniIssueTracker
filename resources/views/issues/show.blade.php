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

    {{-- Tags Section --}}
    <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6 mb-6">
        <h4 class="font-semibold mb-4">Tags</h4>

        <div id="tag-list" class="mb-3">
            @foreach ($issue->tags as $tag)
                <span class="badge bg-primary me-2" data-tag-id="{{ $tag->id }}">
                    {{ $tag->name }}
                    <button type="button" class="btn btn-sm btn-light btn-outline-danger ms-1 detach-tag" data-id="{{ $tag->id }}">x</button>
                </span>
            @endforeach
        </div>

        <div class="d-flex align-items-center gap-2">
            <select id="tag-select" class="form-select w-auto">
                <option value="">Select tag...</option>
                @foreach ($allTags as $tag)
                    @if (!$issue->tags->contains($tag))
                        <option value="{{ $tag->id }}">{{ $tag->name }}</option>
                    @endif
                @endforeach
            </select>
            <button id="attach-tag" class="btn btn-success btn-sm">Attach</button>
        </div>
    </div>

    {{-- Comments Section --}}
    <div class="bg-white dark:bg-gray-800 shadow sm:rounded-lg p-6">
        <h4 class="font-semibold mb-4">Comments</h4>

        <ul id="comments-list" class="list-group mb-3"></ul>
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
document.addEventListener("DOMContentLoaded", () => {
    const attachBtn = document.getElementById("attach-tag");
    const tagSelect = document.getElementById("tag-select");
    const tagList   = document.getElementById("tag-list");
    const issueId   = "{{ $issue->id }}";

    // Attach Tag
    attachBtn.addEventListener("click", async () => {
        const tagId = tagSelect.value;
        if (!tagId) return alert("Please select a tag.");

        try {
            const res = await fetch("{{ route('tags.attach') }}", {
                method: "POST",
                headers: {
                    "X-CSRF-TOKEN": "{{ csrf_token() }}",
                    "Content-Type": "application/json",
                    "Accept": "application/json"
                },
                body: JSON.stringify({ issue_id: issueId, tag_id: tagId })
            });

            const data = await res.json();
            if (data.success) {
                // Add tag badge to DOM
                const span = document.createElement("span");
                span.className = "badge bg-primary me-2";
                span.dataset.tagId = data.tag.id;
                span.innerHTML = `${data.tag.name} 
                    <button type="button" class="btn btn-sm btn-light btn-outline-danger ms-1 detach-tag" data-id="${data.tag.id}">x</button>`;
                tagList.appendChild(span);

                // Remove tag from select dropdown
                tagSelect.querySelector(`option[value="${data.tag.id}"]`)?.remove();
                tagSelect.value = "";
            }
        } catch (err) {
            console.error("Error attaching tag:", err);
        }
    });

    // Detach Tag
    tagList.addEventListener("click", async (e) => {
        if (e.target.classList.contains("detach-tag")) {
            const tagId = e.target.dataset.id;
            try {
                const res = await fetch("{{ route('tags.detach') }}", {
                    method: "POST",
                    headers: {
                        "X-CSRF-TOKEN": "{{ csrf_token() }}",
                        "Content-Type": "application/json",
                        "Accept": "application/json"
                    },
                    body: JSON.stringify({ issue_id: issueId, tag_id: tagId })
                });

                const data = await res.json();
                if (data.success) {
                    // Remove tag from DOM
                    e.target.closest("span").remove();

                    // Add back to dropdown
                    const option = document.createElement("option");
                    option.value = tagId;
                    option.textContent = data.tag_name ?? "Tag " + tagId;
                    tagSelect.appendChild(option);
                }
            } catch (err) {
                console.error("Error detaching tag:", err);
            }
        }
    });

    // --- COMMENTS LOADING
    const commentsList = document.getElementById("comments-list");
    const loadMoreBtn = document.getElementById("load-more");
    const commentForm = document.getElementById("comment-form");
    let nextPage = "{{ route('comments.index', $issue) }}";

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
                li.innerHTML = `<strong>${c.author_name}</strong><p class="mb-0">${c.body}</p>`;
                commentsList.appendChild(li);
            });

            nextPage = data.next_page_url;
            if (!nextPage) loadMoreBtn.style.display = "none";
        } catch (err) {
            console.error("Error loading comments:", err);
        }
    }

    loadComments();

    loadMoreBtn.addEventListener("click", e => {
        e.preventDefault();
        loadComments();
    });

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
                li.innerHTML = `<strong>${data.comment.author_name}</strong><p class="mb-0">${data.comment.body}</p>`;
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
