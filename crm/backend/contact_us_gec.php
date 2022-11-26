<?php
include('./config.php');



if (!empty($_POST['email']) && !empty($_POST['name']) && isset($_POST['phone']) && !empty($_POST['message'])) {
    $name = test_input($_POST["name"]);
    $email = test_input($_POST["email"]);
    $phone = test_input($_POST['phone']);
    $message = test_input($_POST['message']);
    // $flag=$_POST['flag'];
    $flag = $_SERVER['HTTP_REFERER'];
    $from_location = $_SERVER['HTTP_REFERER'];

    $common_code = time();

    $stmt = "INSERT INTO `contact_us` (email,phone,name,message,page_name) VALUES (?,?,?,?,?)";
    $sql = mysqli_prepare($conn, $stmt);
    mysqli_stmt_bind_param($sql, 'sisss', $email, $phone, $name, $message, $flag);
    $result = mysqli_stmt_execute($sql);
    if ($result) {
        mysqli_stmt_close($sql);
?>
        <script src="sweetalert.min.js"></script>
        <body>
            <script>
                swal("Submission  Succesfully!", "We will get back to you within 24 working hours", "success");
                setTimeout(() => {
                    history.back();
                }, 3000);
            </script>
        </body>

    <?php
    } else {
        mysqli_stmt_close($sql);
        mysqli_close($conn);
    ?>
        <script src="sweetalert.min.js"></script>
        <body>
            <script>
                swal("Sorry Something Went Wrong", "Please Try Again!", "warning");
                setTimeout(() => {
                    history.back();
                }, 3000);
            </script>
        </body>
    <?php
    }
} else {

    mysqli_close($conn);
    ?>

    <script src="sweetalert.min.js"></script>
    <body>
        <script>
            swal("Please fill all the mandatory fields.", "Please Try Again!", "warning");
            setTimeout(() => {
                history.back();
            }, 3000);
        </script>
    </body>
<?php
}
function test_input($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);

    if ($data == "" || $data == null) {
        $data = "Not Available";
    }
    return $data;
}
?>