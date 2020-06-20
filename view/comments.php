<?php

require_once('../includes/connection.php');

class Comment
{
    public function fetch_comment($comment_id)
    {
        global $pdo;

        $query = $pdo->prepare("SELECT * FROM comments WHERE article_id = $comment_id");
        $query->execute();

        return $query->fetchAll();
    }
}

      $comment = new Comment;

      if (isset($_GET['id'])) {
          $id = $_GET['id'];
          $comments = $comment->fetch_comment($id);
}

?>

  <link rel="stylesheet" href="../style.css"/>

    <h4>All comments:</h4>

      <?php foreach ($comments as $comm) { ?>
      <div style="border:1px solid brown;padding:4px;margin:4px;"> <?php echo $comm['comment_content']; ?></div>
      <?php } ?>

      <br><br><br>

    <a href="../index.php">&larr; Back</a>
