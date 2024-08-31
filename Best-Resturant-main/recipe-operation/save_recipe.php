<?php
session_start();

if (!isset($_SESSION['userid'])) {
    echo json_encode(['success' => false, 'message' => 'User not logged in.']);
    exit();
}

include('../db_connection.php');

$user_id = $_SESSION['userid'];
$recipe_label = $_POST['recipe_label'];
$recipe_data = $_POST['recipe_data'];

$stmt = $conn->prepare("INSERT INTO liked_recipes (user_id, recipe_label, recipe_data) VALUES (?, ?, ?)");
$stmt->bind_param("iss", $user_id, $recipe_label, $recipe_data);

if ($stmt->execute()) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'message' => 'Error saving recipe.']);
}

$stmt->close();
$conn->close();
?>
