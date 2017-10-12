<?php include('./master/render_check.php'); ?>
<!DOCTYPE html>
<?php
   set_include_path ('../api');
  require 'connect.inc.php';
  $sql = "select * from student;";
  $result = mysqli_query($con , $sql);
  $count = $result->num_rows;
?>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <?php include './master/headers.php'; ?>
  </head>
  <body>
    <div id="wrapper">
      <?php include './master/navbar.php'; ?>
      <div id="page-wrapper">
        <div class="row">
              <div class="col-lg-12">
                  <h1 class="page-header">Dashboard</h1>
              </div>
              <!-- /.col-lg-12 -->
          </div>
          <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-users fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php echo "$count"; ?></div>
                                    <div>Students In Hostel !</div>
                                </div>
                            </div>
                        </div>
                        <a href="./report.php">
                            <div class="panel-footer">
                                <span class="pull-left">Generate Report</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
      </div>
    </div>

    <?php include './master/scripts.php'; ?>
  </body>
</html>
