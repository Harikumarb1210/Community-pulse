<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Community Pulse</title>
    <style>
        :root {
            --primary-color: #4361ee;
            --secondary-color: #3f37c9;
            --accent-color: #4895ef;
            --light-color: #f8f9fa;
            --dark-color: #212529;
            --success-color: #4cc9f0;
            --error-color: #f72585;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f5f7fa;
            color: var(--dark-color);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
            color: var(--primary-color);
            display: flex;
            align-items: center;
        }

        .logo span {
            color: var(--accent-color);
        }

        nav a {
            color: var(--dark-color);
            text-decoration: none;
            margin-left: 1.5rem;
            font-weight: 500;
            transition: color 0.3s;
        }

        nav a:hover {
            color: var(--primary-color);
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
        }

        .auth-card {
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            padding: 2.5rem;
            transition: all 0.3s ease;
        }

        .auth-card:hover {
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
        }

        .auth-title {
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
            color: var(--dark-color);
            text-align: center;
        }

        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: 500;
            color: var(--dark-color);
        }

        .form-control {
            width: 100%;
            padding: 0.8rem 1rem;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s;
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.2);
            outline: none;
        }

        .btn {
            display: inline-block;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 8px;
            padding: 0.8rem 1.5rem;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s;
            width: 100%;
        }

        .btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-2px);
        }

        .btn:active {
            transform: translateY(0);
        }

        .auth-footer {
            text-align: center;
            margin-top: 1.5rem;
            color: #666;
        }

        .auth-footer a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }

        .auth-footer a:hover {
            text-decoration: underline;
        }

        .hidden {
            display: none;
        }

        @media (max-width: 768px) {
            header {
                padding: 1rem;
                flex-direction: column;
                gap: 1rem;
            }

            nav {
                width: 100%;
                display: flex;
                justify-content: space-around;
            }

            nav a {
                margin: 0;
            }

            .auth-card {
                padding: 1.5rem;
            }
        }

        /* Animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .auth-card {
            animation: fadeIn 0.5s ease-out;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">Community<span>Pulse</span></div>
        <nav>
            <a href="#" id="home-link">Home</a>
        </nav>
    </header>

    <div class="container">
        <!-- Login Form -->
        <div class="auth-card" id="login-card">
            <h1 class="auth-title">User Login</h1>
            <form id="login-form">
                <div class="form-group">
                    <label for="login-username">User Name</label>
                    <input type="text" id="login-username" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="login-password">Password</label>
                    <input type="password" id="login-password" class="form-control" required>
                </div>
                <button type="submit" class="btn">Login</button>
            </form>
            <div class="auth-footer">
                Don't have an account? <a href="#" id="show-register">Register here</a>
            </div>
        </div>

        <!-- Registration Form -->
        <div class="auth-card hidden" id="register-card">
            <h1 class="auth-title">Register</h1>
            <form id="register-form">
                <div class="form-group">
                    <label for="register-username">User Name</label>
                    <input type="text" id="register-username" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="register-email">Email</label>
                    <input type="email" id="register-email" class="form-control" required>
                </div>
                <div class="form-group">
                    <label for="register-phone">Phone</label>
                    <input type="tel" id="register-phone" class="form-control">
                </div>
                <div class="form-group">
                    <label for="register-password">Password</label>
                    <input type="password" id="register-password" class="form-control" required>
                </div>
                <button type="submit" class="btn">Register</button>
            </form>
            <div class="auth-footer">
                Already have an account? <a href="#" id="show-login">Login</a>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Toggle between login and register forms
            const showRegister = document.getElementById('show-register');
            const showLogin = document.getElementById('show-login');
            const loginCard = document.getElementById('login-card');
            const registerCard = document.getElementById('register-card');

            showRegister.addEventListener('click', function(e) {
                e.preventDefault();
                loginCard.classList.add('hidden');
                registerCard.classList.remove('hidden');
            });

            showLogin.addEventListener('click', function(e) {
                e.preventDefault();
                registerCard.classList.add('hidden');
                loginCard.classList.remove('hidden');
            });

            // Form submissions
            const loginForm = document.getElementById('login-form');
            const registerForm = document.getElementById('register-form');

            loginForm.addEventListener('submit', function(e) {
                e.preventDefault();
                const username = document.getElementById('login-username').value;
                const password = document.getElementById('login-password').value;
                
                // Here you would typically send this data to your server
                console.log('Login attempt with:', { username, password });
                
                // Simulate successful login
                alert(`Welcome back, ${username}!`);
            });

            registerForm.addEventListener('submit', function(e) {
                e.preventDefault();
                const username = document.getElementById('register-username').value;
                const email = document.getElementById('register-email').value;
                const phone = document.getElementById('register-phone').value;
                const password = document.getElementById('register-password').value;
                
                // Here you would typically send this data to your server
                console.log('Registration attempt with:', { username, email, phone, password });
                
                // Simulate successful registration
                alert(`Account created for ${username}! You can now login.`);
                registerCard.classList.add('hidden');
                loginCard.classList.remove('hidden');
                loginForm.reset();
                registerForm.reset();
            });

            // Home link
            document.getElementById('home-link').addEventListener('click', function(e) {
                e.preventDefault();
                alert('Redirecting to home page...');
                // window.location.href = '/';
            });
        });
    </script>
</body>
</html>
