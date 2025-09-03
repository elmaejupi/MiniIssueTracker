<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\IssueController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\TagController;
use Illuminate\Support\Facades\Route;

Route::get('/', fn () => redirect()->route('projects.index'));

Route::middleware('auth')->group(function () {
    // Profile
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    // Projects and Issues
    Route::resource('projects', ProjectController::class);
    Route::resource('issues', IssueController::class);

    // Comments
    Route::post('/issues/{issue}/comments', [CommentController::class, 'store'])->name('comments.store');
    Route::get('/issues/{issue}/comments', [CommentController::class, 'index'])->name('comments.index');

    // Tags
    Route::post('/tags/attach', [TagController::class, 'attach'])->name('tags.attach');
    Route::post('/tags/detach', [TagController::class, 'detach'])->name('tags.detach');
});

require __DIR__.'/auth.php';
