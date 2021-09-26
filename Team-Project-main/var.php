<?php 

$conn = mysqli_connect('localhost', 'root', '', 'movies');
$addPlaylistMess="";

if ($conn) {


    $categQuery="SELECT DISTINCT category FROM movies ";
    $categResult=mysqli_query($conn, $categQuery);
    $categories= mysqli_fetch_all($categResult);
 

    $playlistQuery= "SELECT name FROM playlist";
    $playlistResult=mysqli_query($conn,$playlistQuery);
    $allPlaylists=mysqli_fetch_all($playlistResult);

    if(isset($_POST['addBtn'])){
        $newPlaylist=$_POST['playlist'];
        $date= date('y/m/d');
        $addPlaylistQuery="INSERT INTO playlist (name,date_of_creation) VALUES ('$newPlaylist','$date')";
        $addPlaylistMess=$addPlaylistQuery;
        $addResult = mysqli_query($conn, $addPlaylistQuery);
        if($addResult){
            $addPlaylistMess="playlist successfully added";
        }

    }

    
    if(isset($_GET['delete_playlist'])){
        $deletePlaylist = $_GET['delete_playlist'];
        $deletePlaylistQuery="DELETE FROM playlist WHERE name='$deletePlaylist';";
        //$deletePlaylistMess=$deletePlaylistQuery;
        $deleteResult = mysqli_query($conn, $deletePlaylistQuery);
        echo "playlist deleted";
        
    }
    if(isset($_GET['edit_playlist'])){
         $editedPlaylist=$_GET['edit_playlist'];
    }
    if(isset($_POST['editBtn'])){
        $newName=$_POST['newName'];
        $editPlaylistQuery="UPDATE playlist SET name = '$newName'WHERE name = '$editedPlaylist';";
        //echo $editPlaylistQuery;
        $editResult = mysqli_query($conn, $editPlaylistQuery);
        if($editResult){
            echo "<br >playlist's name successfully edited";
        }
    }

}else{
    echo "Connection to dataBase failed";
}



?>