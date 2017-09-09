<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <?php include './master/headers.php'; ?>
  </head>
  <body onresize="windowResize()">
    <div id="wrapper">
      <?php include './master/navbar.php'; ?>
      <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><i class="fa fa-search fa-fw"></i>Search</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
          <div class="col-lg-6">
            <div class="panel panel-warning">
                <div class="panel-heading">
                  <i class="fa fa-search fa-fw"></i>
                </div>
                <div class="panel-body">
                  <div class="row">
                    <form v-on:submit.prevent="onSubmit">
                      <div class="col-lg-4">
                        <div class="form-group">
                            <label>Block</label>
                            <select class="form-control" v-model="selectedBlock" required>
                                <option value="">Select Block</option>
                                <option v-for="block in blocks" v-bind:value="block"> {{block}} </option>
                            </select>
                        </div>
                      </div>
                      <div class="col-lg-8">
                        <div class="form-group">
                            <label>Room Number</label>
                            <input class="form-control" placeholder="Enter Room Number" type="number" v-model="roomNumber" required>
                        </div>
                      </div>
                      <div class="col-lg-3">
                        <button class="btn btn-outline btn-info"><i class="fa fa-search fa-fw"></i>Search</button>
                      </div>
                    </form>

                  </div>
                </div>
                <div class="panel-footer">
                  <button type="button" name="btnPrev" class="btn btn-primary" v-on:click="prevResult" :disabled="shortcuts == false"><i class="fa fa-arrow-left" aria-hidden="true"></i></button>
                  <button type="button" name="btnNext" class="btn btn-primary" style="float:right;" v-on:click="nextResult" :disabled="shortcuts == false"><i class="fa fa-arrow-right" aria-hidden="true"></i></button>
                </div>
            </div>
          </div>
        </div>
        <div class="panel panel-info">
            <div class="panel-heading">
                <i class="fa fa-table fa-fw"></i>Data
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-sm-6 col-md-4" v-bind:class=" { 'col-xs-4' : isLandscape} ">
                  <div class="thumbnail">
                    <img src="./imgs/user.png" alt="..." height="200px">
                    <div class="caption">
                      <h3>Name</h3>
                      <p><strong>Mobile No.:</strong>1234567890</p>
                      <!-- <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p> -->
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4" v-bind:class="{ 'col-xs-4' : isLandscape}">
                  <div class="thumbnail">
                    <img src="./imgs/user.png" alt="..." height="200px">
                    <div class="caption">
                      <h3>Name</h3>
                      <p><strong>Mobile No.:</strong>1234567890</p>
                      <!-- <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p> -->
                    </div>
                  </div>
                </div>
                <div class="col-sm-6 col-md-4"  v-bind:class="{'col-xs-4' : isLandscape}">
                  <div class="thumbnail">
                    <img src="./imgs/user.png" alt="..." height="200px">
                    <div class="caption">
                      <h3>Name</h3>
                      <p><strong>Mobile No.:</strong>1234567890</p>
                      <!-- <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p> -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </div>

    <?php include './master/scripts.php'; ?>
    <script type="text/javascript">
      function windowResize() {
        app.resize();
      }
    </script>
    <script type="text/javascript">
      var app = new Vue({
        el:"#wrapper",
        data:{
          blocks:[],
          selectedBlock:'',
          roomNumber:'',
          initial:true,
          shortcuts:false,
          isLandscape:false,
        },
        created:function () {
          var self = this;
          self.blocks.push("H");
          self.resize();
        },
        methods:{
          onSubmit:function () {
            var self = this;
            console.log(self.selectedBlock+self.roomNumber);
            self.initial=false;
          },
          toggleShortcuts:function () {
            var self = this;
            if(self.selectedBlock=="" || self.roomNumber=="" || self.initial==true){
              self.shortcuts=false;
            }else {
              self.shortcuts=true;
            }
          },
          prevResult:function () {
            var self = this;
            self.roomNumber--;
            self.onSubmit();
          },
          nextResult:function () {
            var self = this;
            self.roomNumber++;
            self.onSubmit();
          },
          resize:function () {
            var self = this;
            if ((window.innerHeight+200) < window.innerWidth) {
              self.isLandscape=true;
            }
            else {
              self.isLandscape=false;
            }
          },
        },
        watch:{
          selectedBlock:function (e) {
            var self = this;
            self.toggleShortcuts();
          },
          roomNumber:function (e) {
            var self = this;
            self.toggleShortcuts();
          },
          initial:function (e) {
            var self = this;
            self.toggleShortcuts();
          },

        },
      });
    </script>
  </body>
</html>
