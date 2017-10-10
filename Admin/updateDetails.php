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
                    <h1 class="page-header">Forms</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-10">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Basic Form Elements
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form role="form" v-on:submit.prevent="onSubmit">
                                      <div class="col-lg-4">
                                          <div class="form-group">
                                              <label>Block</label>
                                              <input class="form-control" v-model="info.block_no">
                                          </div>
                                      </div>
                                      <div class="col-lg-4">
                                          <div class="form-group">
                                              <label>Room No</label>
                                              <input class="form-control" type="number" v-model="info.room_no">
                                          </div>
                                      </div>
                                      <div class="col-lg-4">
                                          <div class="form-group">
                                              <label>Admission Type</label>
                                              <input class="form-control" v-model="info.addmission_type">
                                          </div>
                                      </div>
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label>Enrollment No</label>
                                                <input class="form-control" v-model="info.enroll_no">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Sem</label>
                                                <select class="form-control" v-model="info.sem">
                                                    <option value="1">1</option>
                                                    <option value="2">2</option>
                                                    <option value="3">3</option>
                                                    <option value="4">4</option>
                                                    <option value="5">5</option>
                                                    <option value="6">6</option>
                                                    <option value="7">7</option>
                                                    <option value="8">8</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Name</label>
                                                <input class="form-control" v-model="info.name">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Student Mobile</label>
                                                <input class="form-control" v-model="info.stud_mob">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Parents Mobile</label>
                                                <input class="form-control" v-model="info.parent_mob">
                                            </div>
                                        </div>
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label>Last Hostel Fee Receipt No</label>
                                                <input class="form-control" v-model="info.last_hostel_fee_receipt">
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <label>Admission Year</label>
                                                <select class="form-control" v-model="info.addmission_year">
                                                    <option value="2014">2014</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2016">2016</option>
                                                    <option value="2017">2017</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Student Mail</label>
                                                <input class="form-control" v-model="info.stud_mail">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Student Address</label>
                                                <textarea class="form-control" rows="5" v-model="info.stud_address"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>District</label>
                                                <input class="form-control" v-model="info.district">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>State</label>
                                                <input class="form-control" v-model="info.state">
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label>Adhar Number</label>
                                                <input class="form-control" v-model="info.adhar_no">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="form-group">
                                                <label>Upload Photo</label>
                                                <input type="file" class="form-control" accept="image/*" id="files">
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <img v-bind:src="def" v-if=" info['photo'] == ''" alt="" width="100px" height="100px">
                                            <img v-bind:src="info['photo']" v-else alt="" width="100px" height="100px">
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-group">
                                                <label></label>
                                                <input type="Submit" class="btn btn-info" value="Update">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
    </div>
    <?php include './master/scripts.php'; ?>
    <script src="../js/jquery.toaster.js"></script>
    <script type="text/javascript" src="../js/custom.js"></script>
    <script type="text/javascript">
    var app = new Vue({
        el: '#wrapper',
        data: {
            info: [],
            def:'',
            b64data: false,
        },
        created: function() {
            var self = this;
            self.def=_default();
            var q = 'Id=' + _get('id')
            $.post('../api/searchApi.php', { query: q }, function(result) {
                self.info = result[0];
                console.log(self.info);
            });
        },
        methods:{
            onSubmit:function () {
              var self = this;
              self.process=true;
              var q="";
              q = "block_no = '" + self.info['bock_no'] + "' , room_no = '" + self.info['room_no'] + "' , addmission_type = '" + self.info['addmission_type'] + "' , enroll_no = '" + self.info['enroll_no'] + "' , name = '" + self.info['name'] + "' , sem= '" + self.info['sem'] + "' , stud_mob= '" + self.info['stud_mob'] + "' , parent_mob= '" + self.info['parent_mob'] + "' , last_hostel_fee_receipt = '" + self.info['last_hostel_fee_receipt'] + "' , addmission_year = '" + self.info['addmission_year'] + "' ,  stud_mail = '" + self.info['stud_mail'] + "' , stud_address = '" + self.info['stud_address'] + "' , district = '" + self.info['district'] + "' , state = '" + self.info['state'] + "' , adhar_no = '" + self.info['adhar_no'] + "' , photo = '" + self.info['photo'] + "' ";
              q = q + " WHERE Id = '" + _get('id') + "' " ;
              $.post('../api/update.php', { query: q }, function(result) {
                if (result[0]=='success') {
                  $.toaster('Your information has been successfully updated', 'Success', 'success');
                  setTimeout(function() {
                    window.location.replace('./details.php?id=' + _get('id'));
                  }, 1600);
                }else {
                  $.toaster(result[1], 'Error', 'danger');
                  self.process=false;
                }
            });
          },
        },
    });
    </script>
    <script type="text/javascript">
    document.getElementById("files").onchange = function() {
        var reader = new FileReader();
        var etr;
        reader.onload = function(e) {
            etr = e.target.result;
            var canvas = document.createElement("canvas");
            var ctx = canvas.getContext("2d");

            var image = new Image();
            //document.body.appendChild(image);

            image.onload = function(e) {
                canvas.width = 100; // target width
                canvas.height = Math.round((image.height * 100) / image.width);

                ctx.drawImage(image,
                    0, 0, image.width, image.height,
                    0, 0, canvas.width, canvas.height
                );
                // create a new base64 encoding
                app.info['photo'] = canvas.toDataURL();
            };
            image.src = etr;
        };
        reader.readAsDataURL(this.files[0]);
    };
    </script>
</body>

</html>
