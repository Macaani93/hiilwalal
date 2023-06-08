<?php
include 'config.php';

// Check the connection
if ($mysqli->connect_errno) {
    // Connection failed
    echo json_encode([
        'success' => false,
        'message' => 'Failed to connect to the database'
    ]);
    exit();
}

// Retrieve the username and password from the request
$username = $_POST['username'];
$password = $_POST['password'];

// Escape special characters to prevent SQL injection
$username = $mysqli->real_escape_string($username);
$password = $mysqli->real_escape_string($password);

// Perform the database query
$query = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
$result = $mysqli->query($query);

if ($result->num_rows == 1) {
    // User found, login successful
    echo json_encode([
        'success' => true,
        'message' => 'Login successful'
    ]);
} else {
    // User not found or invalid credentials
    echo json_encode([
        'success' => false,
        'message' => 'Invalid username or password'
    ]);
}

// Close the connection
$mysqli->close();
?>
