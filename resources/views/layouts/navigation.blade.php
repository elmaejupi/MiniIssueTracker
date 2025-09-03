<nav x-data="{ open: false }" class="bg-dark navbar-dark border-bottom">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center py-2">
            <!-- Logo -->
            <a href="{{ route('projects.index') }}" class="d-flex align-items-center text-white text-decoration-none">
                <!-- Bear icon -->
                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-bear" viewBox="0 0 16 16">
                    <path d="M8 0c-3.314 0-6 2.686-6 6 0 1.343.522 2.565 1.367 3.484C3.05 10.326 3 10.646 3 11v1h10v-1c0-.354-.05-.674-.367-.516C13.478 8.565 14 7.343 14 6c0-3.314-2.686-6-6-6zM5 8a1 1 0 110-2 1 1 0 010 2zm6 0a1 1 0 110-2 1 1 0 010 2z"/>
                </svg>
                <span class="ms-2 fw-bold">IssueTracker</span>
            </a>

            <!-- Desktop Links -->
            <div class="d-none d-lg-flex align-items-center gap-3">
                <a href="{{ route('projects.index') }}" class="nav-link text-white {{ request()->routeIs('projects.*') ? 'active' : '' }}">Projects</a>
                <a href="{{ route('issues.index') }}" class="nav-link text-white {{ request()->routeIs('issues.*') ? 'active' : '' }}">Issues</a>

                <!-- Profile Dropdown -->
                <div class="dropdown">
                    <button class="btn btn-outline-light dropdown-toggle" type="button" id="profileDropdown" data-bs-toggle="dropdown" aria-expanded="false">
                        {{ Auth::user()->name }}
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown">
                        <li><a class="dropdown-item" href="{{ route('profile.edit') }}">Profile</a></li>
                        <li>
                            <form method="POST" action="{{ route('logout') }}">
                                @csrf
                                <button type="submit" class="dropdown-item">Logout</button>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>

            <!-- Hamburger for Mobile -->
            <button @click="open = ! open" class="d-lg-none btn btn-outline-light">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>

        <!-- Mobile Menu -->
        <div :class="{'d-block': open, 'd-none': ! open}" class="d-none d-lg-none mt-2">
            <a href="{{ route('projects.index') }}" class="d-block text-white py-1 {{ request()->routeIs('projects.*') ? 'fw-bold' : '' }}">Projects</a>
            <a href="{{ route('issues.index') }}" class="d-block text-white py-1 {{ request()->routeIs('issues.*') ? 'fw-bold' : '' }}">Issues</a>
            <a href="{{ route('profile.edit') }}" class="d-block text-white py-1">Profile</a>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit" class="d-block text-white py-1 btn btn-link text-start p-0">Logout</button>
            </form>
        </div>
    </div>
</nav>
