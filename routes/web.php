<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\IssueController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\TagController;
use Illuminate\Support\Facades\Route;

// Redirect root URL to projects page
Route::get('/', fn () => redirect()->route('projects.index'));

Route::middleware('auth')->group(function () {
    Route::post('/issues/{issue}/comments', [CommentController::class, 'store']);
});


Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});


// Group routes that require authentication
Route::middleware(['auth'])->group(function () {
    // Project and Issue resources
    Route::resource('projects', ProjectController::class);
    Route::resource('issues', IssueController::class);

    // Comments for issues
    Route::post('/issues/{issue}/comments', [CommentController::class, 'store'])->name('comments.store');
    Route::get('/issues/{issue}/comments', [CommentController::class, 'index'])->name('comments.index');

    // Tags 
    //Route::resource('tags', TagController::class)->except(['create', 'edit', 'show']);
    Route::post('/tags/attach', [TagController::class, 'attach'])->name('tags.attach');
    Route::post('/tags/detach', [TagController::class, 'detach'])->name('tags.detach');
    
});

// Laravel Breeze Auth routes
require __DIR__.'/auth.php';

