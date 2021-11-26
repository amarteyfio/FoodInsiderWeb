<?php include('app/database/db.php'); 


if (isset($_GET['id'])) {
  $post = selectOne('posts', ['id' => $_GET['id']]);
  //dd($post);
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel = 'stylesheet' href = 'assets/css/style.css'>
    <title>FDayBlog</title>
</head> 

<body>
  <header>
    <div class = "logo">
      <h1 class = 'logo-text'>FoodInsider</h1>
         
    </div>
    <ul class = "navbar">
        <li><a href = "index.php">Home</a></li>
        <li><a href = "index.php">Services</a></li>
        <li><a href = "index.php">About</a></li>
        <li><a href = "#">Sign Up</a></li>
        <li><a href = "#">Log in</a></li>
              
    </ul>
  </header>

  <!--Page Wrapper-->
  <div class = 'page-wrapper'>

    <div class = 'content clearfix'>

        <!--Content-->
        <div class="main-content">
            
          <h1 class="post-title"><?php echo $post['title']; ?></h1>
          <div class = 'post-content'>
            <p>
            <?php echo html_entity_decode($post['body']);?></p>
          </div>
          

        </div>

      

      <!--Sidebar-->
      <div class="sidebar">

        <div class="section search">
          <h2 class="section-title">What are you looking for?</h2>
          <form action="index.html" method="post">
            <input type="text" name="search-term" class="text-input" placeholder="Search...">
          </form>
        </div>


        <div class="section topics">
          <h2 class="section-title">Campus Cuisine Links</h2>
          <ul>
            <li><a href="#">Munchies</a></li>
            <li><a href="#">Akono</a></li>
            <li><a href="#">Big Ben</a></li>
            <li><a href="#">Lynes Cuisine</a></li>
            <li><a href="#">Aunty Caro</a></li>
            
          </ul>
        </div>

      </div>
      <!-- // sidebar -->

    </div>
  </div>
  </div>
  <!--Page Wrapper-->
    

  
  <!--footer-->
  <?php include ("app/includes/footer.php"); ?>  
</body>
</html>
