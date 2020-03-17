<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="yolowa">
<title>Yolowa-admin-noitce</title>

<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

<!-- GOOGLE WEB FONT -->
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

<!-- Bootstrap core CSS-->
<link href="${pageContext.request.contextPath}/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!-- Main styles -->
<link href="${pageContext.request.contextPath}/resource/css/admin.css" rel="stylesheet">
<!-- Icon fonts-->
<link href="${pageContext.request.contextPath}/resource/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<!-- Plugin styles -->
<link href="${pageContext.request.contextPath}/resource/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

<!-- Your custom styles -->
<link href="${pageContext.request.contextPath}/resource/css/admin/custom.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer" id="page-top">
	<%-- header include --%>
	<jsp:include page="nav.jsp"></jsp:include>

	<!-- /Navigation-->
	<div class="content-wrapper">
		<div class="container-fluid">
			<!-- Breadcrumbs-->
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><h4><a href="#">회원 공지 발송</a></h4></li>
			</ol>
			
			<!-- 발송처리 영역 -->
			<div class="card mb-3">
				<!-- 카드 헤더 -->
				<div class="card-header pointer-field" onclick="nextDivToggle(this);">
					<i class="fa fa-send"></i> 발송처리
				</div>
				<div class="card-body" style="display:none;">
					<form name="messageSendForm">
						<div style="border:1px solid lightgray; border-radius: 5px; padding:20px 30px;">
							<div class="row fieldContent">
								<div class="col-2">
									<select name="selectForm" class="custom-select mr-sm-2 format" style="width: 100%;" onclick="parentNextInputToggle(this)">
										<option value="divEvery" selected>모든 회원</option>
										<option value="divSelect">선택 회원</option>
									</select>
								</div>
								<div class="col-10">
									<input name="selectValue" type="text" class="form-control" placeholder="회원번호 또는 이메일을 입력해주세요." style="width: 70%; height: 40px;  display:none;"/>
								</div>
							</div>
							
							<div class="row fieldContent" style="margin: 15px 0;">
								<div class="col" style="text-align: center; padding: 0px;">
									<input name="selectValue" type="text" class="form-control" placeholder="발송 내용을 입력해주세요."/>
								</div>
							</div>
							<div class="row">
								<div class="col" style="padding: 0px; text-align: right;">
									<input type="submit" class="btn-primary" style="width: 10%; height: 44px; margin-top:7px;" value="발송">
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
			
			<!-- 필터처리 영역 -->
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
										<legend>상태</legend>
										<div class="checkboxSection">
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" onclick="allCheck(this);" name="statusAll">
											  <label class="form-check-label" onclick="checkFunction(this); allCheck(this);">전체</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="statusSend" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">발송</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="statusCancel"  onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">취소</label>
											</div>
										</div>
									</fieldset>
								</div>
								<div class="col-6 innerCol">
									<fieldset class="field etcField">
										<legend>구분 선택</legend>
										<div class="checkboxSection">
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" onclick="allCheck(this);" name="divAll">
											  <label class="form-check-label" onclick="checkFunction(this); allCheck(this);">전체</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="divEvery" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">모든회원</label>
											</div>
											<div class="form-check form-check-inline">
											  <input class="form-check-input checkboxSet" type="checkbox" name="divSelect" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">선택회원</label>
											</div>
										</div>
									</fieldset>
								</div>
							</div>
						</div>
						<div class="row fieldCollection">
							<div class="col-10" style="float:left">
								<div style="margin-top: 18px;">
									<sapn>
										<input type="radio" name="seachRow" value="100">
										<label onclick="checkFunction(this)"><strong>100건 검색</strong></label>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</sapn>
									<sapn>
										<input type="radio" name="seachRow" value="300" checked="true">
										<label onclick="checkFunction(this)"><strong>300건 검색</strong></label>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</sapn>
									<sapn>
										<input type="radio" name="seachRow" value="500">
										<label onclick="checkFunction(this)"><strong>500건 검색</strong></label>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</sapn>
									<sapn>
										<input type="radio" name="seachRow" value="1000">
										<label onclick="checkFunction(this)"><strong>1000건 검색</strong></label>
										<span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
									</sapn>
									<sapn>
										<input type="radio" name="seachRow" value="9999">
										<label onclick="checkFunction(this)"><strong>모든내역 검색</strong></label>
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
			
			
			
			<!-- 출력 테이블 영역 영역 -->
			<div class="container-fluid" style="padding: 0px;">		
				<!-- DataTables Card-->
				<div class="card mb-3">
					<!-- 카드 헤더 -->
					<div class="card-header">
						<i class="fa fa-table"></i> 발송 리스트
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<%-- 칼럼 --%>
								<thead class="center-head">
									<tr>
										<th>번호</th>
										<th>알림날짜</th>
										<th style="width: 970px;">메시지</th>
										<th>수신자</th>
										<th>수신자</th>
										<th>상태</th>
										<th>발신취소</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th>1</th>
										<th>2020-01-01</th>
										<th>회원가입을 환영합니다.</th>
										<th>전체</th>
										<th>0011</th>
										<th>정상</th>
										<th><a href="#">취소</a></th>
									</tr>
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
	
	
	<%-- member detail component--%>
	<%@ include file="/admin_section/component/member-detail.jspf"%>
	
	<%-- hosting detail component--%>
	<%@ include file="/admin_section/component/hosting-detail.jspf"%>
	

<%-- javascript --%>
	<!-- Bootstrap core JavaScript-->
	<script src="${pageContext.request.contextPath}/resource/vendor/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- Core plugin JavaScript-->
	<script src="${pageContext.request.contextPath}/resource/vendor/jquery-easing/jquery.easing.min.js"></script>
	<!-- Page level plugin JavaScript-->
	<script src="${pageContext.request.contextPath}/resource/vendor/chart.js/Chart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/vendor/datatables/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resource/vendor/datatables/dataTables.bootstrap4.js"></script>
	<script src="${pageContext.request.contextPath}/resource/vendor/jquery.selectbox-0.2.js"></script>
	<script src="${pageContext.request.contextPath}/resource/vendor/retina-replace.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/vendor/jquery.magnific-popup.min.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="${pageContext.request.contextPath}/resource/js/admin.js"></script>
	<!-- Custom scripts for this page-->
	<script src="${pageContext.request.contextPath}/resource/js/admin-datatables.js"></script>
	
	<!-- yolowa Custom script -->
	<script>
	//다음 형제노드의 객체를 비활성화 하는 jquery를 이용한 함수
	var nextDivToggle = function(t){
		var $next = $(t).next();
		$next.toggle();
	}
	
	// 발송 폼에서 한명을 선택할 경우 좌측 입력상자를 토글하는 함수
	var parentNextInputToggle = function(t, i){
		
		// 선택된 옵션 확인
		var options = t.options;
		var selected = "";
		for(let op of options){
			if(op.selected == true){
				selected = op;
			}
		}
		
		// 토글 대상 선택
		var $input = $($(t).parent().next().find("input")[0]);
		
		if(selected.value == "divEvery"){
			// 모든유저를 선택한 경우
			$input.css("display", "none");
			console.log($input.css);
		}else if(selected.value == "divSelect"){
			// 한유저를 선택한 경우
			$input.css("display", "block");
			console.log($input.css);
		}
		
	}
	
	var rangeObj = {
			 alramDate: "알림날짜"
		}
	var keywordObj = {
			message: "메시지",
			memberNo: "회원번호",
			manageNo: "관리자번호"
		}
	
	</script>
	<script src="${pageContext.request.contextPath}/resource/js/admin/custom.js"></script>
</body>
</html>
