<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Recipe</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
    crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- Icon -->
  <!-- Navbar CSS -->
  <link rel="stylesheet" href="./assets/css/style.css">
  <link rel="stylesheet" href="./assets/css/add-recipe.css">
</head>

<body>
  <div class="container-fluid">
    <nav class="navbar navbar-expand-lg fixed-top">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mb-3 mt-3 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="./index.html">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="./add-recipe.html">Add Recipe</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="./profile.php">Profile</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <div class="d-flex align-items-center justify-content-center main-add-recipe">
      <!-- Display error message if any -->
      <?php if (isset($_SESSION['error'])): ?>
      <div class="alert alert-danger" role="alert">
        <?php echo $_SESSION['error']; unset($_SESSION['error']); ?>
      </div>
      <?php endif; ?>

      <!-- Display success message if any -->
      <?php if (isset($_SESSION['success'])): ?>
      <div class="alert alert-success" role="alert">
        <?php echo $_SESSION['success']; unset($_SESSION['success']); ?>
      </div>
      <?php endif; ?>

      <form action="upload_recipe.php" method="post" enctype="multipart/form-data">
        <div class="inpt-img d-flex flex-column justify-content-center align-items-center">
          <img src="./assets/img/image.png" alt="">
          <div id="customBtn" onclick="getFile()">Add Photo</div>
          <div style='height: 0px;width: 0px; overflow:hidden;'>
		  <input type="file" id="upfile" name="recipe_image" value="upload" onchange="sub(this)" accept="image/*" />
          </div>
        </div>
        <div class="inpt-title d-flex justify-content-center">
          <input type="text" class="add-recipe-input" name="title" placeholder="Title" required>
        </div>
        <div class="inpt-ingredients d-flex justify-content-center p-4">
          <textarea class="add-recipe-input" name="ingredients" placeholder="Ingredients" required></textarea>
        </div>
        <div class="inpt-title d-flex justify-content-center pl-5">
          <input type="text" class="add-recipe-input" name="video" placeholder="Youtube Video Link">
        </div>
        <div class="d-flex justify-content-center align-items-center pl-5">
          <button class="button-add-recipe btn btn-warning text-white" type="submit">Post</button>
        </div>
      </form>
    </div>
  </div>

  <footer class="Wrapper text-center">
    <div class="container">
      <div class="mx-auto">
        <p class="Title">Eat, Cook, Repeat</p>
        <p class="Subtitle">Share your best Recipe by uploading here !</p>
      </div>
      <div class="mx-auto NavList">
        <a href="#" class="NavItem"></a>
        <a href="#" class="NavItem"></a>
        <a href="#" class="NavItem"></a>
        <a href="#" class="NavItem"></a>
      </div>
    </div>
  </footer>


  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
    integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
    crossorigin="anonymous"></script>
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"
    integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <!-- Custom JS -->
  <script src="./assets/js/main.js"></script>
  <script src="./assets/js/custom-button.js"></script>
</body>

</html>
