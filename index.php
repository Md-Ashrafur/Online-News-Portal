<?php
  include_once "include/header.php";
  include_once "config.php";
 ?>

 <div>
 <img class="d-block w-100 " src="images/1.png" alt="First image">
 </div>
 
 <div class="mt-3 text-center alert alert-primary" role="alert">
  <h3>Welcome to Online News Portal.</h3>
 </div>

       <div class="container bg-light">
         <div class="row">
           <!-- Data collect -->
           <?php
               $result = mysqli_query($conn, "SELECT news.news_id, news.title, news.description, news.news_date, news.image, category.category_name FROM news
                         LEFT JOIN category ON news.category = category.category_id ORDER BY news.news_id DESC");
               while($data = mysqli_fetch_assoc($result)){
            ?>
           <div class="col-lg-4 mb-4">
             <div class="card" style="width: 18rem;">
              <img class="card-img-top" src="admin/upload/<?php echo $data['image']; ?>" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title effect-underline text-center"><b><?php echo $data['title']; ?></b></h5>
                <p class="card-text text-center"><?php echo substr($data['description'], 0, 170)." ..." ?></p>
                  <ul class="list-group list-group-flush">
                    <li class="list-group-item text-center"><?php echo $data['category_name']; ?></li>
                    <li class="list-group-item text-center"><?php echo "Uploaded on: " .$data['news_date']; ?></li>
                  </ul>
                <a href="single_view.php?id=<?php echo $data['news_id']; ?>" class="btn btn-primary">Read more...</a>
              </div>
            </div>
           </div>

             <?php } ?>
          </div>
        </div>




 <?php
   include_once "include/footer.php";
  ?>
