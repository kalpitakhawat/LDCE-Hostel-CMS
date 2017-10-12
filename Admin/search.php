<?php include('./master/render_check.php'); ?>
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
              <div class="row">
                <div class="col-lg-3">
                  <i class="fa fa-table fa-fw"></i>Data
                </div>
                <div class="col-lg-9">
                  <form action="add.php" method="post">
                    <input type="hidden" name="block" v-model="blk">
                    <input type="hidden" name="room" v-model="room">
                    <button v-if="blk!=''|| room!='' " class="btn btn-link" name="Submit" style="padding:0px; float:right;"><i class="fa fa-plus"></i> Add New Record In <strong>{{blk}}-{{room}}</strong></button>
                  </form>
                </div>
              </div>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="text text-center" v-if="process"><h4>Searching...</h4></div>
                <div v-if="process==false">
                  <div class="text text-center" v-if="results.length < 1"><h4>No Results</h4></div>
                  <div class="col-sm-6 col-md-4" v-bind:class=" { 'col-xs-4' : isLandscape} " v-for="r in results">
                    <div class="thumbnail">
                      <img v-bind:src="def" alt="..." v-if=" r.photo == ''" width="100%">
                      <img v-bind:src="r.photo" alt="..." v-else width="100%">
                      <div class="caption">
                        <h5> {{r.name}} </h5>
                        <p><strong>Mobile No :</strong> <a v-bind:href="'tel:'+r.stud_mob">{{r.stud_mob}}</a> </p>
                        <p class="text-right"><span class="label label-danger">{{r.addmission_type}}</span></p>
                        <p><a v-bind:href="'./details.php?id='+r.Id" class="btn btn-default" role="button">View Details</a></p>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>
        </div>
      </div>
    </div>

    <?php include './master/scripts.php'; ?>
    <script type="text/javascript" src="../js/custom.js"></script>
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
          blk:"",
          room:"",
          selectedBlock:'',
          roomNumber:'',
          initial:true,
          shortcuts:false,
          isLandscape:false,
          results:[],
          process:false,
          def:"",
        },
        created:function () {
          var self = this;
          $.post("../api/getBlocks.php", function(result){
              self.blocks=result;
          });
          self.resize();
        },
        methods:{
          onSubmit:function () {
            var self = this;
            self.process=true;
            if( isNaN(self.roomNumber) ) return alert("Topa je kam karva mate banayu 6 e karne L0ad")
            //console.log(self.selectedBlock+self.roomNumber);
            var q="block_no = '" + self.selectedBlock + "' AND room_no = '" + self.roomNumber + "'";
            $.post("../api/searchApi.php", {query: q}, function(result){
                self.results=result;
                self.process=false;
                self.def=_default();
            });
            self.blk=self.selectedBlock;
            self.room=self.roomNumber;
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
