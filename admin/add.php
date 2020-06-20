<?php

session_start();

include_once('../includes/connection.php');

if (isset($_SESSION['logged_in'])) {
    if (isset($_POST['title'], $_POST['category'], $_POST['content'])) {
        $title = $_POST['title'];
        $category = $_POST['category'];
        $content = $_POST['content'];


        if (empty($title) or empty($category) or empty($content)) {
            $error = 'All fields are required.';
        } else {
            $query = $pdo->prepare('INSERT INTO articles (article_title, category_id, article_content, article_timestamp) VALUES (?, ?, ?, ?)');

            $query->bindValue(1, $title);
            $query->bindValue(2, $category);
            $query->bindValue(3, $content);
            $query->bindValue(4, time());

            $query->execute();

            header('Location: index.php');
        }
    } ?>

<html>
 <head>
     <title>Admin panel</title>
     <link rel="stylesheet" href="../style.css"/>
    </head>

    <body>
        <div class="container">

            <a href="index.php" id="logo">Admin panel</a>

            <br>

            <h4>Add article</h4>

            <?php if (isset($error)) { ?>
             <small style="color:#aa0000"><?php echo $error; ?></small>
             <br><br>
            <?php } ?>

            <form action="add.php" method="post" autocomplete="off">
                <input type="text" name="title" placeholder="Title" /> <br><br>
                <input type="text" name="category" placeholder="Category by ID(1-3)" /> <br><br>
                <textarea rows="15" cols="50" placeholder="Content" name="content"></textarea><br><br>
                <input type="submit" value="Add" />
            </form>

        </div>

     </body>

</html>

<?php
} else {
        header('Location: index.php');
    }
?>
