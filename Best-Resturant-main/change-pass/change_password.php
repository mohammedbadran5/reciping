<?php
session_start();
$response = array('status' => '', 'message' => '');

if (!isset($_SESSION['userid'])) {
    $response['status'] = 'error';
    $response['message'] = 'You need to log in first.';
    echo json_encode($response);
    exit();
}

include('../db_connection.php');

$userid = $_SESSION['userid'];
$old_password = $_POST['old_password'];
$new_password = $_POST['new_password'];
$confirm_password = $_POST['confirm_password'];

function is_valid_password($password) {
    if (strlen($password) < 8) {
        return "Password must be at least 8 characters long";
    }
    if (!preg_match('/[A-Z]/', $password)) {
        return "Password must contain at least one uppercase letter";
    }
    if (!preg_match('/[0-9]/', $password)) {
        return "Password must contain at least one digit";
    }
    return true;
}

$sql = "SELECT password FROM users WHERE id = '$userid'";
$result = $conn->query($sql);

if ($result->num_rows == 1) {
    $row = $result->fetch_assoc();
    $current_password = $row['password'];

    if ($old_password === $current_password) {
        if ($new_password === $confirm_password) {
            $validation_result = is_valid_password($new_password);
            if ($validation_result === true) {
                $sql = "UPDATE users SET password = '$new_password' WHERE id = '$userid'";
				$sql2 = "UPDATE users SET confirm_password = '$new_password' WHERE id = '$userid'";
				$conn->query($sql2);
                if ($conn->query($sql) === TRUE) {
                    $response['status'] = 'success';
                    $response['message'] = 'Password updated successfully';
                } else {
                    $response['status'] = 'error';
                    $response['message'] = "Error: " . $conn->error;
                }
            } else {
                $response['status'] = 'error';
                $response['message'] = $validation_result;
            }
        } else {
            $response['status'] = 'error';
            $response['message'] = 'New password and confirm password do not match';
        }
    } else {
        $response['status'] = 'error';
        $response['message'] = 'Old password is incorrect';
    }
} else {
    $response['status'] = 'error';
    $response['message'] = 'User not found';
}

$conn->close();
echo json_encode($response);
?>
