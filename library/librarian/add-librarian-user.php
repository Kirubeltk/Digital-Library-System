<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
    {   
header('location:index.php');
}
else{ 

if(isset($_POST['addlibrarian']))
{
//$id=md5($_POST['password1']);
$libuser=$_POST['libuser1'];
$libemail=$_POST['libemail1'];
$username=$_POST['username1'];
$password=md5($_POST['password1']); 
$sql="INSERT INTO  tbllibrarian(FullName,LibrarianEmail,UserName,Password) VALUES(:libuser, :libemail, :username, :password)";
$query = $dbh->prepare($sql);

 
//$query->bindParam(':id',$id,PDO::PARAM_STR);
$query->bindParam(':libuser',$libuser,PDO::PARAM_STR);
$query->bindParam(':libemail',$libemail,PDO::PARAM_STR);
$query->bindParam(':username',$username,PDO::PARAM_STR);
$query->bindParam(':password',$password,PDO::PARAM_STR);

$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
echo '<script>alert("You Add librarian user successfully ")</script>';
}
else 
{
echo "<script>alert('Something went wrong. Please try again');</script>";
}

}
?>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Digital Library Management System | Add Author</title>
    <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
      <!------MENU SECTION START-->
<?php include('includes/header.php');?>
<!-- MENU SECTION END-->
    <div class="content-wra
    <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line">Add Librarian</h4>
                
                            </div>

</div>
<div class="row">
<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3"">
<div class="panel panel-info">
<div class="panel-heading">
Librarian Info
</div>
<div class="panel-body">
<form role="form" method="post">
<div class="form-group">
<label>Librarian Name</label>
<input class="form-control" type="text" name="libuser1" autocomplete="off"  required />
</div>
<div class="form-group">
<label>Librarian Email</label>
<input class="form-control" type="text" name="libemail1" autocomplete="off"  required />
</div>
<div class="form-group">
<label>Librarian Uername</label>
<input class="form-control" type="text" name="username1" autocomplete="off"  required />
</div>
<div class="form-group">
<label>Enter Password</label>
<input class="form-control" type="password" name="password1" autocomplete="off" required  />
</div>

<button type="submit" name="addlibrarian" class="btn btn-info">Add Librarian </button>

                                    </form>
                            </div>
                        </div>
                            </div>

        </div>
   
    </div>
    </div>
     <!-- CONTENT-WRAPPER SECTION END-->
  <?php include('includes/footer.php');?>
      <!-- FOOTER SECTION END-->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  -->
    <script src="assets/js/jquery-1.10.2.js"></script>
    <!-- BOOTSTRAP SCRIPTS  -->
    <script src="assets/js/bootstrap.js"></script>
      <!-- CUSTOM SCRIPTS  -->
    <script src="assets/js/custom.js"></script>
</body>
</html>
<?php } ?>
