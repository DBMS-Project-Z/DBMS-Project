<?php
    if(isset($_POST['submit'])) {
        include('../dbconnection.php');

        // echo $_POST['new-cat'];
        // echo $_POST['des'];
        // echo $_POST['criteria'];
        $pid = $_POST['pid'];
        $pname = $_POST['pname'];
        $pmobile = $_POST['pmobile'];
        $pemail = $_POST['pmail'];
        $pdoc = $_POST['pdoc'];
        $pcat = $_POST['pcat'];
        $ppres = $_POST['ppres'];

        $query = "INSERT INTO `patient`(`p_id`, `p_name`, `p_mobile`, `p_email`, `p_cat`, `p_doc`, `p_pres`) VALUES ('$pid', '$pname', '$pmobile', '$pemail', '$pcat', '$pdoc', '$ppres')";
        $run = mysqli_query($conn,$query);

        if($run == true) {
            ?>
            <script type="text/javascript">
               alert("Information Added!");
               window.open('patient-options.php','_self');
            </script>
            <?php
        }
        else {
            echo("error: ".mysqli_error($conn));
        }
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Core Bootstrap Code -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <!-- Custom Styles -->
        <link rel="stylesheet" href="">
        <link rel="stylesheet" href="../css/back-img.css">
    </head>
    <style>
        label textarea{
            vertical-align: text-top;
        }

        .login-form {
            width: 600px;
            padding: 12% 0% 5% 0%;
        }

        .login-form label {
            width: 90%;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }

        .login-form label input {
            width: 315px;
        }

        /* .login-form label.begin {
            justify-content: flex-start;
        }

        .first {
            margin-left: 57px;
        }

        .second {
            margin-left: 30px;
        }

        .third {
            margin-left: 39px;
        } */


        .login-form button {
            margin: 1.5% 0 2.1%;
        }
    </style>
    <body>
        
        <h4 class="text-center" style="margin-top: 4.5%;">Enter Information</h4>
        <div class="container d-flex justify-content-center">
            <div class="row text-center">
                <div class="form">
                    <form class="login-form" method="post" action="add-pat.php">
                        <label class="begin" for="id">Patient ID : <input class="first" id="id" type="text" placeholder="Patient Id" name="pid" required></label><br>
                        <label class="begin" for="name">Patient Name : <input class="second" id="name" type="text" placeholder="Name of Patient" name="pname" required></label><br>
                        <label class="begin" for="phone">Patient Mobile No. : <input class="third" id="phone" type="text" placeholder="Mobile No. of Patient" name="pmobile" required></label><br>
                        <label class="begin" for="mail">Patient E-mail : <input class="fourth" id="mail" type="text" placeholder="Patient's email address" name="pmail" required></label><br>
                        <label class="begin" for="pdoc">Patient's Doctor : <input class="fifth" id="pdoc" type="text" placeholder="ID of Doctor assigned to patient" name="pdoc" required></label><br>
                        <label class="begin" for="pcat">Patient's Category : <input class="sixth" id="pcat" type="text" placeholder="Category to which the patient belongs" name="pcat" required></label><br>
                        <label class="begin" for="ppres">Patient's Prescription : <input class="seventh" id="ppres" type="text" placeholder="Prescription taken by the patient" name="ppres" required></label><br>
                        <!-- <label class="begin" for="hos">Working Hospital : <input class="fifth" id="hos" type="text" placeholder="Hospital ID doctor belongs to" name="dhos" required></label><br> -->
                        <!-- <label for="description">Hospital Address : <textarea name="haddress" id="description" cols="30" rows="4" placeholder="Address" required></textarea></label><br> -->
                        <button type="submit" class="btn btn-details btn-primary" name="submit" value="Submit"> Add Details </button><br>
                        <a href="patient-options.php"><button class="btn btn-details btn-primary" type="button">Back To Options</button></a>
                    </form>
                </div>
            </div>
        </div>
        <!-- <script src="" async defer></script> -->
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    </body>
</html>