<?php

require_once('../includes/connection.php');
require_once('../includes/article.php');

session_start();
if (isset($_SESSION['user_id'])) {
    if (isset($_POST['comment'])) {
        if (isset($_GET['id'])) {
            $page = $_GET['id'];
            $comment = $_POST['comment'];
            $user = $_SESSION['user_id'];

            if (empty($comment)) {
                $error = 'Comment must be entered.';
            } else {
                $query = $pdo->prepare('INSERT INTO comments (comment_content, article_id, user_id) VALUES (?, ?, ?)');

                $query->bindValue(1, $comment);
                $query->bindValue(2, $page);
                $query->bindValue(3, $user);

                $query->execute();
            }
        }
    }
}

$article = new Article;

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $data = $article->fetch_data($id); ?>

<html>
 <head>
     <title>Articles</title>
     <link rel="stylesheet" href="../style.css"/>
    </head>

    <body>
        <div class="container">

            <h4><?php echo $data['article_title']; ?> -
                <small>posted <?php echo date('l jS', $data['article_timestamp']); ?></small>
            </h4>

            <p><?php echo $data['article_content']; ?></p>
            <br>
            <br>

            <br>
            <br>
            <br>

            <form action="article.php?id=<?php echo $_GET['id']; ?>" method="post">
            <textarea rows="15" cols="50" placeholder="Comment" name="comment"></textarea><br><br>
            <input type="submit" value="Comment" />
            </form>

            <br>

            <a href="comments.php?id=<?php echo $data['article_id']; ?>">View comments</a>

            <br><br><br><br>

            <a href="../index.php">&larr; Back</a>

        </div>

     </body>

</html>

<?php
} else {
        header('Location: ../index.php');
        exit();
    }
?>
