<?php

require_once('../includes/connection.php');
require_once('../includes/article.php');

session_start();

$article = new Article;
$articles = $article->fetch_all();

?>

<html>
 <head>
     <title>News portal</title>
     <link rel="stylesheet" href="../style.css"/>
    </head>

    <body>
        <div class="container">

        <br><br>

        <h1>All articles:</h1>

        <ol>
           <?php foreach ($articles as $article) { ?>
           <li><a href="article.php?id=<?php echo $article['article_id']; ?>">
           <?php echo $article['article_title']; ?>
                </a>
                 - <small>
                    posted <?php echo date('l jS', $article['article_timestamp']); ?>
                   </small></li>
            <?php } ?>
        </ol>

         <br><br>

            <a href="../index.php">&larr; Back</a>

        </div>

     </body>

</html>
