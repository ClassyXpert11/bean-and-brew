<?php
include "connection.php";
?>

<?php
    $products = "SELECT * FROM products LIMIT 20,20";
    $products = mysqli_query($conn,$products);
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Baked Goods</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/0eeedcf8fa.js" crossorigin="anonymous"></script>
</head>
<body class="bg-dark">
    <?php
      $active = "baked";
      include "navbar.php";
    ?>

    <h1 class="text-center mt-4">Baked goods</h1>
    <hr class="border border-warning border-3 opacity-100">

    <div class="container row mx-auto my-5">
        <?php 
        foreach($products as $row){
        ?>
            <div class="col-md-4 col-lg-3 mb-4 d-flex justify-content-center">
                <div class="card h-100 bg-transparent text-light border border-warning-subtle border-2" style="width: 18rem;">
                    <img src="<?php echo $row['product_image'] ?>" class="card-img-top" alt="..." width="260px" height="390px">
                    <div class="card-body">
                        <p class="card-text"><?php echo $row['product_name'] ?></p>
                        <p class="card-text"><?php echo $row['product_description'] ?></p>
                    </div>
                    <div class="card-footer">
                        <span>£<?php echo number_format($row['product_price'], 2) ?></span>
                        <a class="btn btn-warning float-end" href=""><i class="fa-solid fa-cart-shopping" style="color: #000000;"></i></a>
                    </div>
                </div>
            </div>
        <?php
        }
        ?>
    </div> 

    <?php include "footer.php";?>
</body>
</html>