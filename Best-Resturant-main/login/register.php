<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "mealcraft"; 
// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

//**********Create*******************
// // Include database connection script
// include_once 'db_connect.php';
/*
 // SQL statement to create table
 $sql = "CREATE TABLE users (
     id INT(11) AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(100) NOT NULL,
     email VARCHAR(100) NOT NULL,
     phone VARCHAR(20) NOT NULL,
     password VARCHAR(255) NOT NULL,
	   confirm_password VARCHAR(255) NOT NULL,
     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
 )";

 if ($conn->query($sql) === TRUE) {
     echo "Table 'users' created successfully";
 } else {
     echo "Error creating table: " . $conn->error;
 }

*/




//**********Insert*******************

// Retrieve form data using $_POST
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$password = $_POST['password'];
$confirm_password=$_POST['confirm_password'];

// Perform SQL query to insert data into database
$sql = "INSERT INTO users (name, email, phone, password,confirm_password) VALUES ('$name', '$email', '$phone', '$password','$confirm_password')";

if ($conn->query($sql) === TRUE) {
    // Registration successful, redirect to login page
    header("Location: login.html");
    exit(); // Ensure that no further code is executed after redirection
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

// Close database connection
$conn->close();
?>
