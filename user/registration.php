<?php

include_once('../includes/connection.php');

      if (isset($_POST['register'])) {
          $username = $_POST['username'];
          $password = $_POST['password'];

          if (empty($username) or empty($password)) {
              $error = 'All fields are required!';
          } else {
              $query = $pdo->prepare("INSERT INTO users (user_name, user_password) VALUES (?, ?)");

              $query->bindValue(1, $username);
              $query->bindValue(2, $password);

              $query->execute();

              header('Location: ../index.php');
          }
      }
?>

<html>
 <head>
     <title>Registration</title>
     <link rel="stylesheet" href="../style.css"/>
    </head>

    <body>

        <div class="container">

            <a href="#" id="logo">News Portal registration</a>

            <br><br>

             <h4>Enter your username and password:</h4>

             <br><br>

            <?php if (isset($error)) { ?>
             <small style="color:#aa0000"><?php echo $error; ?></small>
             <br><br>
            <?php } ?>

            <form action="registration.php" method="post" autocomplete="off">
                <input type="text" name="username" placeholder="Username" />
                <input type="password" name="password" placeholder="Password" />
                <input type="submit" name="register" value="Register" />
            </form>

        </div>

     </body>

</html>
