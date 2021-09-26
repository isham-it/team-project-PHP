<?php
include "config.php";
include_once 'nav.html';

// Check user login or not
if (!isset($_SESSION['mail'])) {
    header('Location: login.php');
}
// Initialize empty movies array
$movies = array();

// 1. Connect to my DB
$conn = mysqli_connect('localhost', 'root', '', 'movies');

// Did I connect successfully ? 
if ($conn) {
    $query = 'SELECT * FROM movies';

    // 2. Prepare the query
    if (isset($_POST['searchbox'])) {
        $mySearch = $_POST['searchbox'];
        $query = "SELECT * FROM movies WHERE title LIKE '%$mySearch%'";
   
    }

    // 3. Executing the query (send the query to the DB)
    $results = mysqli_query($conn, $query);

    // 4. Fetch the results in a associative array
    $movies = mysqli_fetch_all($results, MYSQLI_ASSOC);
} else {
    echo 'Pb with connection !';
}

// Close the connection (you can close anywhere in the file)
mysqli_close($conn);



?>


<!doctype html>
<html>

<head>
    <title>Login page with jQuery and AJAX</title>
</head>

<body>
    <h1>Homepage</h1>
    <br>
    <a href="logout.php">Logout</a>

    <form action="" method="POST">
        <input type="text" name="searchbox" placeholder="SEARCH A FILM" /><br />

        <input type="submit" name="submitBox" value="OK" />
    </form>

    <?php foreach ($movies as $movie) : ?>
        <hr>
        <img src="<?= $movie['poster']; ?>" alt="" width="100px">
        <p>
            <strong>Title :</strong>
            <!-- Same thing as echo -->
            <?= $movie['title']; ?>
        </p>

    <?php endforeach; ?>
</body>

</html>