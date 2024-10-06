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
    $active = "book";
    include "navbar.php";
    ?>

    <h1 class="text-center mt-1">Pre-book</h1>
    <hr class="border border-warning border-3 opacity-100">

    <main class="container">
        <!-- this is the container that holds the cards at the top -->
        <div class="container d-flex row justify-content-center gap-2">
            <div class="card bg-transparent text-light border border-warning" style="width: 18rem;">
                <img src="images/someone-baking.jpg " class="card-img-top" alt="Someone baking">
                <div class="card-footer">
                    <p class="card-text">This is someone enjoying our baking lessons!</p>
                </div>
            </div>
            <div class="card bg-transparent text-light border border-warning" style="width: 18rem;">
                <img src="images/baking manager.jpeg" class="card-img-top" alt="Someone baking">
                <div class="card-footer">
                    <p class="card-text">This is the baking manager!</p>
                </div>
            </div>
            <div class="card bg-transparent text-light border border-warning" style="width:18rem;">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2421.048879213623!2d-1.1367883229599618!3d52.64102992726131!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487761657d738295%3A0xb48698f58cb7478a!2sLeicester%20College%20St%20Margaret%E2%80%99s%20Campus!5e0!3m2!1sen!2suk!4v1707488068499!5m2!1sen!2suk" width="400" height="180" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" class="card-img-top"></iframe>
                <div class="card-footer">
                    <p class="card-text">This is the location of where our baking lessons take place</p>
                </div>
            </div>
        </div>
        <!-- info about the baking lessons -->
        <div class="container bg-transparent text-light text-center border border-warning my-3">
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat debitis minima ad provident possimus, nesciunt iusto maxime illo numquam expedita sequi id quibusdam unde quas? Consectetur iure est maiores quia.
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Minima, blanditiis perferendis. Totam voluptates iure vel ipsa cumque voluptate atque molestiae maxime. Cupiditate beatae cumque rem ex sunt facere. Necessitatibus, quae?
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Magni modi impedit animi temporibus velit dolor nobis adipisci cum, laborum ipsa, ratione debitis pariatur ipsum perspiciatis quidem odio veritatis nisi laboriosam.
            </p>
        </div>

        <!-- this container the pre-book button and opening times -->

        <div class="container d-flex justify-content-center">
            <div class="card mb-3 bg-transparent text-light text-center border border-warning" style="max-width: 640px;">
                <div class="row g-0">
                    <div class="col-md-4 border rounded border-warning">
                        <p class="text-center">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis est voluptates impedit veritatis repellat alias, culpa molestias, quos eligendi voluptatibus inventore temporibus excepturi necessitatibus provident deleniti! Placeat vel totam est.</p>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body h-100">
                            <h5 class="card-header">Book a lesson now!</h5>
                            <button type="button" class="btn btn-warning btn-lg mt-3">Pre-book your baking lesson!</button>
                            <button type="button" class="btn btn-warning btn-lg mt-4">Register</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- <div class="container d-flex row justify-content-center gap-2">
            
            <button type="button" class="btn btn-warning btn-lg mx-auto">Pre-book your baking lesson!</button>

            <div class="bg-transparent text-light border border-warning mx-auto" style="width:18rem;">
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quis est voluptates impedit veritatis repellat alias, culpa molestias, quos eligendi voluptatibus inventore temporibus excepturi necessitatibus provident deleniti! Placeat vel totam est.</p>
            </div>
        </div> -->
    </main>



    <?php include "footer.php"; ?>
</body>

</html>