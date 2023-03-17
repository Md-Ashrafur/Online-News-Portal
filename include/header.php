<!DOCTYPE html>
<html lang="en">
<head>
  <title>Online News Portal</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="./design/bootstrap/css/bootstrap.min.css">
  <style>
      .dropdown-menu > a:hover {
        background-color: DarkCyan;
      }
  </style>
</head>
<body>
<header>
  <nav class="navbar navbar-expand-lg navbar-dark bg-info">
    <a class="navbar-brand" href="index.php"> <i>Online News Portal </i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
	   <li class="nav-item">
          <a class="nav-link" href="user/login.php"><u>Log-In</u></a>
        </li>
	  
       

       
      </ul>
      <form class="form-inline my-2 my-lg-0" method="get" action="search.php">
        <input class="form-control mr-sm-2" type="search" name="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
</header>
</body>
</html>
