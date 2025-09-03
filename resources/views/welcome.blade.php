<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Laravel Issue Tracker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container py-5 text-center">
    <h1 class="display-4 mb-4">Welcome to the Issue Tracker</h1>
    <p class="lead mb-4">Manage your projects, issues, and comments efficiently.</p>

    @auth
        <a href="{{ route('projects.index') }}" class="btn btn-primary btn-lg">Go to Projects</a>
    @else
        <a href="{{ route('login') }}" class="btn btn-success btn-lg me-2">Login</a>
        <a href="{{ route('register') }}" class="btn btn-outline-primary btn-lg">Register</a>
    @endauth
</div>

</body>
</html>
