<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Calendar</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../setfiles/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../setfiles/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../setfiles/bower_components/Ionicons/css/ionicons.min.css">
  <!-- fullCalendar -->
  <link rel="stylesheet" href="../setfiles/bower_components/fullcalendar/dist/fullcalendar.min.css">
  <link rel="stylesheet" href="../setfiles/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
  <!-- Theme style -->
  <link rel="stylesheet" href="../setfiles/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../setfiles/dist/css/skins/_all-skins.min.css">

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <!-- _top.jspf -->
  <%@ include file="../common/_top.jspf" %>
  
  <!-- Left side column. contains the logo and sidebar -->
  <%@ include file="../common/_nav.jspf" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Calendar
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Calendar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-3">
          <div class="box box-solid">
            <div class="box-header with-border">
              <h4 class="box-title">Draggable Events</h4>
            </div>
            <div class="box-body">
              <!-- the events -->
              <div id="external-events">
                <div class="external-event bg-green">Lunch</div>
                <div class="external-event" style="background-color: rgb(96, 92, 168);">오전</div>
                <div class="external-event">오후</div>
                <div class="external-event">야간</div>
                <div class="external-event bg-yellow">Go home</div>
                <div class="external-event bg-aqua">Do homework</div>
                <div class="external-event bg-light-blue">Work on UI design</div>
                <div class="external-event bg-red">Sleep tight</div>
                <div class="checkbox">
                  <label for="drop-remove">
                    <input type="checkbox" id="drop-remove">
                    remove after drop
                  </label>
                </div>

                <div id = "trashbox">
                  <button type="button" class="btn btn-primary btn-flat">remove</button>
                </div>
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
          <div class="box box-solid">
            <div class="box-header with-border">
              <h3 class="box-title">Create Event</h3>
            </div>
            <div class="box-body">
              <div class="btn-group" style="width: 100%; margin-bottom: 10px;">
                <!--<button type="button" id="color-chooser-btn" class="btn btn-info btn-block dropdown-toggle" data-toggle="dropdown">Color <span class="caret"></span></button>-->
                <ul class="fc-color-picker" id="color-chooser">
                  <li><a class="text-aqua" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-blue" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-light-blue" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-teal" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-yellow" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-orange" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-green" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-lime" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-red" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-purple" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-fuchsia" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-muted" href="#"><i class="fa fa-square"></i></a></li>
                  <li><a class="text-navy" href="#"><i class="fa fa-square"></i></a></li>
                </ul>
              </div>
              <!-- /btn-group -->
              <div class="input-group">
                <input id="new-event" type="text" class="form-control" placeholder="Event Title">

                <div class="input-group-btn">
                  <button id="add-new-event" type="button" class="btn btn-primary btn-flat">Add</button>
                </div>
                <!-- /btn-group -->
              </div>
              <!-- /input-group -->
            </div>
          </div>
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="box box-primary">
            <div class="box-body no-padding">
<!-- THE CALENDAR -->
              <div id="calendar"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /. box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 2.4.0
    </div>
    <strong>Copyright &copy; 2014-2016 <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                <p>New phone +1(800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                <p>Execution time 5 seconds</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="label label-danger pull-right">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Update Resume
                <span class="label label-success pull-right">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Laravel Integration
                <span class="label label-warning pull-right">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                Back End Framework
                <span class="label label-primary pull-right">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Allow mail redirect
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Other sets of options are available
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Expose author name in posts
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Allow the user to show his name in blog posts
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">Chat Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Show me as online
              <input type="checkbox" class="pull-right" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Turn off notifications
              <input type="checkbox" class="pull-right">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Delete chat history
              <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- Input Modal Form : jQuery 코드로 변환할 것. -->
<div class="modal fade" id="selectPopup" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ModalLabel">이벤트생성창.</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div id="varTest"></div>
      <div class="modal-body" id="inputTableForm">
        <table>
          <tbody>
            <tr>
              <td>시작 시간</td>
              <td><input class="timeForm" name="startTime" id="modalEStartTime" type="text"></td>
              <td><input class="timeForm" name="startMin" id="modalEStartMin" type="text"></td>
            </tr>
            <tr>
              <td>종료 시간</td>
              <td><input class="timeForm" name="endTime" id="modalEEndTime" type="text"></td>
              <td><input class="timeForm" name="endMin" id="modalEEndMin" type="text"></td>
            </tr>
            <tr>
              <td>배경색</td>
              <td colspan="2"><input id="modalEBack" type="text"></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">

        <!-- 이벤트 생성, 창닫기 -->
        <button id="makeEvent" class="btn btn-primary" type="button" data-dismiss="modal">확인</button>
        <button id="closeEventModal" class="btn btn-primary" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">취소</span>
        </button>
      </div>
    </div>
  </div>
</div>

<!-- jQuery 3 -->
<script src="../setfiles/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="../setfiles/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../setfiles/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Slimscroll -->
<script src="../setfiles/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../setfiles/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../setfiles/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../setfiles/dist/js/demo.js"></script>

<!-- AntPeople FullCalendar function -->
<script src="../setfiles/js/ant_fullcalendar3.js"></script>

<!-- fullCalendar -->
<script src="../setfiles/bower_components/moment/moment.js"></script>
<script src="../setfiles/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<!-- Page specific script -->
<script>
//calendarBaseVer04.html

var userId = "testUser";
//DayObj, TimeObj : 프로토타입 객체.
var startDay = new DayObj();
var endDay = new DayObj();
var startTime = new TimeObj();
var endTime = new TimeObj();

// 모달창 이벤트 생성버튼
$('#makeEvent').click(function() {
  //modalform의 입력창을 class명으로 찾아 값을 가져오고, int값으로 변환하여 변수에 저장.
  //Id셀렉터로 선택한 element내 요소를 find()로 조건선택하고
  // each()로 동일조건의 모든 element를 익명함수로 처리
  $('#inputTableForm').find('.timeForm').each(function() {
    // name속성값과 입력된 값을 가져옴
    var name = $(this).attr('name');
    var temp = $(this).val();
    // 가져온 값이 없거나 숫자가 아니면 0을 입력. 있으면 정수형으로 변환.
    if (temp == "") { temp = 0; }
    else { temp = parseInt(temp); }
    // case별로 값을 검사. 범위를 벗어나면 0을 입력.
    switch (name) {
      case "startTime":
        if(checkRange(name,temp) == "time") { startTime.time = temp; break; }
        else { startTime.time = 0; break; }
      case "startMin":
        if(checkRange(name,temp) == "min") { startTime.min = temp; break; }
        else { startTime.min = 0; break; }
      case "endTime":
        if(checkRange(name,temp) == "time") { endTime.time = temp; break; }
        else { endTime.time = 0; break; }
      case "endMin":
        if(checkRange(name,temp) == "min") { endTime.min = temp; break; }
        else { endTime.min = 0; break; }
    }
  });

//수정사항 : 동일 id 존재여부 확인하여 없는경우만 생성.
  var newEventObj = createObj (startDay,endDay,startTime,endTime);
  console.log('새로 생성된 obj배열: ');
  console.log(newEventObj);

  var alreadyExistDatas = [];
  var alertMsg = "아래의 일정은 이미 존재합니다.\n";
  //순차적으로 rendering
  for(var i=0; i<newEventObj.length; i++) {
    //동일 id를 찾아 존재하면 return값을 받아 전체 수행 이후 경고창을 띄워 알려준다.
    if($('#calendar').data(newEventObj[i].id) != null) {
      alreadyExistDatas[i] = newEventObj[i].startDate + "_" + newEventObj[i].startTime
                        + " ~ " + newEventObj[i].endDate + "_" + newEventObj[i].endTime;
    } else {
      //ConverTing : from antPeopleObj created by createObj() to fullCalendarObj
      var convertedEvent = convertToEventObj(newEventObj[i]);
      //Rendering
      $('#calendar').fullCalendar('renderEvent', convertedEvent, true);

      $('#calendar').data(newEventObj[i].id, newEventObj[i]);
      console.log('생성한 event: ');
      console.log($('#calendar').data(newEventObj[i].id));
      console.log('모든 event:');
      console.log($('#calendar').data());
    }
  }
  //경고창 팝업.
  if(alreadyExistDatas.length>0) {
    for(var i=0; i<alreadyExistDatas.length; i++) {
      console.log(alreadyExistDatas[i]);
      alertMsg = alertMsg + alreadyExistDatas[i] + "\n";
    }
    alert(alertMsg);
    console.log('모든 event:');
    console.log($('#calendar').data());
  }
});
// ./ End Of Modal창 이벤트 생성버튼


//fullCalendar 로드, 초기화
$(function() {
  $('#calendar').fullCalendar({
    header    : {
      left  : 'prev,next today',
      center: 'title',
      right : 'month,agendaWeek,agendaDay'
    },
    buttonText: {
      today: 'today',
      month: 'month',
      week : 'week',
      day  : 'day'
    },
    //Ajax로 가져올 event data
    // events : dummyEvents,

    //create
    // select dates.
    selectable: true,
    selectHelper: true,
    select: function(start, end) {
      // 선택한 연도,월,일을 ant_fullcalendar.js의 내장객체에 저장.
      // get()--> moments.js의 function.
      startDay.year = start.get('year');
      startDay.month = start.get('month');
      startDay.date = start.get('date');
      startDay.day = start.get('day');
      endDay.year = end.get('year');
      endDay.month = end.get('month');
      endDay.date = end.get('date');
      endDay.day = end.get('day');
      console.log("시작시간: ");
      console.log(startDay);
      console.log("종료: ");
      console.log(endDay);
      //modal popup.
      $('#selectPopup').modal('show');
    },
    // End of select dates---------------

    //delete
    eventClick: function (calEvent, jsEvent, view) {
      //calender에 보이는 부분과 내장객체 삭제
      console.log(calEvent.data);
      $('#calendar').fullCalendar('removeEvents', calEvent.id);
      console.log('삭제한 이벤트: ');
      console.log(calEvent.id);
      console.log($('#calendar').data(calEvent.id));
      $('#calendar').removeData(calEvent.id);
      console.log('삭제 후 모든 event:');
      console.log($('#calendar').data());
    },

    //drag and drop 활성화 필요.


    //update
    editable : true,
    // eventResizeStart: function(event, jsEvent, ui, view) {
    //   // var selectedResizingEvent = event.id;
    //   console.log('수정하는 이벤트');
    //   console.log($('#calendar').data(event.id));
    //   console.log('이벤트 수정시작, 모든 event:');
    //   console.log($('#calendar').data());
    //   $('#calendar').removeData(event.id);
    //   console.log('이벤트 수정시작, 관리데이터에서 삭제 후 모든 event:');
    //   console.log($('#calendar').data());
    // },
    // eventResizeEnd: function(event, jsEvent, ui, view) {
    //확인 후, 종료날짜가 변경되면 캘린더에서 이벤트를 삭제하고 그날 자정으로 이벤트를
    //
    // },
    // eventResize: function(event, delta, revertFunc) {
    //   var selectedResizingEvent = $('#calendar').data(event.id);
    //
    //   var newStartYear = event.start.get('year');
    //   var newStartMonth = event.start.get('month');
    //   var newStartDate = event.start.get('date');
    //
    //   var newEndYear = event.end.get('year');
    //   var newEndMonth = event.end.get('month');
    //   var newEndDate = event.end.get('date');
    //   var newEndTime = event.end.get('hour');
    //   var newEndMin = event.end.get('minute');
    //
    //   alert(event.title + " end is now " + event.end.format());
    //
    //   if (!confirm("is this okay?")) {
    //     revertFunc();
    //   }
    //
    // }
  });
  // ./ End of fullCalendar 초기화 -------------------------------------
});
</script>
</body>
</html>