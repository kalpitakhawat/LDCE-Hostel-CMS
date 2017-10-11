<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
    <?php include './master/headers.php'; ?>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css">
  </head>
  <body>
    <div id="wrapper">
      <?php include './master/navbar.php'; ?>
      <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header"><i class="fa fa-list-alt fa-fw"></i>Report Generator</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <i class="fa fa-search"></i>
                Search Query
              </div>
              <div class="panel-body">
                <form v-on:submit.prevent="onSubmit">
                  <div class="row" style="border-bottom: 1px solid gray;" v-for="element in elements">
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Field</label>
                        <select class="form-control" v-bind:name="element.field" v-model="element.fieldVal" style="width: 100% !important" required>
                          <option value="">Choose Field</option>
                          <option v-for="field in fields" v-bind:name="field"> {{field}} </option>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Comparision Operator</label>
                        <select class="form-control" v-bind:name="element.compare" v-model="element.compareVal" style="width: 100% !important" required>
                          <option value="">Choose Comparision Operator</option>
                          <option value="=">Equals to</option>
                          <option value="like">like</option>
                          <option value="<">less than</option>
                          <option value=">">greater than</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Value</label>
                        <input type="text" class="form-control" id="inlineFormInput" placeholder="Value" v-bind:name="element.value" v-model="element.valueVal" required>
                      </div>
                    </div>
                    <div class="col-md-3">
                      <div class="form-group">
                        <label>Connector For Multiple Selection</label>
                        <select class="form-control" style="width: 100% !important" v-bind:name="element.connector" v-on:change="onChange(element.id)" v-model="element.conVal">
                          <option value="">Select Connector</option>
                          <option value="AND">AND</option>
                          <option value="OR">OR</option>
                        </select>
                      </div>
                    </div>
                  </div>
                  <div class="row" style="margin-top: 5px;">
                    <div class="col-md-3">
                      <button class="btn btn-primary" type="submit">Search</button>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <div class="panel panel-default">
              <div class="panel-heading">
                <i class="fa fa-table"></i>
                Data Table <button class="btn btn-link" style="padding: 0px; float: right;" v-on:click="convert"><i class="fa fa-file-excel-o" aria-hidden="true"></i>  Export As CSV</button>
              </div>
              <div class="panel-body">
                <div class="text text-center" v-if="process"><h4>Searching...</h4></div>
                <div v-if="process==false">
                  <div class="text text-center" v-if="results.length < 1"><h4>No Results</h4></div>

                  <div class="table-responsive" v-if="results.length > 0">
                    <table class="table table-striped table-bordered table-hover" width="100%"  id="dataTable" cellspacing="0">
                        <thead>
                          <tr>
                            <th v-for="field in fields"> {{field}} </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr v-for="result in results">
                            <td v-for="field in fields"> {{result[field]}} </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
            </div>
        </div>
      </div>
    </div>

    <?php include './master/scripts.php'; ?>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.16.2/axios.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js" charset="utf-8"></script>
    <script type="text/javascript">
      function JSONToCSVConvertor(JSONData, ReportTitle, ShowLabel) {
        //If JSONData is not an object then JSON.parse will parse the JSON string in an Object
        var arrData = typeof JSONData != 'object' ? JSON.parse(JSONData) : JSONData;

        var CSV = '';
        //Set Report title in first row or line

        //CSV += ReportTitle + '\r\n\n';

        //This condition will generate the Label/Header
        if (ShowLabel) {
            var row = "";

            //This loop will extract the label from 1st index of on array
            for (var index in arrData[0]) {

                //Now convert each value to string and comma-seprated
                row += index + ',';
            }

            row = row.slice(0, -1);

            //append Label row with line break
            CSV += row + '\r\n';
        }

        //1st loop is to extract each row
        for (var i = 0; i < arrData.length; i++) {
            var row = "";

            //2nd loop will extract each column and convert it in string comma-seprated
            for (var index in arrData[i]) {
                row += '"' + arrData[i][index] + '",';
            }

            row.slice(0, row.length - 1);

            //add a line break after each row
            CSV += row + '\r\n';
        }

        if (CSV == '') {
            alert("Invalid data");
            return;
        }

        //Generate a file name
        var fileName = "MyReport_";
        //this will remove the blank-spaces from the title and replace it with an underscore
        fileName += ReportTitle.replace(/ /g,"_");

        //Initialize file format you want csv or xls
        var uri = 'data:text/csv;charset=utf-8,' + escape(CSV);

        // Now the little tricky part.
        // you can use either>> window.open(uri);
        // but this will not work in some browsers
        // or you will not get the correct file extension

        //this trick will generate a temp <a /> tag
        var link = document.createElement("a");
        link.href = uri;

        //set the visibility hidden so it will not effect on your web-layout
        link.style = "visibility:hidden";
        link.download = fileName + ".csv";

        //this part will append the anchor tag and remove it after automatic click
        document.body.appendChild(link);
        link.click();
        document.body.removeChild(link);

    }
    </script>
    <script type="text/javascript">
      var app = new Vue({
        el: '#page-wrapper',
        data:{
          elements: [],
          fields:[],
          results:[],
          process:false,
        },
        created:function () {
          var self=this;
          this.add();
          axios.get('../api/getfields.php').then(response => {
            // JSON responses are automatically parsed.
            self.fields=response.data;
            self.fields.splice(5,1);
          })
          .catch(e => {
            this.errors.push(e)
          });
        },
        methods:{
          add:function () {
            var self =this;
            var newL = self.elements.length + 1;
            self.elements.push({
              id: newL,
              field: "field" + newL,
              fieldVal:"",
              compare: "compare" + newL,
              compareVal:"",
              value: "value" + newL,
              valueVal:"",
              connector: "connector" + newL,
              conVal: ""
            });
          },
          onChange:function (e) {
            var self= this;
            if (self.elements[e-1].conVal != "") {
              if (e == self.elements.length) {
                self.add();
              }
            }else{
              var n= self.elements.length - e;
              for (var i = 0; i <n; i++) {
                self.elements.pop();
              }
            }
          },
          onSubmit:function () {
            var self = this;
            self.process=true;
            var string="";
            for (var i = 0; i < self.elements.length; i++) {
              var string = string + self.elements[i].fieldVal;
              var string = string + " " +self.elements[i].compareVal;
              var string = string + " '" +self.elements[i].valueVal+"'";
              var string = string + " "+self.elements[i].conVal+" ";

            }
            console.log(string);
            $.post('../api/searchApi.php', { query:string }, function(result) {
              self.results=result;
              self.process=false;
            });
          },
          convert:function () {
            var self=this;
            JSONToCSVConvertor(self.results,"List",true);
          },
        },
        watch:{
          results:function () {
            $(document).ready(function(){
              $('#dataTable').DataTable();
            });
          }
        },
      });
    </script>
  </body>
</html>
