<?php



// Initialize empty movies array
$movies = array();



// 1. Connect to my DB
$conn = mysqli_connect('localhost', 'root', '', 'movies');

// Did I connect successfully ? 
if ($conn) {

    // GRAB THE PAGE'S NUMBER !
    if (isset($_GET['page']))
        $page = $_GET['page'];
    else
        $page = 1;

    $limit = ($page - 1) * 3;
    $query = "SELECT * FROM movies LIMIT $limit, 3";


    //echo $query;

    // 3. Executing the query (send the query to the DB)
    $results = mysqli_query($conn, $query);

    // 4. Fetch the results in a associative array
    $movies = mysqli_fetch_all($results, MYSQLI_ASSOC);

    // Query to count how many pages
    $query = "SELECT COUNT(*) AS total_amount FROM movies";
    $results = mysqli_query($conn, $query);
    $res = mysqli_fetch_assoc($results);

    $total_pages = $res['total_amount'] / 3;
} else {
    echo 'Pb with connection !';
}
// Close the connection (you can close anywhere in the file)
mysqli_close($conn);






?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies page</title>
</head>

<body>
    <h2>Movies list</h2>

   <a href="modify_movie.php">Add a movie</a>

    <!-- <?php include_once 'nav.html'; ?> -->


    <?php foreach ($movies as $movie) : ?>
        <hr>
        <img src="<?= $movie['poster']; ?>" alt="" width="100px">


        <p>
            <strong>ID</strong>
            <!-- Same thing as echo -->
            <?= $movie['movie_id']; ?>
        </p>

        <p>
            <strong>Title :</strong>
            <?php echo $movie['title']; ?>
        </p>

        <p>
            <strong>Year of release :</strong>
            <?php echo $movie['year_of_release']; ?>
        </p>

        <p>
            <strong>Synopsis :</strong>
            <?php echo $movie['synopsis']; ?>
        </p>



        <!-- Link to 'Movie detail' page, URL needs the id of the movie -->

        <!-- creer un #id pour detail et modification ALEX pour page detail-->

        <a href="detail.php?movie_id=<?= $movie['movie_id']; ?>">Detail page</a>
        <a href="modify_movie.php?movie_id=<?= $movie['movie_id']; ?>">Modify</a>



    <?php endforeach; ?>

    <div class="pagination">
        <?php
        // Only display previous if not on the first page
        if ($page >= 1) {
            $previousPage = $page - 1;
            echo "<a href='movies.php?page=$previousPage'>  < Previous   </a>";
            echo '    page   '   . $previousPage;
        }

        // Display next EXCEPT for the last page
        if ($total_pages > $page) {
            $nextPage = $page + 1;
            echo "<a href='movies.php?page=$nextPage'>   Next >  </a>";
        }
        ?>




</body>

</html>