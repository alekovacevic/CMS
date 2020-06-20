<?php

include_once('../includes/connection.php');
include_once('../includes/article.php');

session_start();

$article = new Article;

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $data = $article->by_category($id); ?>

<html>
 <head>
     <title>News portal</title>
     <link rel="stylesheet" href="../style.css"/>
    </head>

    <body>
        <div class="container">

        <br><br>

        <ol>

          <?php foreach ($data as $art) { ?>
                 <li><a href="../view/article.php?id=<?php echo $art['article_id']; ?>">
                     <?php echo $art['article_title']; ?>
                     </a>
                 - <small>
                    posted <?php echo date('l jS', $art['article_timestamp']); ?>
                   </small></li>
                 <?php }
} ?>

             </ol>

         <br><br>

                <a href="../index.php">&larr; Back</a>

        </div>

     </body>

</html>
