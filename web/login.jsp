<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
        <!-- Icons -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!-- Global CSS -->
        <link rel="stylesheet" href="css/styleGlobal.css">
        <!-- Login CSS -->
        <link rel="stylesheet" href="css/styleLogin.css">
    </head>
    <body>
        <div class="container">
            <div class="row login-body">
                <div class="col-md-8 nopadding">
                    <div class="login-quote">
                        <h1>VICE is the definitive guide to enlightening information.</h1>
                    </div>
                </div>
                <div class="col-md-4 login-content">
                    <div class="login-content-logo">
                        <img style="width: 100px;" src="image/branding/vice logo.png" alt="">
                    </div>

                    <form class="login-form" action="">
                        <input type="text" placeholder="Name" required><br>
                        <input type="password" placeholder="Password" required><br>
                        <input class="login-form-button" type="submit" name="signup" value="Sign up">
                        <input class="login-form-button" type="submit" name="login" value="Log in">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
