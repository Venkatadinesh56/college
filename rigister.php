
<?php
$typek=$_POST['typek'];
$db_hostname = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "proj";
$conn = mysqli_connect($db_hostname, $db_username, $db_password, $db_name);
if (!$conn) {
    echo "connection failed:" . mysqli_connect_error();
    exit;
}

$name=$_POST['name'];
$password=$_POST['password'];

if($typek==="admin")
{
$sql="INSERT INTO `admin`(`name`, `password`) VALUES ('$name','$password')";

}
else{
$sql="INSERT INTO `user`(`name`, `password`) VALUES ('$name','$password')";

}

if(mysqli_query($conn,$sql))
{
    echo "login details are sucessfully saved";
}
mysqli_close($conn);
?>

