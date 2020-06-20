<?php

session_start();

include_once('../includes/connection.php');

 if (isset($_POST['username'], $_POST['password'])) {
     $username = $_POST['username'];
     $password = $_POST['password'];

     if (empty($username) or empty($password)) {
         $error = 'All fields are required!';
     } else {
         $query = $pdo->prepare("SELECT * FROM users WHERE user_name = ? AND user_password = ?");

         $query->bindValue(1, $username);
         $query->bindValue(2, $password);

         $query->execute();

         $id=$query->fetch(PDO::FETCH_ASSOC);
         if ($id) {
             session_start();
             $_SESSION['user_id'] = $id['user_id'];
         }

         $num = $query->rowCount();

         if ($num == 1) {
             $_SESSION['logged_in'] = true;
             header('Location: ../user/index.php');
             exit();
         } else {
             $error = 'Incorrect details!';
         }
     }
 }

?>

<html>
 <head>
     <title>Login</title>
     <link rel="stylesheet" href="../style.css"/>
    </head>

    <body>
        <div class="container">

            <a href="#" id="logo">News Portal Login:</a>

            <br><br>

            <?php if (isset($error)) { ?>
             <small style="color:#aa0000"><?php echo $error; ?></small>
             <br><br>
            <?php } ?>

            <form action="../user/login.php" method="post" autocomplete="off">
                <input type="text" name="username" placeholder="Username" />
                <input type="password" name="password" placeholder="Password" />
                <input type="submit" value="Login" />
            </form>

        </div>

     </body>

</html>
