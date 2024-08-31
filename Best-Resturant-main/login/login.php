<?php
session_start();
include('../db_connection.php'); // include your database connection

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);

    // Check credentials
    $sql = "SELECT id, name, email FROM users WHERE email = '$email' AND password = '$password'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        // Store user data in session
        $_SESSION['userid'] = $row['id'];
        $_SESSION['username'] = $row['name'];

        // Redirect to profile page
        header("Location: ../profile.php"); // Redirect to profile page
		exit();
    } else {
        header("Location: ../login/emaillogin.html?error=Invalid Credentials"); // Redirect with error message
		exit();
    }
}
?>
