<?php
session_start();
if (!isset($_SESSION["is_admin"])) {
    header("location: ./login.php");
}
include("../../backend/config.php");

?>
<?php

if (!empty($_POST['machineNo'])) {
    $sno1 = $_POST['machineNo'];
    echo $sno1;
    $sql = "DELETE FROM `machine` WHERE `machine`.`id` = {$sno1}";
    $result = mysqli_query($conn, $sql);
    if ($result) {
        $delete = true;
    } 
    else {
        die("Something went wrong during deletion " . mysqli_error($conn));
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php require('./user_components/header_links.php'); ?>
    <title>Manage Machines</title>
</head>

<body>
    <div id="loader" class="center"></div>
    <!-- Dashboard -->
    <div class="d-flex flex-column flex-lg-row h-lg-full bg-surface-secondary">
        <!-- Vertical Navbar -->
        <?php require('./user_components/side_bar.php'); ?>
        <!-- Main content -->
        <div class="h-screen flex-grow-1 overflow-y-lg-auto">
            <!-- Header -->
            <header class="bg-surface-primary border-bottom pt-6">
                <div class="container-fluid">
                    <div class="mb-npx">
                        <div class="row align-items-center">
                            <div class="col-sm-6 col-12 mb-4 mb-sm-0">
                                <!-- Title -->
                                <h1 class="h2 mb-0 ls-tight mb-4">Manage Machines</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Main -->
            <main class="py-6 bg-surface-secondary">
                <div class="container-fluid">
                    <form action="/gec/crm/backend/user/new_machine.php" method="POST">
                        <div class="mb-3">
                            <label for="machine" class="form-label fs-5">Machine Name</label>
                            <input type="text" name="machine" class="form-control" id="machine">
                        </div>
                        <button type="submit" class="btn btn-primary">Add Machine</button>
                    </form>

                    <div class="card shadow border-0 mb-7">
                        <div class="card-header">
                        </div>
                        <div class="table-responsive" style="padding: 30px 18px;">
                            <table class="table table-hover table-nowrap" id="myTable" style="border: 0px solid black !important; padding: 30px 2px;">
                                <thead class="thead-light">
                                    <tr>
                                        <th style="font-size: 16px;">Sno</th>
                                        <th style="font-size: 16px;">Machine Name</th>
                                        <th style="font-size: 16px;">Time</th>
                                        <th style="font-size: 16px;">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // echo $_GET['document_id12'];

                                    $stmt = "SELECT id,machine,created_at FROM machine WHERE machine.deleted_at IS NULL order by created_at desc";
                                    $sql = mysqli_prepare($conn, $stmt);
                                    $result = mysqli_stmt_execute($sql);

                                    if ($result) {
                                        $data = mysqli_stmt_get_result($sql);
                                        $sno = 1;
                                        while ($row = mysqli_fetch_array($data)) {
                                    ?>
                                            <tr>
                                                <td style="font-size: 18px;">
                                                    <?php echo $sno; ?>
                                                </td>
                                                <td style="font-size: 14px;">
                                                    <?php echo $row["machine"]; ?>
                                                </td>
                                                <td style="font-size: 14px;">
                                                    <?php echo $row["created_at"]; ?>
                                                </td>
                                                <td>
                                                <form action="./manage_machine.php" method="POST">
                                                    <input type="text" name="machineNo" value="<?php echo $row['id'] ?>" hidden>
                                                    <button type="submit" class="btn btn-danger btn-sm delete"> Delete </button>
                                                </form>
                                                </td>
                                            </tr>
                                    <?php
                                            $sno++;
                                        }
                                        mysqli_stmt_close($sql);
                                        mysqli_close($conn);
                                    } else {
                                        echo mysqli_error($conn);
                                    }

                                    ?>
                                </tbody>
                            </table>
                            
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <?php require('./user_components/scripts.php'); ?>
</body>

</html>