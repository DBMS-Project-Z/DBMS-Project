<?php
    include('dbconnection.php');
    $name = $_GET['name'];
    echo $name;
    $id = $_GET['id'];
    echo '<br>';
    echo $id;
    $query = "SELECT hos_type, hos_address FROM `hospital` WHERE hos_name='$name' AND hos_id='$id'";
    $run = mysqli_query($conn, $query);
    $row = mysqli_num_rows($run);
    $data = mysqli_fetch_assoc($run);
    echo "<br>";
    echo $data['hos_type'];
    echo "<br>";
    echo $data['hos_address'];
?>