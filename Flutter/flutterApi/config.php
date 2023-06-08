<?php
// Allow cross-origin requests
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: POST');
header('Access-Control-Allow-Headers: Content-Type');

// Define database connection credentials
$host = 'localhost';
$dbName = 'hiilwalaal';
$username = 'root';
$password = '';

// Create a new MySQLi object
$mysqli = new mysqli($host, $username, $password, $dbName);



?>