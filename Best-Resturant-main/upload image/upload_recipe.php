<?php
session_start();

// Check if user is not logged in
if (!isset($_SESSION['userid'])) {
    // Store recipe data in session variables
    $_SESSION['recipe_title'] = $_POST['title'];
    $_SESSION['recipe_ingredients'] = $_POST['ingredients'];
    $_SESSION['recipe_video'] = $_POST['video'];

    // Redirect to login page with a message
    echo "<script>alert('Please login to save your recipe, then add your recipe.'); window.location.href='../login/login.html';</script>";
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    include('../db_connection.php');

    $title = $_POST['title'];
    $ingredients = $_POST['ingredients'];
    $video = $_POST['video'];
    $userid = $_SESSION['userid'];


    // Handle file upload
    if (isset($_FILES['recipe_image']) && $_FILES['recipe_image']['error'] == 0) {
        $target_dir = "../uploads/";
        $target_file = $target_dir . basename($_FILES["recipe_image"]["name"]);
        $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

        // Validate image file type
        $validImageTypes = array("jpg", "jpeg", "png", "gif");

        if (!in_array($imageFileType, $validImageTypes)) {
            echo "<script>alert('Invalid image format. Only JPG, JPEG, PNG, and GIF are allowed.'); window.location.href='../add-recipe/add-recipe.html';</script>";
            exit();
        }

        move_uploaded_file($_FILES["recipe_image"]["tmp_name"], $target_file);
    } else {
        $target_file = null; // No image uploaded
    }

    // Check if there are stored recipe data in session
    if (isset($_SESSION['recipe_title']) && isset($_SESSION['recipe_ingredients']) && isset($_SESSION['recipe_video'])) {
        $title = $_SESSION['recipe_title'];
        $ingredients = $_SESSION['recipe_ingredients'];
        $video = $_SESSION['recipe_video'];

        // Clear session variables after retrieving them
        unset($_SESSION['recipe_title']);
        unset($_SESSION['recipe_ingredients']);
        unset($_SESSION['recipe_video']);
    }

    $sql = "INSERT INTO recipes (userid, title, ingredients, video, image) VALUES ('$userid', '$title', '$ingredients', '$video', '$target_file')";

    // Execute SQL query
    if (mysqli_query($conn, $sql)) {
        echo "<script>alert('Recipe has been added to your profile.'); window.location.href='../add-recipe/../profile.php';</script>";
    } else {
        echo "<script>alert('Error: " . mysqli_error($conn) . "'); window.location.href='../add-recipe/add-recipe.html';</script>";
    }

    mysqli_close($conn);
}
?>
