
<?php


    include "config.php";
    $cat_id = $_GET['cid'];

    $sql = "DELETE FROM category WHERE category_id = '{$cat_id}';";

    if(mysqli_query($conn,$sql)){
        header("Location:{$hostname}/admin/category.php");
    }
    else{
        echo "Record can't delete";
    }

    mysqli_close($conn);

?>

 ?>
