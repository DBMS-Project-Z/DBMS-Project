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
        <!-- <link rel="stylesheet" href="../css/back-img.css"> -->
    </head>
    <style>
        .data-container {
            margin: 3% auto 0;
        }

        .first-row {
            margin-top: 2.1%;
        }
    </style>
    <body class="text-center">

        <div class="container data-container">
            <h3>Prescription Table</h3>
            <div class="p-2 row first-row">
                <div class="p-1 col-3 text-center border border-primary" style="border-radius: 9px 0 0 0;"><strong>ID</strong></div>
                <div class="p-1 col-3 text-center border border-primary"><strong>Medicine</strong></div>
                <div class="p-1 col-3 text-center border border-primary"><strong>Prescription For Category</strong></div>
                <div class="p-1 col-3 text-center border border-primary" style="border-radius: 0 0 9px 0;"><strong>Prescribed Doctor ID</strong></div>
            </div>
            <?php
                include('../dbconnection.php');
                $query = "SELECT * FROM `prescription`";
                $run = mysqli_query($conn, $query);
                $row = mysqli_num_rows($run);
                while($data = mysqli_fetch_assoc($run)) {
                    ?>
                    <div class="p-2 row">
                        <div class="p-1 col-3 border border-primary" style="border-radius: 9px 0 0 0;"><?php echo $data['pres_id'] ?></div>
                        <div class="p-1 col-3 border border-primary"><?php echo $data['medicine'] ?></div>
                        <div class="p-1 col-3 border border-primary"><?php echo $data['pres_cat'] ?></div>
                        <div class="p-1 col-3 border border-primary" style="border-radius: 0 0 9px 0;"><?php echo $data['pres_doc'] ?></div>
                    </div>
                    <?php
                }
            ?>
        </div>
        
        <div style="margin: 3.6% 0 2.4%;">
            <h4>What would you like to change?</h4>
        </div>
        
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 p-3">
                    <a href="add-pres.php"><button type="button" class="btn btn-outline-primary">Add Into Prescription Table</button></a>
                </div>
            </div>
            <div class="row">
                <div class="col-12 p-3">
                    <a href="del-pres.php"><button type="button" class="btn btn-outline-primary">Delete from Prescription Table</button></a>
                </div>
            </div>
            <div class="row">
                <div class="col-12 p-3">
                    <a href="update-pres.php"><button type="button" class="btn btn-outline-primary">Update Prescription Table</button></a>
                </div>
            </div>
        </div>
        <footer class="container-fluid text-center">
            <div class="col-12">
              <div class="p-3"><a href="admin-page.html"><button class="btn btn-details btn-primary">Back To Dashboard</button></a></div>
            </div>
        </footer>
        <!-- <script src="" async defer></script> -->
        <!-- Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    </body>
</html>