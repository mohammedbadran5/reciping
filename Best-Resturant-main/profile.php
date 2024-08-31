<?php
session_start();
if (!isset($_SESSION['userid'])) {
    header("Location: login.html");
    exit();
}



include('../Best-Resturant-main/db_connection.php');

// التحقق من نجاح الاتصال بقاعدة البيانات
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$userid = $_SESSION['userid'];

// استرداد بيانات المستخدم
$stmt = $conn->prepare("SELECT name, email, profile_picture FROM users WHERE id = ?");
$stmt->bind_param("i", $userid);
$stmt->execute();
$user_result = $stmt->get_result();
$user = $user_result->fetch_assoc();

// استرداد الوصفات الخاصة بالمستخدم
$stmt = $conn->prepare("SELECT id, title, ingredients, video, image, created_at FROM recipes WHERE userid = ?");
$stmt->bind_param("i", $userid);
$stmt->execute();
$recipes_result = $stmt->get_result();

// استرداد الوصفات المحبوبة من قبل المستخدم
$stmt = $conn->prepare("SELECT id, recipe_label, recipe_data, recipe_image,created_at FROM liked_recipes WHERE user_id = ?");
$stmt->bind_param("i", $userid);
$stmt->execute();
$liked_result = $stmt->get_result();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Existing Styles */

/* Title and line styles */
.user-recipes h1,
.liked-recipes h2 {
    position: relative;
    display: inline-block;
    padding-bottom: 10px;
    cursor: pointer; /* Add cursor to indicate hoverability */
}

.user-recipes h1::after,
.liked-recipes h2::after {
    content: '';
    position: absolute;
    width: 100%;
    height: 1px;
    background-color: #000; /* You can change the color as needed */
    left: 0;
    bottom: 0;
    transform: scaleX(0);
    transform-origin: bottom right;
    transition: transform 0.3s ease-out;
}

.user-recipes h1:hover::after,
.liked-recipes h2:hover::after {
    transform: scaleX(1);
    transform-origin: bottom left;
}


        .profile-container {
            display: flex;
            flex-direction: column; /* Stack items vertically on small screens */
            border-top: 1px solid #ddd;
            padding-top: 20px;
        }

        .form-container {
            flex: 1;
            padding-right: 20px;
            border-right: 1px solid #ddd;
            margin-bottom: 20px;
            margin-right: 40px;
        }

        .form-container, .user-recipes, .liked-recipes {
            margin-bottom: 40px;
        }

        .user-form {
            text-align: center;
            margin-bottom: 40px;
            margin-right: 110px;
        }

        .profile-pic {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .recipes-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .recipe-card {
            position: relative;
            width: 100%;
            max-width: 300px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .recipe-card:hover {
            transform: scale(1.05);
        }

        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            cursor: pointer;
            font-size: 20px;
            color: red;
        }

        .recipe-card h3 {
            margin-top: 10px;
            font-size: 1.5em;
        }

        .recipe-card img {
            max-width: 100%;
            height: auto;
            border-radius: 4px;
        }

        .recipe-card p, .recipe-card a {
            margin-top: 10px;
            font-size: 1em;
        }

        .user-recipes h1, .liked-recipes h2 {
            margin-bottom: 20px;
            font-size: 2em;
        }

        .upload-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 20px;
            margin-left: 70px;
        }

        .upload-form input[type="file"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            margin-bottom: 10px;
        }

        .upload-form input[type="submit"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .upload-form input[type="submit"]:hover {
            background-color: #3e8e41;
        }

        .upload-form input[type="button"] {
            padding: 10px 20px;
            background-color: #ccc;
            color: #333;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .upload-form input[type="button"]:hover {
            background-color: #aaa;
        }

        .action-links {
            margin-top: 40px;
            text-align: center;
        }

        .action-links a {
            display: block;
            margin-bottom: 10px;
            color: #007bff;
            text-decoration: none;
        }

        .action-links a h4 {
            margin: 0;
            font-size: 1.2em;
        }

        .action-links a h1 {
            margin: 0;
            font-size: 1.5em;
        }

        .action-links a:hover {
            text-decoration: underline;
        }

        @media (min-width: 768px) {
            .profile-container {
                flex-direction: row; /* Align items horizontally on larger screens */
            }

            .form-container {
                width: 30%; /* Adjust the width for larger screens */
                padding-right: 40px;
            }

            .user-recipes, .liked-recipes {
                width: 70%; /* Adjust the width for larger screens */
            }
        }

        @media (max-width: 767px) {
            .form-container {
                padding-right: 0;
                border-right: none;
            }

            .profile-pic {
                width: 120px;
                height: 120px;
            }

            .recipe-card h3 {
                font-size: 1.2em;
            }

            .recipe-card p, .recipe-card a {
                font-size: 0.9em;
            }

            .user-recipes h1, .liked-recipes h2 {
                font-size: 1.5em;
            }
        }

    </style>
</head>
<body>
<div class="container mb-5 mt-5">
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">My Recipe</button>
        </li>
        <li class="nav-item" role="presentation">
            <button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Liked Recipe</button>
        </li>
        <li class="nav-item" role="presentation">
            <a href="./add-recipe/add-recipe.html" class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact" type="button" role="tab" aria-controls="contact" aria-selected="false">Add Recipe</button>
        </li>
    </ul>

    <div class="profile-container">
        <!-- Form and Action Links -->
        <div class="form-container">
            <div class="user-form text-center mt-5">
                <img src="uploads/<?php echo htmlspecialchars($user['profile_picture']); ?>" class="profile-pic" alt="Profile Picture"><br>
                <h3><?php echo htmlspecialchars($user['name']); ?></h3>
                <p><?php echo htmlspecialchars($user['email']); ?></p>

                <div class="form-container">
                    <form class="upload-form" action="upload.php" method="post" enctype="multipart/form-data">
                    
                        <input type="file" id="profile_picture" name="profile_picture" required><br>
                        <input type="submit" value="Upload Picture">
                    </form>
                </div>

                <div class="action-links">
                    <a href="../Best-Resturant-main/login/logout.php"><h4>Logout</h4></a>
                    <a href="../Best-Resturant-main/change-pass/change_password(html).php"><h1>Change Password</h1></a>
                </div>
            </div>
        </div>

        <!-- User Recipes -->
        <div class="user-recipes">
            <h1>Recipes you Create</h1>
            <div class="recipes-container">
                <?php while ($row = $recipes_result->fetch_assoc()): ?>
                    <div class="recipe-card" data-recipe-id="<?php echo htmlspecialchars($row['id']); ?>">
                        <span class="close-btn" onclick="removeCard(this)">×</span>
                        <h3><?php echo htmlspecialchars($row['title']); ?></h3>
                        <p><?php echo htmlspecialchars($row['ingredients']); ?></p>
                        <?php if (!empty($row['video'])): ?>
                            <a href="<?php echo htmlspecialchars($row['video']); ?>" target="_blank">Watch Video</a>
                        <?php endif; ?>
                        <?php if (!empty($row['image'])): ?>
                            <img src="uploads/<?php echo htmlspecialchars($row['image']); ?>" alt="Recipe Image">
                        <?php endif; ?>
                        <p>Added on: <?php echo htmlspecialchars($row['created_at']); ?></p>
                    </div>
                <?php endwhile; ?>
            </div>
        </div>

        <!-- Liked Recipes -->
        <div class="liked-recipes">
            <h2>Liked Recipes</h2>
            <div class="recipes-container">
                <?php while ($row = $liked_result->fetch_assoc()): ?>
                    <?php
                    $recipe_data = trim($row['recipe_data'], '"');
                    $recipe_image = $row['recipe_image']; 
                    ?>
                    <div class="recipe-card" data-recipe-id="<?php echo htmlspecialchars($row['id']); ?>">
                        <span class="close-btn" onclick="removeLikedRecipe(this)">×</span>
                        <img src="<?php echo $recipe_image; ?>" alt="Recipe Image" class="recipe-card__img">
                        <h3><?php echo htmlspecialchars($row['recipe_label']); ?></h3>
                        <a href="<?php echo htmlspecialchars($recipe_data); ?>" target="_blank">View Recipe</a>
                        <p>Added on: <?php echo htmlspecialchars($row['created_at']); ?></p>
                    </div>
                <?php endwhile; ?>
            </div>
        </div>
    </div>
    <script>
        function removeCard(button) {
            var card = button.parentElement;
            var recipeId = card.getAttribute('data-recipe-id');

            if (confirm("Are you sure you want to delete this recipe?")) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "./recipe-operation/delete_recipe.php", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                        if (xhr.responseText === "success") {
                            card.remove();
                        } else {
                            alert("Error deleting recipe. Please try again.");
                        }
                    }
                };
                xhr.send("recipe_id=" + recipeId);
            }
        }

        function removeLikedRecipe(button) {
            var card = button.parentElement;
            var recipeId = card.getAttribute('data-recipe-id');

            if (confirm("Are you sure you want to delete this liked recipe?")) {
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "./recipe-operation/delete_liked_recipe.php", true);
                xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
                xhr.onreadystatechange = function () {
                    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
                        if (xhr.responseText === "success") {
                            card.remove();
                        } else {
                            alert("Error deleting liked recipe. Please try again.");
                        }
                    }
                };
                xhr.send("recipe_id=" + recipeId);
            }
        }
    </script>
</div>
<?php
$stmt->close();
$conn->close();
?>
</body>
</html>


