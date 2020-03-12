<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Ansonika">
<title>Yolowa-memberTable</title>

<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon"
	href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72"
	href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114"
	href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144"
	href="img/apple-touch-icon-144x144-precomposed.png">

<!-- GOOGLE WEB FONT -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800"
	rel="stylesheet">

<!-- Bootstrap core CSS-->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Main styles -->
<link href="css/admin.css" rel="stylesheet">
<!-- Icon fonts-->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!-- Plugin styles -->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Your custom styles -->
<link href="css/custom.css" rel="stylesheet">
</head>

<style>
.innerCol{
    margin: 0px;
    display: inline-block;
    float: left;
    padding: 0px;
}
#dataTable .center-head{
    text-align: center
}

.center-span{
    line-height: 40px;
    margin-right: .5rem!important;
    padding: 0 10px;
}

.field{
     border:1px solid lightgray;
     border-radius:5px;
     margin-bottom: 7px;
 }
 
.dateField .fieldContent,
.keywordField .fieldContent{
     padding:5px 0;
     margin: 0 20px;
     margin-bottom:7px;
     border-bottom:1px solid lightgray;
 }
 
 .field legend{
     width:auto;
     font-size: 13px;
     padding: 0 10px;
     margin: 0 10px;"
}

.ckeckboxField,
.etcField{
     margin-right: .9em;
     width: auto;
     height: 70px;
 }
 
 .filedEnd{
     margin-right: 0 !important;
 }
 
 .ckeckboxField div,
 .etcField div{
     text-align: center;
     line-height: 43px;
 }

.fieldCollection{
    margin: 0em;
}

.dateField .btn,
.keywordField .btn{
    margin-left: .5em;
    font-size: .9em;
    height: 40px
}

.keywordField input{
    height: 40px
}

form .format{
    float: right;
    width: 8.5em;
}

.checkboxSet{
    margin: 0px;
    height: 23px;
    margin-top:12px;
}



/**/
.message{
    position: absolute;
    top: -30px;
    background: black;
    color: white;
    font-size: 12px;
    width: 10em;
    height: 28px;
    text-align: center;
    border-radius: 5px;
    line-height: 25px;
}


/*fullcomponent*/
.fullcomponent{
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background: white;
	z-index: 10041004;
}

.fullcomponent .exitBtnBox button{
		float: right; border: none; width: 50px; height: 50px; background: white;
}
.fullcomponent .exitBtnBox button p{
	font-size: 30px
}

.fullcomponent .title{
	margin: 50px 10em;
}

/*member detatil component*/
#memberDetatilComponent .content div{
	border: 1px solid black;
}

#memberDetatilComponent .content{
	margin: 0 10em;
}


</style>
<body class="fixed-nav sticky-footer" id="page-top">
	<%-- header include --%>
	<jsp:include page="nav.jsp"></jsp:include>

	<!-- /Navigation-->
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><h4><a href="#">회원정보</a></h4></li>
			</ol>
			<!-- 데이터를 filter -->
			<div class="card mb-3">
				<!-- 카드 헤더 -->
				<div class="card-header">
					<i class="fa fa-filter"></i> 필터
				</div>
				<div class="card-body">
					<form name="searchForm">
						<fieldset class="field dateField">
							<legend>날짜 검색</legend>
						</fieldset>
						<fieldset class="field keywordField">
							<legend>단어 검색</legend>
						</fieldset>
						
						<div class="row fieldCollection">
							<div class="col-6 innerCol">
								<div class="col-6 innerCol">
									<fieldset class="field ckeckboxField">
										<legend>호스트 구분</legend>
										<div class="checkboxSection">
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" onclick="allCheck(this);" name="allhost">
											  <label class="form-check-label" onclick="checkFunction(this); allCheck(this);">전체</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="host" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">호스트</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="superHost"  onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">슈퍼호스트</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="guest" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">게스트</label>
											</div>
										</div>
									</fieldset>
								</div>
								<div class="col-6 innerCol">
									<fieldset class="field etcField">
										<legend>상태 선택</legend>
										<div class="checkboxSection">
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" onclick="allCheck(this);" name="allStatus">
											  <label class="form-check-label" onclick="checkFunction(this); allCheck(this);">전체</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="active" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">정상</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="inactive" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">휴면</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="pause" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">정지</label>
											</div>
										</div>
									</fieldset>
								</div>
							</div>
							<div class="col-6 innerCol">
								<fieldset class="field ckeckboxField" style="margin:0px">
									<legend>기타 설정</legend>
									<div class="etcSection">
										<div class="row">
											<div class="col-5" style="text-align: center;">
												<label class="center-span">정지횟수</label>
												<input type="number" class="form-control" style="display:inline; width: 50px; height:40px" min="0" max="5" value="0">
												<span class="center-span">~</span>
												<input type="number" class="form-control" style="display:inline; width: 50px; height:40px" min="0" max="5" value="5">
											</div>
											<div class="col-7" style="text-align: left;">
												<label class="center-span">총매출</label>
												<input type="text" class="form-control" style="display:inline; width: 130px; height:40px" min="0" max="9999999999" value="0">
												<span class="center-span">~</span>
												<input type="text" class="form-control" style="display:inline; width: 130px; height:40px" min="0" max="9999999999" value="9999999999">
											</div>
										</div>
									</div>
								</fieldset>
							</div>
						</div>
						<div class="row fieldCollection">
							<div class="col-10" style="float:left">
								<div style="margin-top: 18px;">
									<sapn>
										<input type="radio" name="seachRow" value="100">
										<label onclick="checkFunction(this)"><strong>100명 검색</strong></label>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</sapn>
									<sapn>
										<input type="radio" name="seachRow" value="300" checked="true">
										<label onclick="checkFunction(this)"><strong>300명 검색</strong></label>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</sapn>
									<sapn>
										<input type="radio" name="seachRow" value="500">
										<label onclick="checkFunction(this)"><strong>500명 검색</strong></label>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</sapn>
									<sapn>
										<input type="radio" name="seachRow" value="1000">
										<label onclick="checkFunction(this)"><strong>1000명 검색</strong></label>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</sapn>
									<sapn>
										<input type="radio" name="seachRow" value="9999">
										<label onclick="checkFunction(this)"><strong>모든회원 검색</strong></label>
									</sapn>
								</div>
							</div>
							<div class="col-2" style="padding: 0px">
								<input type="submit" class="btn-primary" style="width: 100%; height: 44px; margin-top:7px;" value="검색하기">
							</div>
						</div>
					</form>
				</div>
			</div>
			<div class="container-fluid" style="padding: 0px;">		
				<!-- DataTables Card-->
				<div class="card mb-3">
					<!-- 카드 헤더 -->
					<div class="card-header">
						<i class="fa fa-table"></i> 테이블
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<%-- 칼럼 --%>
								<thead class="center-head">
									<tr>
										<th colspan="8">회원 기본정보</th>
										<th colspan="3">회원 상세정보</th>
										<th>매출 정보</th>
									</tr>
									<tr>
										<th>회원번호</th>
										<th>이메일</th>
										<th>이름</th>
										<th>생년월일</th>
										<th>전화번호</th>
										<th>주소</th>
										<th>성별</th>
										<th>회원가입일</th>
										<th>호스팅</th>
										<th>정지횟수</th>
										<th>회원 상태</th>
										<th>총매출</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="" items="" begin="1" end="200" step="1">
									<%--<c:forEach var="" items="">--%>
										<tr>
											<th><a onclick="openMemberDetailComponent('1234');">1234</a></th>
											<th>aaa@naver.com</th>
											<th>홍길동</th>
											<th>2000-01-01</th>
											<th>010-1234-5678</th>
											<th>서울시 강동구 상일동 123-45</th>
											<th>남</th>
											<th>2000-01-01</th>
											<th>3</th>
											<th></th>
											<th>정상</th>
											<th>500,000(20)</th>
										</tr>
										<tr>
											<th>5678</th>
											<th>bbb@gmail.com</th>
											<th>임꺽정</th>
											<th>1999-01-01</th>
											<th>010-8765-4321</th>
											<th>서울시 강동구 고덕동 123-45</th>
											<th>여</th>
											<th>1999-01-01</th>
											<th></th>
											<th>1</th>
											<th>정지</th>
											<th>250,000(20)</th>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<%--   --%>
					<div class="card-footer small text-muted">마지막 변경일 : ${el }</div>
				</div>
				<!-- /tables-->
			</div>
		<!-- /container-fluid-->
		</div>
	</div>

	<%-- footer include --%>
	<jsp:include page="footer.jsp"></jsp:include>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fa fa-angle-up"></i>
	</a>
	
	<%-- include directive : exit modal --%>
	<%@ include file="/admin_section/component/exit.jspf"%>
	
	
	<%-- member detail component--%>
	<div id="memberDetatilComponent" class="fullcomponent">
		<div>
			<div class="exitBtnBox" style="margin: 30px; height: 10px;">
				<button type="button" onclick="closeMemberDetatilComponent()" style=""><p style="font-size: 30px">x</p></button>
			</div>
			<div class="title">
				<h3>회원 상세보기</h3>
				<p>회원번호 : 0001 (정상 [or 정지 (~9999~12-30 / 영구)])</p>
			</div>
			<div class="content">
				<div class="row">
					<%-- 회원프로필에 관련된 부분 --%>
					<div class="col">
						<div>
							<h5>프로필</h5>
						</div>
						<div>
							<img src="${pageContext.request.contextPath}/admin_section/img/Penguins.jpg" width="300px">
							
						</div>
						<div>
							
						</div>
					</div>
					<%-- 회원 상세정보에 관한 부분 --%>
					<div class="col">
						<div>
							<p class="email">이메일 : aaa@naver.com</p>
							<p class="name">이름 : 홍길동			성별 : 남</p>
							<p class="birthday">생년월일 : yyyy년 mm월 dd일</p>
							<p class="phone">전화번호 : 010-0000-1234</p>
							<p class="address">주소 : 서울시 강동구 상일동 123-123</p>
							<p class="joinDate">회원가입일 : 1999-02-02</p>
							<p class="lastLogin">마지막로그인 : 2011-01-01</p>
							<p class="status">회원 상태 : 정상</p>
							<p class="pauseCount">정지횟수 : 3 <a href="#">[정지횟수초기화]</a></p>
						</div>
					</div>
					<%-- 회원의 여행에 관한 부분 --%>
					<div class="col">
						<div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<%-- javascript --%>
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Page level plugin JavaScript-->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="vendor/jquery.selectbox-0.2.js"></script>
	<script src="vendor/retina-replace.min.js"></script>
	<script src="vendor/jquery.magnific-popup.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="js/admin.js"></script>
	<!-- Custom scripts for this page-->
	<script src="js/admin-datatables.js"></script>
	
	<!-- rangeSearchForm 업데이트 -->
	<script>
	//global setting
	var rangeArrNum = 3;
	var keywordArrNum = 5
	
	//-----
	var rangeCntArr = [];
	for(let i = rangeArrNum; i > 0; i--){
		rangeCntArr.push(i);
	}
	
	var keywordCntArr = [];
	for(let i = keywordArrNum; i > 0; i--){
		keywordCntArr.push(i);
	}
	
	// 선택된 키워드포맷을 임시 저장을위한 배열객체
	var selectedKeywordFormat = [];
	
	var plusRangeDiv = function(){
		var cnt = rangeCntArr.pop();
		
		if(cnt == undefined) return;
		
		var yearOpHtml = "";
		var monthOpHtml = "";
		var dayOpHtml = "";
		
		//년(2020~1940) 월(1~12) 일(1~31) 세팅
		for(let i = 1; i <= 31; i++){
			dayOpHtml += "<option value='"+i+"'>"+i+"일</option>"
		}
		
		for(let i = 1; i <= 12; i++){
			monthOpHtml += "<option value='"+i+"'>"+i+"월</option>"
		}
		
		for(let i = 2020; i >= 1940; i--){
			yearOpHtml += "<option value='"+i+"'>"+i+"년</option>"
		}
		
		var div = document.createElement("div");
		div.classList = "row fieldContent";
		div.id = "rangeBox" + cnt;
		
		// contents 주입
		// set name 1 : rangeFormat1 - rangeStartYear1 - rangeStartMonth1 - rangeStartDay1 - rangeEndYear1 - rangeEndMonth1 - rangeEndDay1
		// set name 2 : rangeFormat2 - rangeStartYear2 - rangeStartMonth2 - rangeStartDay2 - rangeEndYear2 - rangeEndMonth2 - rangeEndDay2
		// set name 3 : rangeFormat3 - rangeStartYear3 - rangeStartMonth3 - rangeStartDay3 - rangeEndYear3 - rangeEndMonth3 - rangeEndDay3
		div.innerHTML = "<div class='col-2'><select class='custom-select mr-sm-2 format' name='rangeFormat"+cnt+"'><option value='birthDay' selected>생년월일</option><option value='joinDate'>회원가입</option><option value='lastLogin'>마지막로그인</option></select></div><div class='col-5'><select class='custom-select mr-sm-2' name='rangeStartYear"+cnt+"'><option value=''>년</option>"+yearOpHtml+"</select><select class='custom-select mr-sm-2' name='rangeStartMonth"+cnt+"'><option value=''>월</option>"+monthOpHtml+"</select><select class='custom-select mr-sm-2' name='rangeStartDay"+cnt+"'><option value=''>일</option>"+dayOpHtml+"</select><span class='center-span'>~</span><select class='custom-select mr-sm-2' name='rangeEndYear"+cnt+"'><option value=''>년</option>"+yearOpHtml+"</select><select class='custom-select mr-sm-2' name='rangeEndMonth"+cnt+"'><option value=''>월</option>"+monthOpHtml+"</select><select class='custom-select mr-sm-2' id='rangeEndDay"+cnt+"'><option value=''>일</option>"+dayOpHtml+"</select></div><div class='col-3'><button type='button' class='btn' onclick='selectPrevious(\"rangeBox"+cnt+"\", 1);'>1개월전</button><button type='button' class='btn' onclick='selectPrevious(\"rangeBox"+cnt+"\", 3);'>3개월전</button><button type='button' class='btn' onclick='selectPrevious(\"rangeBox"+cnt+"\", 6);'>6개월전</button></div><div class='col-2'><button type='button' class='btn' onclick='plusRangeDiv();'>+</button><button type='button' class='btn' onclick='minusRangeDiv(this)'>-</button></div>";
		
		searchForm.getElementsByClassName("dateField")[0].append(div);
	}
	
	var minusRangeDiv = function(t){
		if(rangeCntArr.length < rangeArrNum-1){
			var target = $(t).parent().parent();
			var id = target.attr("id");
			target.remove();
			rangeCntArr.push(id.substr(id.length-1));
		}
	}
	
	// 선택한 데이트 박스의 내용을 "현재월-선택한월 ~ 현재월"로 세팅하는 기능을 제공하는 함수
	var selectPrevious = function(boxId, month){
		console.log(boxId);
		// date setting, 현재 기반으로 세팅
		var end = new Date();
		
		var start = new Date();
		start.setMonth(end.getMonth()-month);
		
		var target = [];
		
		target.push(start.getYear()+1900);
		target.push(start.getMonth()+1);
		target.push(start.getDate());
		
		target.push(end.getYear()+1900);
		target.push(end.getMonth()+1);
		target.push(end.getDate());
		
		// DHTML
		var box = document.getElementById(boxId);
		var num = boxId.substr(boxId.length-1);
		
		var selects = box.getElementsByTagName("select");
		
		var options = "";
		
		// select option setting
		for(let i = 0; i<selects.length-1; i++){
			
			var options = selects[i+1].options;
			
			for(let j=0; j<options.length; j++) {
			    if(options[j].selected == true) {
			        options[j].selected == false;
			        break;
			    }
			}
			
			for(let j=0; j<options.length; j++) {
			    if(options[j].value == target[i]) {
			        options[j].selected = "true";
			        break;
			    }
			}
		}
	}
	
	//
	var plusKeywordDiv = function(){
		var cnt = keywordCntArr.pop();
		
		if(cnt == undefined) return;
		
		var div = document.createElement("div");
		div.classList = "row fieldContent";
		div.id = "keywordBox" + cnt;
		
		// contents 주입
		// set name 1 : keywordFormat1 - keyword1 
		// set name 2 : keywordFormat2 - keyword2 
		// set name 3 : keywordFormat3 - keyword3 
		div.innerHTML = "<div class='col-2'><select class='custom-select mr-sm-2 format' name='keyword"+cnt+"' ><option value='no'>회원번호</option><option value='email'>이메일</option><option value='name'>이름</option><option value='phone'>전화번호</option><option value='address'>주소</option></select></div><div class='col-8'><input type='text' class='form-control' name='keyword"+cnt+"' placeholder='검색어를 입력하세요.' /></div><div class='col-2'><button type='button' class='btn' onclick='plusKeywordDiv();'>+</button><button type='button' class='btn' onclick='minusKeywordDiv(this)'>-</button></div>";
		
		searchForm.getElementsByClassName("keywordField")[0].append(div);
	}
	
	var minusKeywordDiv = function(t){
		if(keywordCntArr.length < keywordArrNum-1){
			var target = $(t).parent().parent();
			var id = target.attr("id");
			target.remove();
			keywordCntArr.push(id.substr(id.length-1));
		}
	}
	
	var setKeywordFormat = function(){
		//format 클래스가 들어가 셀렉트를 선택
		var selects = document.getElementsByClassName("keywordField")[0].getElementsByClassName("format");
		// select option setting
		for(let i = 0; i<selects.length; i++){
			var options = selects[i].options;
			console.log(options);
			
			for(key in selectedKeywordFormat){
				//각 select의 option 확인하여 disable
				for(let j = 0; j<options.length; j++){
					console.log("value : "+options[j].value);
					console.log("key : "+key);
					if(options[j].value == key){
						$(options[j]).prop("disabled",true);
						console.log(option)
					}
				}
			}
		}
	}
	
	// 체크박스/ 라디오를 눌렀을때 선택 기능제공
	var checkFunction = function(t){
		var input = $(t).parent().children()[0];
		if(input.checked == true){
			input.checked = false
		}else{
			input.checked = true
		}
	}
	
	// "모든" 버튼을 눌렀을때 다른 모든 버튼이 선택되는 기능을 제공
	var allCheck = function(t){
		var input = $(t).parent().children()[0];
		var $divs = $(t).parent().parent().children();
		if(input.checked == true){
			$divs.each(function(i, e){
					$(e).children()[0].checked = true;
			});
		}else{
			$divs.each(function(i, e){
				$(e).children()[0].checked = false;
			});
		}
	}
	
	// "모든" 버튼을 제외한 다른 버튼을 눌렀을때 다른 버튼이 선택되었는지 확인하고 "모든" 버튼을 조정하는 기능을 제공
	var checkAllBtn = function(t){
		var checkCnt = 0;
		var $divs = $(t).parent().parent().children();
		var target = "";
		$divs.each(function(i, e){
			if(i != 0){
				if($(e).children()[0].checked == true){
					checkCnt += 1;
				}
			}else{
				target = $(e).children()[0];
			}
		})
		if(checkCnt == $divs.length-1){
			target.checked = true;		
		}else{
			target.checked = false;
		}
	}
	
	// 회원 상제정보 컴포넌트를 생성(ajax)
	var openMemberDetailComponent = function(no){
		var result = setMemberDetailComponent(no);
		
		$("#memberDetatilComponent").css("display", "block");
	}
	
	// ajax를 이용하여 컴포넌트의 생성 객체를 전달
	var setMemberDetailComponent = function(){
		
	}
	
	var closeMemberDetatilComponent = function(){
		$("#memberDetatilComponent").css("display", "none");
	}
	
	// 생성
	plusRangeDiv();
	plusKeywordDiv();
	</script>
</body>
</html>
