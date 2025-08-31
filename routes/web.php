<?php

use App\Http\Controllers\ProjectController;
use App\Http\Controllers\IssueController;
use App\Http\Controllers\CommentController;


Route::get('/', fn () => redirect()->route('projects.index'));
Route::resource('projects', ProjectController::class);
Route::resource('issues', IssueController::class);
Route::post('/issues/{issue}/comments', [CommentController::class, 'store'])->name('comments.store');

Route::resource('issues', IssueController::class);
Route::post('/issues/{issue}/tags', [IssueController::class, 'updateTags'])->name('issues.updateTags');
Route::post('/issues/{issue}/comments', [IssueController::class, 'addComment'])->name('issues.addComment');
