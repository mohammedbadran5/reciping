<?php
session_start();
include('db_connection.php');

$target_dir = "uploads/";
$original_filename = basename($_FILES["profile_picture"]["name"]);
$target_file = $target_dir . $original_filename;
$uploadOk = 1;
$imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));

$check = getimagesize($_FILES["profile_picture"]["tmp_name"]);
if($check !== false) {
    $uploadOk = 1;
} else {
    echo "File is not an image.";
    $uploadOk = 0;
}

if (file_exists($target_file)) {
    $i = 1;
    $new_filename = pathinfo($original_filename, PATHINFO_FILENAME) . '_' . $i . '.' . $imageFileType;
    while(file_exists($target_dir . $new_filename)) {
        $i++;
        $new_filename = pathinfo($original_filename, PATHINFO_FILENAME) . '_' . $i . '.' . $imageFileType;
    }
    $target_file = $target_dir . $new_filename;
    $original_filename = $new_filename;
}

if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif" ) {
    echo "<script>alert('Sorry, only JPG, JPEG, PNG & GIF files are allowed.'); window.location.href='profile.php';</script>";
    $uploadOk = 0;
}

if ($uploadOk == 0) {
    echo "<script>alert('Sorry, your file was not uploaded.'); window.location.href='profile.php';</script>";
} else {
    if (move_uploaded_file($_FILES["profile_picture"]["tmp_name"], $target_file)) {
        $userid = $_SESSION['userid'];
        $sql = "UPDATE users SET profile_picture = '$original_filename' WHERE id = '$userid'";
        if (mysqli_query($conn, $sql)) {
            header("Location: profile.php");
        } else {
            echo "<script>alert('Error updating record'); window.location.href='profile.php';</script>";
        }
    } else {
        echo "<script>alert('Sorry, there was an error uploading your file.'); window.location.href='profile.php';</script>";
    }
}
?>
