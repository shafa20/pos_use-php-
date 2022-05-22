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
                    <h1 class="m-0">Product</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                        <li class="breadcrumb-item active">Create Product</li>
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
                    <h3>Product Create</h3>
                    <a href="product.php" class="btn btn-primary btn-sm ml-auto">All Product</a>
                </div>
                <div class="card-body">
                    <?php
                        if (isset($_POST['saveProduct'])) {

                            $product_branch = $_POST['product_branch'];
                            $product_barcode = $_POST['product_barcode'];
                            $product_name = $_POST['product_name'];
                            $product_description = $_POST['product_description'];
                            $product_type = $_POST['product_type'];
                            $product_size = $_POST['product_size'];
                            $product_saleemployee = $_POST['product_saleemployee'];
                            $product_costprice = $_POST['product_costprice'];
                            $product_saleprice = $_POST['product_saleprice'];
                            $product_quantity = $_POST['product_quantity'];
                           
                            if (empty($product_branch) || empty($product_barcode) || empty($product_name) || empty($product_type) || empty($product_size) || empty($product_saleemployee) || empty($product_costprice) || empty($product_saleprice) ||  empty($product_quantity)) {
                                $_SESSION['error_message'] = "Please Fill all required fields!";
                            }else {
                                product_insert($product_branch, $product_barcode, $product_name,$product_description, $product_type, $product_size, $product_saleemployee,  $product_costprice,  $product_saleprice, $product_quantity);
                            }
                        }
                    ?>
                    <form method="post">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="product_branch" class="control-label">Branch</label>
                                    <input type="text" class="form-control" name="product_branch" placeholder="Enter Branch">
                                </div>
                            </div>

                             <div class="col-6">
                                <div class="form-group">
                                    <label for="product_barcode" class="control-label">BarCode</label>
                                    <input type="text" class="form-control" name="product_barcode" placeholder="Enter BarCode">
                                </div>
                            </div>
                             <div class="col-6">
                                <div class="form-group">
                                    <label for="product_name" class="control-label">Name</label>
                                    <input type="text" class="form-control" name="product_name" placeholder="Enter Name">
                                </div>
                            </div>
                             <div class="col-6">
                                <div class="form-group">
                                    <label for="product_description" class="control-label">Description</label>
                                    <input type="text" class="form-control" name="product_description" placeholder="Enter Description">
                                </div>
                            </div>
                             <div class="col-6">
                                <div class="form-group">
                                    <label for="product_type" class="control-label">Type</label>
                                    <input type="text" class="form-control" name="product_type" placeholder="Enter Name">
                                </div>
                            </div>  
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="product_size" class="control-label">Size</label>
                                    <input type="text" class="form-control" name="product_size" placeholder="Enter Size">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="product_saleemployee" class="control-label">SaleEmployee</label>
                                    <input type="text" class="form-control" name="product_saleemployee" placeholder="Enter SaleEmployee">
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="product_costprice" class="control-label">CostPrice</label>
                                    <input type="text" class="form-control" name="product_costprice" placeholder="Enter cost price">
                                </div>
                            </div>
                             <div class="col-6">
                                <div class="form-group">
                                    <label for="product_saleprice" class="control-label">SalePrice</label>
                                    <input type="text" class="form-control" name="product_saleprice" placeholder="Enter SalePrice">
                                </div>
                            </div>
                            
                            <div class="col-6">
                                <div class="form-group">
                                    <label for="product_quantity" class="control-label">quantity</label>
                                    <input type="text" class="form-control" name="product_quantity" placeholder="Enter quantity">
                                </div>
                            </div>
                            <div class="col-12">
                                <button name="saveProduct" type="submit" class="btn btn-success">Add Product</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--/. container-fluid -->
    </section>
    <!-- /.content -->
</div>

<!-- /.content-wrapper -->
<?php include './includes/footer.php'; ?>