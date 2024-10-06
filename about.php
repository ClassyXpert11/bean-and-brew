<?php
include "connection.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/style.css">
    <script src="https://kit.fontawesome.com/0eeedcf8fa.js" crossorigin="anonymous"></script>
</head>
<body>
    <?php
      $active = "about";
      include "navbar.php";
    ?>

    <h1 class="text-center mt-1">About us</h1>
    <hr class="border border-warning border-3 opacity-100">

    <div id="map-container" class="row gap-5 my-3 col-12">
      <div class="card bg-transparent text-light border border-warning-subtle border-2" style="width: 18rem;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d40929.55379453895!2d-1.5576826123230487!3d53.988832777202724!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48794e237175bd01%3A0x3c084fbaadea4ff!2sHarrogate!5e0!3m2!1sen!2suk!4v1706018752144!5m2!1sen!2suk" width="400" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="card-img-top"></iframe>
        <hr>
        <div class="card-body">
          <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eaque voluptatum earum velit ipsam adipisci veniam iste aperiam eum laborum, laudantium provident vero? Itaque ipsam, nobis vitae aliquid quasi molestias tempora.</p>
        </div>
      </div>
      <div class="card bg-transparent text-light border border-warning-subtle border-2" style="width: 18rem;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d75394.17251202802!2d-1.6181320405997235!3d53.80607563522413!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48793e4ada64bd99%3A0x51adbafd0213dca9!2sLeeds!5e0!3m2!1sen!2suk!4v1706019340636!5m2!1sen!2suk" width="400" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="card-img-top"></iframe>
        <hr>
        <div class="card-body">
          <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eaque voluptatum earum velit ipsam adipisci veniam iste aperiam eum laborum, laudantium provident vero? Itaque ipsam, nobis vitae aliquid quasi molestias tempora.</p>
        </div>
      </div>
      <div class="card bg-transparent text-light border border-warning-subtle border-2" style="width: 18rem;">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d18757.96126726687!2d-1.4897038083720222!3d54.00729885999344!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x48794c0904d12069%3A0x38a9bbcb87ed3689!2sKnaresborough!5e0!3m2!1sen!2suk!4v1706019375603!5m2!1sen!2suk" width="400" height="250" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="card-img-top"></iframe>
        <hr>
        <div class="card-body">
          <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eaque voluptatum earum velit ipsam adipisci veniam iste aperiam eum laborum, laudantium provident vero? Itaque ipsam, nobis vitae aliquid quasi molestias tempora.</p>
        </div>
      </div>
    </div>

    <div id="info_container" class="container mb-5">
        <p>Bean and Brew were one of the first companies in the UK to use fair-trade coffee and all organic milk for their products. Each drink is made exactly to your specifications, for a personal service. They also offer their trademarked flavoured coffees, breakfast items such as porridge, small sweet treats, and pressed sandwiches. Recently they've also added frappes and fruit smoothies in addition to seasonal treats such as the pumpkin spiced latte (for Halloween) and various assorted baked goods</p>
    </div>



    <?php include "footer.php";?>
</body>
</html>