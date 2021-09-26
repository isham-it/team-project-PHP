<?php 


$conn = mysqli_connect('localhost', 'root', '', 'movies');


if ($conn) {
if(isset($_POST['addMovieBtn'])){

    $title = trim($_POST['title']);
    $releaseDate = $_POST['yor'];
    $category = $_POST['category'];
    $views=$_POST['views'];
    $actor=$_POST['actor'];
    $synopsis=$_POST['synopsis'];
    if($_FILES['myFile']['error']!= UPLOAD_ERR_OK){
        $creationMsg='Error during uploading the file OR  Missing info ';
        die();
    }else{
        
        //poster verification
        $shaFile = sha1_file($_FILES['myFile']['tmp_name']);
        
        $destinationDir = 'upload/';
        $destinationPath = $destinationDir . $shaFile;
        
        if (move_uploaded_file($_FILES['myFile']['tmp_name'], $destinationPath)) {
            $creationMsg= 'File was saved';
        } else {
            echo 'Problem saving the file';
        }
    }
   
    
    $query = "INSERT INTO movies (title, year_of_release,actors, category,views,synopsis,poster) VALUES('$title', '$releaseDate','$actor', '$category','$views','$synopsis','$shaFile')";
    echo $query;
    $result = mysqli_query($conn, $query);
    
    // Upload Image
} 

if(isset($_POST['editMovieBtn'])){
    $movieId=$_GET['movie_id'];
    $title = trim($_POST['title']);
    $releaseDate = $_POST['yor'];
    $category = $_POST['category'];
    $views=$_POST['views'];
    $actor=$_POST['actor'];
    //echo $actor;
    $synopsis=$_POST['synopsis'];
   if($_FILES['myFile']['error']!= UPLOAD_ERR_OK){
        $creationMsg='Error during uploading the file OR  Missing info ';
        die();
    }else{
        
        //poster verification
        $shaFile = sha1_file($_FILES['myFile']['tmp_name']);
        
        $destinationDir = 'upload/';
        $destinationPath = $destinationDir . $shaFile;
        
        if (move_uploaded_file($_FILES['myFile']['tmp_name'], $destinationPath)) {
            $creationMsg= 'File was saved';
        } else {
            echo 'Problem saving the file';
        }
    }
   
    $shaFile="test";
    //echo "heeere";
    $updatequery="UPDATE movies SET title = '$title',year_of_release='$releaseDate',actors='$actor', category='$category',views='$views',synopsis='$synopsis',poster='$shaFile' WHERE movie_id = '$movieId';";
    //echo $updatequery;
    $result = mysqli_query($conn, $updatequery);
    
    // Upload Image
} 


}

?>