<?php

require_once('../includes/connection.php');
require_once('../includes/categories.php');

session_start();

$category = new Category;
$categories = $category->fetch_all();

?>

<html>
 <head>
     <title>News portal</title>
     <link rel="stylesheet" href="../style.css"/>
    </head>

    <body>
        <div class="container">
        <a href="" id="logo">News portal</a>

        <br><br>

        <h1>Categories:</h1>

        <ol>
             <?php foreach ($categories as $category) { ?>
             <li><a href="../view/bycategory.php?id=<?php echo $category['category_id']; ?>">
                 <?php echo $category['category_title']; ?>
                 </a>
              <?php } ?>
         </ol>

         <br><br>

         <small><a href="../view/list.php"><b>View all articles...</b></a></small>

         <div class="smalltag">
            <small><a href="logout.php">logout</a></small>
        <div>

        </div>

     </body>

</html>
