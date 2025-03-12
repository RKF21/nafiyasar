<?php 
    // Get the employee ID from URL
    $id = (isset($_GET['id']) ? $_GET['id'] : '');
    require_once ('process/dbh.php'); // Include the database connection file

    // Fetch employee details
    $sql1 = "SELECT * FROM `employee` WHERE id = '$id'";
    $result1 = mysqli_query($conn, $sql1);
    $employeen = mysqli_fetch_array($result1);
    $empName = ($employeen['firstName']);

    // Fetch employee leaderboard
    $sql = "SELECT employee.id, employee.firstName, employee.lastName, rank.points 
            FROM employee 
            INNER JOIN rank ON rank.eid = employee.id 
            ORDER BY rank.points DESC";

    // Fetch employee's assigned projects
    $sql1 = "SELECT `pname`, `duedate` FROM `project` WHERE eid = '$id' AND status = 'Due'";

    // Fetch employee's leave details
    $sql2 = "SELECT * FROM employee 
             INNER JOIN employee_leave ON employee_leave.employee_id = employee.id 
             WHERE employee.id = '$id' 
             ORDER BY employee_leave.start_date";

    // Fetch employee's salary details (FIXED COLUMN NAME)
    $sql3 = "SELECT * FROM salary WHERE id = '$id'";  // Use the correct column name

    // Execute queries
    $result = mysqli_query($conn, $sql);
    $result1 = mysqli_query($conn, $sql1);
    $result2 = mysqli_query($conn, $sql2);
    $result3 = mysqli_query($conn, $sql3);
?>


<html>
<head>
    <title>Employee Panel | Employee Corp.</title>
    <link rel="stylesheet" type="text/css" href="styleemplogin.css">
    <link href="https://fonts.googleapis.com/css?family=Lobster|Montserrat" rel="stylesheet">
</head>
<body>
    
    <header>
        <nav>
            <h1>Employee Corp.</h1>
            <ul id="navli">
                <li><a class="homered" href="eloginwel.php?id=<?php echo $id; ?>">HOME</a></li>
                <li><a class="homeblack" href="myprofile.php?id=<?php echo $id; ?>">My Profile</a></li>
                <li><a class="homeblack" href="empproject.php?id=<?php echo $id; ?>">My Projects</a></li>
                <li><a class="homeblack" href="elogin.html">Log Out</a></li>
            </ul>
        </nav>
    </header>
     
    <div class="divider"></div>
    <div id="divimg">
    <div>
        <h2 style="font-family: 'Montserrat', sans-serif; font-size: 25px; text-align: center;">Employee Leaderboard</h2>
        <table>

            <tr bgcolor="#000">
                <th align="center">Seq.</th>
                <th align="center">Emp. ID</th>
                <th align="center">Name</th>
                <th align="center">Points</th>
            </tr>

            <?php
                $seq = 1;
                while ($employee = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>".$seq."</td>";
                    echo "<td>".$employee['id']."</td>";
                    echo "<td>".$employee['firstName']." ".$employee['lastName']."</td>";
                    echo "<td>".$employee['points']."</td>";
                    $seq+=1;
                }
            ?>

        </table>
    </div>
    </div>
</body>
</html>
