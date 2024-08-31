<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
    <style>
        .text-danger { color: red; }
        .text-success { color: green; }
    </style>
</head>
<body>
    <h1>Change Password</h1>
    <form id="change-password-form">
        <label for="old_password">Old Password:</label>
        <input type="password" id="old_password" name="old_password" required>
        <p id="old-password-message" class="text-danger"></p><br>
        
        <label for="new_password">New Password:</label>
        <input type="password" id="new_password" name="new_password" required oninput="checkPasswordMatch();">
        <small id="password-length" class="form-text text-muted"></small>
        <small id="password-uppercase" class="form-text text-muted"></small>
        <small id="password-digit" class="form-text text-muted"></small>
        <br>
        
        <label for="confirm_password">Confirm Password:</label>
        <input type="password" id="confirm_password" name="confirm_password" required oninput="checkPasswordMatch();">
        <p id="password-message" class="text-danger"></p><br>
        
        <input type="submit" value="Change Password">
    </form>

    <script>
        function checkPasswordMatch() {
            var password = document.getElementById("new_password").value;
            var confirmPassword = document.getElementById("confirm_password").value;
            var messageElement = document.getElementById("password-message");
            var isPasswordValid = true;

            if (password === confirmPassword) {
                messageElement.textContent = "Passwords match";
                messageElement.className = "text-success";
            } else {
                messageElement.textContent = "Passwords do not match";
                messageElement.className = "text-danger";
            }
			
            var lengthElement = document.getElementById("password-length");
            var uppercaseElement = document.getElementById("password-uppercase");
            var digitElement = document.getElementById("password-digit");

            lengthElement.textContent = "";
            uppercaseElement.textContent = "";
            digitElement.textContent = "";

            if (password.length < 8) {
                lengthElement.textContent = "Password must be at least 8 characters long";
                lengthElement.className = "text-danger";
                isPasswordValid = false;
            } else {
                lengthElement.textContent = "Password length requirement met";
                lengthElement.className = "text-success";
            }
            if (!password.match(/[A-Z]/)) {
                uppercaseElement.textContent = "Password must contain at least one uppercase letter";
                uppercaseElement.className = "text-danger";
                isPasswordValid = false;
            } else {
                uppercaseElement.textContent = "Uppercase letter requirement met";
                uppercaseElement.className = "text-success";
            }
            if (!password.match(/[0-9]/)) {
                digitElement.textContent = "Password must contain at least one digit";
                digitElement.className = "text-danger";
                isPasswordValid = false;
            } else {
                digitElement.textContent = "Digit requirement met";
                digitElement.className = "text-success";
            }

            return isPasswordValid && password === confirmPassword;
        }

        document.getElementById('change-password-form').onsubmit = function(e) {
            e.preventDefault();

            var oldPassword = document.getElementById('old_password').value;
            var newPassword = document.getElementById('new_password').value;
            var confirmPassword = document.getElementById('confirm_password').value;

            var xhr = new XMLHttpRequest();
            xhr.open('POST', './change_password.php', true);
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function() {
                if (xhr.status === 200) {
                    var response = JSON.parse(xhr.responseText);
                    if (response.status === 'success') {
                        alert(response.message);
                        window.location.href = '../profile.php';
                    } else {
                        document.getElementById('password-message').textContent = response.message;
                        document.getElementById('password-message').className = 'text-danger';
                    }
                }
            };
            xhr.send('old_password=' + encodeURIComponent(oldPassword) + '&new_password=' + encodeURIComponent(newPassword) + '&confirm_password=' + encodeURIComponent(confirmPassword));
        };
    </script>
</body>
</html>

