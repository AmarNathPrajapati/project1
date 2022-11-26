<?php
session_start();
if (!isset($_SESSION["is_admin"])) {
    header("location: ./login.php");
}
include("../../backend/config.php");
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <?php require('./user_components/header_links.php'); ?>
    <title>Website Inquiries</title>
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
                                <h1 class="h2 mb-0 ls-tight mb-4">Website Inquiries</h1>
                            </div> 
                            <!-- Actions -->
                            <div class="col-sm-6 col-12 text-sm-end">
                                <div class="mx-n1">

                                    <a href="./contact_archive_date_gec.php" class="btn d-inline-flex btn-sm btn-primary mx-1">
                                        <!-- <span class=" pe-2">
                                            <i class="bi bi-plus"></i>
                                        </span> -->
                                        <span>View Archive List</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <!-- Nav -->
                        <ul class="nav nav-tabs mt-4 overflow-x border-0">

                        </ul>
                    </div>
                </div>
            </header>
            <!-- Main -->
            <main class="py-6 bg-surface-secondary">
                <div class="container-fluid">


                    <div class="card shadow border-0 mb-7">
                        <div class="card-header">

                        </div>
                        <div class="table-responsive" style="padding: 30px 18px;">
                            <table class="table table-hover table-nowrap" id="myTable" style="border: 0px solid black !important; padding: 30px 2px;">
                                <thead class="thead-light">
                                    <tr>
                                        <th style="font-size: 16px;">Sno</th>
                                        <th style="font-size: 16px;">Name</th>
                                        <th style="font-size: 16px;">Email</th>
                                        <th style="font-size: 16px;">Phone</th>
                                        <th style="font-size: 16px;">Service</th>
                                        <th style="font-size: 16px;">Message</th>
                                        <th style="font-size: 16px;">Page</th>
                                        <th style="font-size: 16px;">Time</th>
                                        <th style="font-size: 16px;">Action</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    // echo $_GET['document_id12'];

                                    $stmt = "SELECT id,name,email,phone,service,message,page_name,created_at FROM contact_us WHERE contact_us.deleted_at IS NULL AND contact_us.archive=(?)order by created_at desc";
                                    $sql = mysqli_prepare($conn, $stmt);
                                    // if (!mysqli_stmt_bind_param($sql)) {
                                    //     # code...
                                    //     echo mysqli_error($conn);
                                    // } 
                                    $archive = 0;
                                    mysqli_stmt_bind_param($sql, 'i', $archive);
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
                                                    <?php echo $row["name"]; ?>
                                                </td>
                                                <td style="font-size: 14px;">
                                                    <?php echo $row["email"]; ?>
                                                </td>
                                                <td style="font-size: 14px;">
                                                    <?php echo $row["phone"] == 0 ? "Not Available" : $row["phone"]; ?>
                                                </td>
                                                <td style="font-size: 14px;">
                                                    <?php echo $row["service"] == null ? "Not Available" : $row["service"]; ?>
                                                </td>

                                                <td style="font-size: 14px;">
                                                    <?php echo $row["message"]; ?>
                                                </td>
                                                <?php
                                                $name =  $row["page_name"] ;
                                                $name2 = str_replace("http://localhost/gec/", "", $name);
                                                $name3 = str_replace(".php", "", $name2);
                                                if($name3==''){
                                                    $name3 = "home";
                                                }   
                                                ?>
                                                <td style="font-size: 14px;">
                                                    <?php echo $row["page_name"] ==  null ? "Not Available" : '<strong><a target = "_blank" href =' . $row["page_name"] . '>' . $name3 . '</a></strong>'; ?>
                                                </td>
                                                <td style="font-size: 14px;">
                                                    <?php echo $row["created_at"]; ?>
                                                </td>
                                                <td style="font-size: 14px;">
                                                    <form action="../../backend/user/archive_contact_data.php" method="post">
                                                        <input type="number" hidden value="<?php echo $row["id"]; ?>" name="contact_row_id" readonly>
                                                        <button class="btn btn-danger p-2">Archive</button>
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