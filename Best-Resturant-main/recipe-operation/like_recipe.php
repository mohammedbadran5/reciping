<?php
session_start();
include('../db_connection.php');

if (!isset($_SESSION['userid'])) {
    header("HTTP/1.1 401 Unauthorized");
    exit();
}

$recipe_id = $_POST['recipe_id'];
$user_id = $_SESSION['userid'];

// Check if the recipe is already liked
$stmt = $conn->prepare("SELECT * FROM liked_recipes WHERE recipe_id = ? AND user_id = ?");
$stmt->bind_param("ii", $recipe_id, $user_id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    // Recipe already liked
    echo "already_liked";
} else {
    // Like the recipe
    $stmt = $conn->prepare("INSERT INTO liked_recipes (recipe_id, user_id) VALUES (?, ?)");
    $stmt->bind_param("ii", $recipe_id, $user_id);
    
    if ($stmt->execute()) {
        echo "success";
    } else {
        echo "error";
    }
}
?>
