<?php
  include_once "include/user_header.php";
  include_once "../config.php";
 ?>

<div class="container bg-link">

  <?php

      $news_id = $_GET['id'];
      $result = mysqli_query($conn, "SELECT news.news_id, news.title, news.description, news.image, news.category, news.news_date, category.category_name FROM news
                LEFT JOIN category ON news.category = category.category_id WHERE news.news_id = {$news_id}")
                or die("query failed.");
      while($data = mysqli_fetch_assoc($result)){
  ?>

  <div class=" mx-auto mt-3">
    <div class="alert alert-info text-center">
      <h3><b><?php echo $data['title']; ?></b></h3>
      <span> <u><?php echo $data['category_name']; ?></u>  </span>
      <span> <u><?php echo ", Uploaded on: ".$data['news_date']; ?></u>  </span>
    </div>
    <div class=" text-center ">
      <span class="border border-info">
        <img  class="img-fluid" src="../admin/upload/<?php echo $data['image']; ?>">
      </span>
    </div>
    <div class="mt-3 text-justify">
      <p><?php echo $data['description']; ?></p>
    </div>
  </div>

  <?php } ?>

</div>

<?php
  include_once "include/user_footer.php";
 ?>
