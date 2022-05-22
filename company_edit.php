<!-- Header -->
<?php include './includes/header.php'; ?>

<?php include './includes/topbar.php'; ?>
<?php include './includes/sidebar.php'; ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Company</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                        <li class="breadcrumb-item active">Edit Company</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="card">
                <div class="card-header d-flex">
                    <h3>company Edit</h3>
                    <a href="company.php" class="btn btn-primary btn-sm ml-auto">All company</a>
                </div>
                <div class="card-body">
                    <?php
                    // Update Branch Data
                    if (isset($_POST['updateCompany'])) {
                        $company_branch = $_POST['company_branch'];
                        $company_name = $_POST['company_name'];
                        $company_address = $_POST['company_address'];
                        $company_manager = $_POST['company_manager'];
                        $company_phone = $_POST['company_phone'];
                        $company_email = $_POST['company_email'];
                        
                        if (empty($company_branch) || empty($company_name) || empty($company_email) || empty($company_address) || empty($company_manager) || empty($company_phone)) {
                            $_SESSION['error_message'] = "Please Fill all required fields!";
                        }else {
                            $company_id=$_GET["id"];
                            company_update($company_branch, $company_name, $company_address, $company_manager, $company_phone , $company_email, $company_id);
                        }
                    }

                    
                    // Get company Data
                    if (isset($_GET['id'])) {
                        $company_id = $_GET['id'];
                        $company = company_edit($company_id);
                        while ($data = $company->fetch_assoc()) { ?>
                    <form method="post">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="company_branch" class="control-label">Branch</label>
                                    <input type="text" class="form-control" name="company_branch" placeholder="Enter Branch Name"
                                        value="<?php echo $data['company_branch'] ?>">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="company_name" class="control-label">Name</label>
                                    <input type="text" class="form-control" name="company_name" placeholder="Enter company Name"
                                        value="<?php echo $data['company_name'] ?>">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="company_address" class="control-label">Address</label>
                                    <input type="text" class="form-control" name="company_address" placeholder="Enter Address"
                                        value="<?php echo $data['company_address'] ?>">
                                </div>
                            </div>
                            
                              <div class="col-6">
                                <div class="form-group">
                                    <label for="company_manager" class="control-label">Manager</label>
                                    <input type="text" class="form-control" name="company_manager" placeholder="Enter Manager Name"
                                        value="<?php echo $data['company_manager'] ?>">
                                </div>
                            </div>
                           
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="company_phone" class="control-label">Phone</label>
                                    <input type="text" class="form-control" name="company_phone" placeholder="Enter Phone"
                                        value="<?php echo $data['company_phone'] ?>">
                                </div>
                            </div>
                          
                           <div class="col-6">
                                <div class="form-group">
                                    <label for="company_email" class="control-label">Email</label>
                                    <input type="email" class="form-control" name="company_email" placeholder="Enter Email"
                                        value="<?php echo $data['company_email'] ?>">
                                </div>
                            </div>

                           
                            <div class="col-12">
                                <button name="updateCompany" type="submit" class="btn btn-success">Update
                                    Company</button>
                            </div>
                        </div>
                    </form>
                    <?php }}?>
                </div>
            </div>
        </div>
        <!--/. container-fluid -->
    </section>
    <!-- /.content -->
</div>
<!-- /.content-wrapper -->

<?php include './includes/footer.php'; ?>