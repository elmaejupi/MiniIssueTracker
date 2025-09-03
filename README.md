# Mini Issue Tracker

A simple Laravel-based issue tracker with AJAX comments, tag management, and project/issue handling.  

---

## Features

- Projects and Issues management
- Issue detail page with:
  - AJAX comments (paginated)
  - Add new comments via logged-in user
  - Tag attach/detach
- Fully responsive layout using Tailwind + Bootstrap
- User authentication via Laravel Breeze

---

## Requirements

- PHP >= 8.1
- Composer
- MySQL
- Node.js + NPM (for compiling assets)
- Laravel >= 10

---

## Installation / Setup

1. **Clone the repository**:

```bash
git clone https://github.com/elmaejupi/MiniIssueTracker.git
cd MiniIssueTracker
````

2. **Install PHP dependencies**:

```bash
composer install
```

3. **Install Node dependencies and build assets**:

```bash
npm install
npm run dev
```

4. **Copy `.env.example` to `.env`**:

```bash
cp .env.example .env
```

5. **Configure your `.env` file**:

```
APP_NAME=IssueTracker
APP_URL=http://localhost:8000

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=issue_tracker
DB_USERNAME=root
DB_PASSWORD=
```

6. **Database setup**:

# Create the database
mysql -u root -p -e "CREATE DATABASE issue_tracker;"

# Import the dump (from the `database` folder)
mysql -u root -p issue_tracker < database/issue_tracker.sql


7. **Generate app key**:

```bash
php artisan key:generate
```

8. **Run the application**:

```bash
php artisan serve
```

Visit `http://127.0.0.1:8000` in your browser.

---

## Authentication

* This project uses Laravel Breeze for login/register.
* To login, use existing users in the SQL dump, or register a new account.

---

## Directory Structure

* `app/Models` — Eloquent models (User, Project, Issue, Comment, Tag)
* `app/Http/Controllers` — Controllers handling requests
* `resources/views` — Blade templates
* `routes/web.php` — Application routes
* `public/` — Public assets (CSS, JS, images)

---

## AJAX Features

* Comments on issue page load via AJAX and are paginated.
* Adding a comment posts via AJAX without page reload.
* Tags can be attached/detached via AJAX on the issue detail page.

---

## Notes

* `.env` file is **not included** in the repository.
* Make sure database credentials match your local setup.
* Tailwind is used for main styling, Bootstrap optionally for buttons and list groups.

