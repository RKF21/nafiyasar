<?php
// Include the database connection file
require_once ('dbh.php');

// Get employee ID from URL
$id = $_GET['id'];

// Get form inputs
$reason = $_POST['reason'];
$start = $_POST['start'];
$end = $_POST['end'];

// Corrected SQL Query
$sql = "INSERT INTO `employee_leave` (`employee_id`, `start_date`, `end_date`, `leave_type`, `status`) 
        VALUES ('$id', '$start', '$end', '$reason', 'Pending')";

$result = mysqli_query($conn, $sql);

// Check if the query was successful
if ($result) {
    // Redirect to employee login page
    header("Location: ../eloginwel.php?id=$id");
} else {
    echo "Error: " . mysqli_error($conn);
}
?>
