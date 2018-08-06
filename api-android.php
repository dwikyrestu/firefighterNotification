<?php
@$username = $_POST['name'];
@$useremail = $_POST['email'];
@$userpassword = $_POST['password'];
$user = "root";
$pass = "";
$host= "localhost";
$dbname="pemkar";
if(isset($username)&isset($useremail)&isset($userpassword)){
$con = mysqli_connect($host,$user,$pass,$dbname);
$sql="insert into android(lokasi,latitude,longitude) values('".$username."','".$useremail."','".$userpassword."');";
if(mysqli_query($con,$sql)){
 echo  "data inserted";
}else{
 echo "Failed";
}
}else{
  echo "Hayoooo";
}
?>
