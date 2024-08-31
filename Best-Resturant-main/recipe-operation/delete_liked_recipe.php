<?php
session_start();
if (!isset($_SESSION['userid'])) {
    header("Location: ../login/login.html");
    exit();
}

include('../db_connection.php');

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $userid = $_SESSION['userid'];
    $recipe_id = $_POST['recipe_id'];

    $stmt = $conn->prepare("DELETE FROM liked_recipes WHERE id = ? AND user_id = ?");
    $stmt->bind_param("ii", $recipe_id, $userid);

    if ($stmt->execute()) {
        echo "success";
    } else {
        echo "error";
    }
    $stmt->close();
    $conn->close();
}
?>
