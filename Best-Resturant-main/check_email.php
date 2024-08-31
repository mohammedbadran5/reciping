<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "mealcraft";

$conn = new mysqli($servername, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$email = $_POST['email'];

$sql = "SELECT * FROM users WHERE email='$email'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "exists";
} else {
    echo "not_exists";
}

$conn->close();
?>
