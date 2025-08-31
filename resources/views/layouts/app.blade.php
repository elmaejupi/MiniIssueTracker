<!DOCTYPE html>
<html>
<head>
    <title>Mini Issue Tracker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
        <div class="container">
            <a class="navbar-brand" href="{{ route('projects.index') }}">Issue Tracker</a>
            <div>
                <a class="btn btn-sm btn-light" href="{{ route('projects.index') }}">Projects</a>
                <a class="btn btn-sm btn-light" href="{{ route('issues.index') }}">Issues</a>
            </div>
        </div>
    </nav>
    <div class="container">
        @if(session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif
        @yield('content')
    </div>
</body>
</html>
