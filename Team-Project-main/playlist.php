<?php
require_once 'var.php';
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
   <form action="" method="POST">
       <input type="text" name="playlist" placeholder="Add a new playlist">
       <input type="submit" name="addBtn" value="Add">
   </form>

   

   <div>
        <h5>List of playlits</h5>
        <table>
            <?php foreach ($allPlaylists as $key => $value) : ?>
                <tr> 
                    <?= $value[0] ?>
                    <button><a href="playlist.php?delete_playlist=<?= $value[0] ?>">   delete</a> </button>
                   <button> <a href="edit_playlist.php?edit_playlist=<?= $value[0] ?>"> edit</a> </button>
                   
                    
                </tr><br>
            <?php endforeach; ?>
        </table>
        <p> <?= $addPlaylistMess ?></p>

   </div>

  

</body>
</html>