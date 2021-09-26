<?php

$id = $_GET['movie_id'];

$conn = mysqli_connect('localhost', 'root', '', 'movies');

$query = "SELECT * 
FROM movies WHERE movie_id='$id'";


$results = mysqli_query($conn, $query);

$movie = mysqli_fetch_assoc($results);
//var_dump($movie);
?>


<!DOCTYPE html>
<html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    
    <body>
        <h1><?= '<strong>Title : </strong>' . $movie['title'] . '<br>'; ?></h1>
        <?= '<img src="' . $movie['poster'] . '" width="200px"><br>'; ?>
        <p><?= '<strong>Actors : </strong>' . $movie['actors'] . '<br>'; ?></p><br>
        <p><?= '<strong>Synopsis : </strong>' . $movie['synopsis'] . '<br>'; ?></p>
        <p><?= '<strong>Release date : </strong>' . $movie['year_of_release'] . '<br>'; ?></p>
        
        <h3><?= '<strong>Category : </strong>' . $movie['category'] . '<br>'; ?></h3>
        <a href="">Path to the file</a>
        
        
        
        
        </body>
        
        </html>
        