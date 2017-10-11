<?php include './inc/detailinc.php';?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <title></title>
  <?php include './master/headers.php'; ?>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" />
</head>

<body>
  <div id="wrapper">
    <?php include './master/navbar.php'; ?>
    <div id="page-wrapper">
      <div class="row">
        <div class="col-lg-12">
          <h1 class="page-header"><i class="fa fa-info fa-fw"></i>Details</h1>
        </div>
        <!-- /.col-lg-12 -->
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div class="panel panel-info">
            <div class="panel-heading">
              Student Details
            </div>
            <div class="panel-body">
              <div class="row" style="margin-bottom:10px;">
                <div class="col-lg-3  col-md-3 col-sm-12 col-xs-12">
                  <img src="<?php echo $out['photo']?>" alt="" width="100%">
                </div>
                <div class="col-lg-4  col-md-4 col-sm-12 col-xs-12">
                  <table class="table table-bordered" width="100%" height="100%">
                    <tbody>
                      <tr>
                        <td style="width:auto;"><strong>Block</strong></td>
                        <td>
                          <?php echo $out['block_no']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Room No</strong></td>
                        <td>
                          <?php echo $out['room_no']; ?>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12">
                  <table class="table table-striped">
                    <tbody>
                      <tr>
                        <td><strong>Enrollment No</strong></td>
                        <td>
                          <?php echo $out['enroll_no']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Name</strong></td>
                        <td>
                          <?php echo $out['name']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Categpry</strong></td>
                        <td>
                          <?php echo $out['category']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Admission Type</strong></td>
                        <td>
                          <?php echo $out['addmission_type']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Branch</strong></td>
                        <td>
                          <?php echo $out['branch']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Course</strong></td>
                        <td>
                          <?php echo $out['course']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Sem</strong></td>
                        <td>
                          <?php echo $out['sem']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Admission Year</strong></td>
                        <td>
                          <?php echo $out['addmission_year']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Last Hostel Fee Receipt No</strong></td>
                        <td>
                          <?php echo $out['last_hostel_fee_receipt']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Student Mobile No</strong></td>
                        <td>
                          <?php echo $out['stud_mob']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Parents Mobile No</strong></td>
                        <td>
                          <?php echo $out['parent_mob']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Student Email Id</strong></td>
                        <td>
                          <?php echo $out['stud_mail']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>Student Address</strong></td>
                        <td>
                          <?php echo $out['stud_address']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>District</strong></td>
                        <td>
                          <?php echo $out['district']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>State</strong></td>
                        <td>
                          <?php echo $out['state']; ?>
                        </td>
                      </tr>
                      <tr>
                        <td><strong>AADHAAR No</strong></td>
                        <td>
                          <?php echo $out['adhar_no']; ?>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6 col-md-6">
                  <a href="#" v-on:click="edt()" class="btn btn-primary"><i class="fa fa-pencil-square-o"></i> Edit Record</a>
                  <a href="#" v-on:click="dlt()" class="btn btn-danger"><i class="fa fa-trash-o"></i> Delete Record</a>
                </div>
              </div>
            </div>
            <!-- <div class="panel-footer">
              Panel Footer
            </div> -->
          </div>
        </div>
      </div>
    </div>
  </div>

  <?php include './master/scripts.php'; ?>
  <script src="../js/jquery.toaster.js"></script>
  <script type="text/javascript" src="../js/custom.js"></script>
  <script type="text/javascript">
    var app= new Vue({
      el:"#wrapper",
      data:{
        id:'',
      },
      created:function () {
        var self = this;
        self.id=_get('id');
      },
      methods:{
        edt:function () {
          var self = this;
          $.toaster('Redirecting......', '', 'success');
          setTimeout(function() {
            window.location = "./updateDetails.php?id=" + self.id;
          }, 1600);

        },
        dlt:function () {
          var self = this;
          if (confirm("Are You Sure to Delete Record ?")) {
            $.post('../api/delete.php', { id: self.id }, function(result) {
              if (result[0]=='success') {
                $.toaster('Deleted successfully', 'Success', 'success');
                setTimeout(function() {
                  window.location.replace('./search.php');
                }, 1600);
              }else {
                $.toaster(result[1], 'Error', 'danger');
                self.process=false;
              }
          });
          }


        }
      }
    })
  </script>
</body>

</html>
