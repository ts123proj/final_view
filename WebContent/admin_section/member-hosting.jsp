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
<title>Yolowa-admin-hosting</title>

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
				<li class="breadcrumb-item"><h4><a href="#">호스팅 정보</a></h4></li>
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
							<div class="col-3 innerCol">
								<div class="col innerCol">
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
											  <input class="form-check-input checkboxSet" type="checkbox" name="pause" onclick="checkAllBtn(this);">
											  <label class="form-check-label" onclick="checkFunction(this); checkAllBtn(this);">정지</label>
											</div>
										</div>
									</fieldset>
								</div>
							</div>
							<div class="col-9 innerCol">
								<fieldset class="field ckeckboxField" style="margin:0px">
									<legend>기타 설정</legend>
									<div class="etcSection">
										<div class="row">
											<div class="col-4" style="text-align: center;">
												<label class="center-span">정지횟수</label>
												<input type="number" class="form-control" name="startStopNum" style="display:inline; width: 50px; height:40px" min="0" max="5" value="0">
												<span class="center-span">~</span>
												<input type="number" class="form-control" name="endStopNum" style="display:inline; width: 50px; height:40px" min="0" max="5" value="5">
												<span>회</span>
											</div>
											<div class="col-4" style="text-align: left;">
												<label class="center-span">예약진행</label>
												<input type="text" class="form-control" style="display:inline; width: 65px; height:40px" min="0" max="9999" value="0">
												<span class="center-span">~</span>
												<input type="text" class="form-control" style="display:inline; width: 65px; height:40px" min="0" max="9999" value="9999">
												<span>명</span>
											</div>
											<div class="col-4" style="text-align: left;">
												<label class="center-span">다녀간게스트</label>
												<input type="text" class="form-control" style="display:inline; width: 65px; height:40px" min="0" max="9999" value="0">
												<span class="center-span">~</span>
												<input type="text" class="form-control" style="display:inline; width: 65px; height:40px" min="0" max="9999" value="9999">
												<span>명</span>
											</div>
											<div class="col-1"></div>
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
										<label onclick="checkFunction(this)"><strong>모든호스팅 검색</strong></label>
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
			
			<!-- 테이블 영역 -->
			<div class="container-fluid" style="padding: 0px;">		
				<!-- DataTables Card-->
				<div class="card mb-3">
					<!-- 카드 헤더 -->
					<div class="card-header">
						<i class="fa fa-table"></i> 회원 리스트
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
								<%-- 칼럼 --%>
								<thead class="center-head">
									<tr>
										<th>호스팅번호</th>
										<th>등록일자</th>
										<th style="width: 800px;">호스팅 제목</th>
										<th>호스트번호</th>
										<th>다녀간게스트</th>
										<th>예약 중</th>
										<th>상태</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<th><a class="pointer-field" onclick="openHostingDetailComponent('0000001');">0000001</a></th>
										<th>2019-01-01</th>
										<th>게시물 제목이 들어가는 부분입니다~~~하하하하하하하하</th>
										<th><a class="pointer-field" onclick="openMemberDetailComponent('0001');">0001</a></th>
										<%-- --%>
										<th>100건/2000명</th>
										<th>21건/100명</th>
										<th>활성</th>
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
	//global setting
	// 범위검색과 키워드 검색 추가를 위해 format값을 저장하는 객체
	var rangeObj = {
				resiteredDate : "등록일자"
			}
	
	var keywordObj = {
				hostingNo : "호스팅 번호",
				title : "제목",
				hostNo : "호스트 번호"
			}
	</script>
	<script src="${pageContext.request.contextPath}/resource/js/admin/custom.js"></script>
	
</body>
</html>
