<?php include 'header.php'; ?>
    <div id="main-content">
      <div class="container">
        <div class="row">
            <div class="col-md-8">
                <!-- post-container -->
                <div class="post-container">
                  <?php
                  include "config.php";
                  if(isset($_GET['search'])){
                    $srch_term=mysqli_real_escape_string($conn,$_GET['search']);
                  }
                  $sql1 = "SELECT * FROM post
                      WHERE title LIKE '%{$srch_term}%'";
                  $result1 = mysqli_query($conn,$sql1) or die("Pagination Query Failed");
                  $row1 = mysqli_fetch_assoc($result1);
                   ?>
                  <h2 class="page-heading">Search : <?php echo $srch_term; ?></h2>
                  <?php


                    $limit = 3;
                    if(isset($_GET['page'])){
                        $page = $_GET['page'];
                    }
                    else {
                        $page = 1;
                    }

                    $offset = ($page -1)*$limit;

                    $sql = "SELECT * FROM post
                    LEFT JOIN category ON post.category = category.category_id
                    LEFT JOIN user ON post.author = user.user_id
                    WHERE post.title LIKE '%{$srch_term}%' OR post.description LIKE '%{$srch_term}%' OR user.username LIKE '%{$srch_term}%'
                    ORDER BY post.post_id DESC LIMIT {$offset},{$limit}";

                    $result = mysqli_query($conn,$sql) or die("Query Faild");
                    if(mysqli_num_rows($result) > 0){
                      while ($row = mysqli_fetch_assoc($result)) {
                   ?>
                    <div class="post-content">
                        <div class="row">
                            <div class="col-md-4">
                                <a class="post-img" href="single.php?id=<?php echo $row['post_id']; ?>"><img src="admin/upload/<?php echo $row['post_img']; ?>" alt=""/></a>
                            </div>
                            <div class="col-md-8">
                                <div class="inner-content clearfix">
                                    <h3><a href='single.php?id=<?php echo $row['post_id']; ?>'><?php echo $row['title']; ?></a></h3>
                                    <div class="post-information">
                                        <span>
                                            <i class="fa fa-tags" aria-hidden="true"></i>
                                            <a href='category.php?search=<?php echo $row['category']; ?>'><?php echo $row['category_name']; ?></a>
                                        </span>
                                        <span>
                                            <i class="fa fa-user" aria-hidden="true"></i>
                                            <a href='author.php?search=<?php echo $row['author']; ?>'><?php echo $row['username']; ?></a>
                                        </span>
                                        <span>
                                            <i class="fa fa-calendar" aria-hidden="true"></i>
                                            <?php echo $row['post_date']; ?>
                                        </span>
                                    </div>
                                    <p class="description">
                                        <?php echo substr($row['description'],0,130) . '...'; ?>
                                    <a class='read-more pull-right' href='single.php?id=<?php echo $row['post_id']; ?>'>read more</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                        }
                      }else{
                        echo "<h2>Result not found.</h2>";
                      }


                    if(mysqli_num_rows($result1) > 0){

                        $total_record = mysqli_num_rows($result1);
                        $limit = 3;
                        $total_page = ceil($total_record/$limit);

                        echo "<ul class='pagination admin-pagination'>";
                            if($page > 1){
                                echo "<li><a href='author.php?search=".$srch_term ."&page=".($page-1)."'>Prev</a></li>";

                            }
                            for($i=1;$i<=$total_page;$i++){

                                if($i == $page){
                                    $active = "active";
                                }
                                else{
                                    $active = "";
                                }

                                echo '<li class="'.$active.'"><a href="author.php?search='.$srch_term .'&page='.$i.'">'.$i.'</a></li>';
                            }
                            if($total_page > $page){
                                echo "<li><a href='author.php?search=".$srch_term. "&page=".($page+1)."'>Next</a></li>";
                            }
                        echo "</ul>";
                      }
                     ?>
                </div><!-- /post-container -->
            </div>
            <?php include 'sidebar.php'; ?>
        </div>
      </div>
    </div>
<?php include 'footer.php'; ?>
