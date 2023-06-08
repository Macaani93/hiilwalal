<?php
include'config.php';



$fullName=$_POST['fullname'];
$username=$_POST['username'];
$password=$_POST['password'];

$query="insert into users (Name,UserName,Password,Role) values('$fullName','$username','$password','user')";
$result = $mysqli->query($query);

if ($result->num_rows == 1) {
    // User found, login successful
    echo json_encode([
        'success' => true,
        'message' => 'Inserted Success'
    ]);
} else {
    // User not found or invalid credentials
    echo json_encode([
        'success' => false,
        'message' => 'Invalid Error'
    ]);
}






?>