<?php
    include '../config/database.php';
    
    $sqlResult = $con->query("SELECT * FROM mpost LEFT JOIN muser ON mpost.username = muser.username");
    
    $result = array();
    
    while($fetchData = $sqlResult->fetch_assoc()) {
        $result[] = $fetchData;
        
    }
    
    header('Content-Type: application/json');
    echo json_encode($result);
?>