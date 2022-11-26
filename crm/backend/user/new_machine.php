<?php

include('../config.php');

$redirect_to=$_SERVER['HTTP_REFERER'];
if (!empty($_POST['machine'])) {
        
        $machine=test_input($_POST['machine']);
        $stmt="INSERT INTO `machine` (machine) 
        VALUES (?)";
        $sql=mysqli_prepare($conn, $stmt);
    
        //binding the parameters to prepard statement
        
        mysqli_stmt_bind_param($sql,"s",$machine);
    
        $result=mysqli_stmt_execute($sql);
    
        if ($result) {
            echo '<script>
                    window.location.href="'.$redirect_to.'";
                    </script>';
        } 
        else {
            echo mysqli_error($conn);
    
            echo '<script>
                alert("Something went wrong. We are facing some technical issue. It will be resolved soon. "'.mysqli_error($conn).')
                    history.back();
                <script>';
        }
    
}

else{
    echo '<script>
    alert("Technical Issue.");
    </script>';   
}


function test_input($data) {
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);

    if ($data=="" || $data==null) {
        $data="Not Available";
    }
    return $data;
}
