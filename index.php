<?php
include "connection.php";
?>


<?php
$product_list = [];
for ($i = 0; $i < 8; $i++) {
    $random = rand(1, 40);
    while (in_array($random, $product_list)) {
        $random = rand(1, 40);
    }
    $product_list[] += $random;
}
$product_list = implode(",", $product_list);
 
$products = "SELECT * FROM products WHERE product_id IN ($product_list)";
$products = mysqli_query($conn, $products);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/0eeedcf8fa.js" crossorigin="anonymous"></script>
</head>
<body>
    <?php
      $active = "home";
      include "navbar.php";
    ?>
 
    <h1 class="text-center mt-2">Our best selling</h1>
    <hr class="border border-warning border-3 opacity-100">

    <main class="container mx-auto row col-12">
        <div class="container row mx-auto my-5">
            <?php 
            foreach($products as $row){
            ?>
            <div class="col-md-3 col-lg-3 mb-3 d-flex justify-content-center">
                <div class="card h-100 bg-transparent text-light border border-warning-subtle border-2 h-100" style="width: 18rem;">
                    <img src="<?php echo $row['product_image'] ?>" class="card-img-top" alt="..." height="390px">
                    <div class="card-body">
                        <p class="card-text"><?php echo $row['product_name'] ?></p>
                        <p class="card-text"><?php echo $row['product_description'] ?></p>
                    </div>
                    <div class="card-footer border opacity-100 border-warning">
                        <span>£<?php echo number_format($row['product_price'], 2) ?></span>
                        <a class="btn btn-warning float-end" href=""><i class="fa-solid fa-cart-shopping" style="color: #000000;"></i></a>
                    </div>
                </div>
            </div>
            <?php
            }
            ?>
        </div> 
    </main>

    <?php include "footer.php";?>
</body>
</html>