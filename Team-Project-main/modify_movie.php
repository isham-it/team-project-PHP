<?php 

require_once 'var.php';
require_once  'movie_var.php';
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
    <h2>Add/Modify a movie</h2>
    <form action="#" enctype="multipart/form-data" method="POST" >
        <input type="text" name="title" placeholder="Enter the title" ><br><br>
        <input type="text" name="views" placeholder="Enter the views" ><br><br>
        <input type="text" name="actor" placeholder="Enter the actor" > <br><br>
        <label>Category </label>
        <select name="category">
            <option value=""></option>
            <?php foreach ($categories as $key => $value) : ?>
                <option value="<?= $value[0];?>"><?= $value[0];?></option>
            <?php endforeach; ?>
        </select><br><br>
        <input type="text" name="yor" placeholder="enter the year of release" ><br><br>
        <input type="text" name="synopsis" placeholder="enter the synopsis"><br><br>
                
                Select the poster:
        <input type="file" name="myFile"><br><br>
        
        <input type="submit" name="addMovieBtn" value="add Movie"><br>
        <input type="submit" name="editMovieBtn" value="Modify Movie"><br>



    </form>

    

  
</body>
</html>