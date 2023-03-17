<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="../design/bootstrap/css/bootstrap.min.css">
  
  </head>
  <body>
        <?php
        session_start();
        //getting admin name from session
        if(!empty($_SESSION["session_admin_name"])){
          $name = $_SESSION["session_admin_name"];
        } else{
          header("location: index.php");
        }
         ?>
        <nav class="navbar navbar-expand-sm bg-info navbar-dark">
          <!-- Brand -->
          <a class="navbar-brand" href="admin_dashboard.php">Admin Panel</a>

          <!-- Links -->
          <ul class="navbar-nav">
           
			 <li class="nav-item">
              <a class="nav-link" href="category.php">Add Category</a>
            </li>
			
			
             <!-- Dropdown -->
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                News Management
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="add_news.php">Add News</a>
                <a class="dropdown-item" href="manage_news.php">Manage News</a>
              </div>
            </li>
            
            
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
                <?php echo $name; ?>
              </a>
              <div class="dropdown-menu">
                <a class="dropdown-item" href="logout.php">Logout</a>
              </div>
            </li>
          </ul>
        </nav>
