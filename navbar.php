    <nav class="navbar navbar-expand-lg bg-body-tertiary nav-pills" data-bs-theme="dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.php"><img src="images/coffee_logo.png" alt="Coffee logo" width="80px"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0 text-center">
            <li class="nav-item">
              <a class="nav-link <?php echo $active == "home" ? 'active text-bg-warning' : ''; ?>" aria-current="page" href="index.php">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php echo $active == "about" ? 'active text-bg-warning' : ''; ?>" href="about.php">About</a>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php echo $active == "coffee" ? 'active text-bg-warning' : ''; ?>" href="coffee.php">Coffee</a>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php echo $active == "baked" ? 'active text-bg-warning' : ''; ?>" href="bakedgoods.php">Baked Goods</a>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php echo $active == "book" ? 'active text-bg-warning' : ''; ?>" href="prebook.php">Pre-book</a>
            </li>
            <li class="nav-item">
              <a class="nav-link <?php echo $active == "space" ? 'active text-bg-warning' : ''; ?>" href="bookspace.php">Book a Space</a>
            </li>
          </ul>
          <div class="d-flex justify-content-center gap-4">
            <div class="dropdown">
              <button class="btn btn-warning dropdown-toggle" type="button" data-bs-toggle="dropdown">
                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="black" class="bi bi-person-circle" viewBox="0 0 16 16">
                  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
                  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1" />
                </svg>
              </button>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="register.php">Register</a></li>
                <li><a class="dropdown-item" href="login.php">Login</a></li>
              </ul>
            </div>
            <button class="btn btn-warning" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
              <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="black" class="bi bi-clock-history" viewBox="0 0 16 16">
                <path d="M8.515 1.019A7 7 0 0 0 8 1V0a8 8 0 0 1 .589.022zm2.004.45a7 7 0 0 0-.985-.299l.219-.976q.576.129 1.126.342zm1.37.71a7 7 0 0 0-.439-.27l.493-.87a8 8 0 0 1 .979.654l-.615.789a7 7 0 0 0-.418-.302zm1.834 1.79a7 7 0 0 0-.653-.796l.724-.69q.406.429.747.91zm.744 1.352a7 7 0 0 0-.214-.468l.893-.45a8 8 0 0 1 .45 1.088l-.95.313a7 7 0 0 0-.179-.483m.53 2.507a7 7 0 0 0-.1-1.025l.985-.17q.1.58.116 1.17zm-.131 1.538q.05-.254.081-.51l.993.123a8 8 0 0 1-.23 1.155l-.964-.267q.069-.247.12-.501m-.952 2.379q.276-.436.486-.908l.914.405q-.24.54-.555 1.038zm-.964 1.205q.183-.183.35-.378l.758.653a8 8 0 0 1-.401.432z" />
                <path d="M8 1a7 7 0 1 0 4.95 11.95l.707.707A8.001 8.001 0 1 1 8 0z" />
                <path d="M7.5 3a.5.5 0 0 1 .5.5v5.21l3.248 1.856a.5.5 0 0 1-.496.868l-3.5-2A.5.5 0 0 1 7 9V3.5a.5.5 0 0 1 .5-.5" />
              </svg>
            </button>
          </div>

        </div>
      </div>
    </nav>

    <!-- Off Canvas -->
    <div class="offcanvas offcanvas-start " data-bs-theme="dark" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title" id="offcanvasExampleLabel">Our opening times</h5>
        <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      <div class="offcanvas-body">
        <hr>
        <div id="opening_times">
          <span>
            <p>Mon - 9am - 5pm</p>
            <p>Tue - 9am - 5pm</p>
            <p>Wed - 9am - 5pm</p>
            <p>Thu - 9am - 5pm</p>
            <p>Fri - 9am - 5pm</p>
            <p>Sat - 9am - 5pm</p>
            <p>Sun - 10am - 4pm</p>
          </span>
        </div>

      </div>
    </div>