<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "hms";
    $table = "tblmedicalhistory"; // lets create a table named Employees.

    // we will get actions from the app to do operations in the database...
    $action = $_POST["action"];
    
    // Create Connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check Connection
    if($conn->connect_error){
        die("Connection Failed: " . $conn->connect_error);
        return;
    }

    if("GET_ALL" == $action){
        $db_data = array();
        $sql = "SELECT id from $table ORDER BY id DESC";
        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                $db_data[] = $row;
            }
            // Send back the complete records as a json
            echo json_encode($db_data);
        }else{
            echo "error";
        }
        $conn->close();
        return;
    }
    ?>
