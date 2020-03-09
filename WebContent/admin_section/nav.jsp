<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-default fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.jsp"><img src="img/logo.png" data-retina="true" alt="" width="150" height="36"></a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
      	<%-- 관리자 홈 --%>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="index.jsp">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">관리자 홈</span>
          </a>
        </li>
        
        <%-- 매출 관리--%>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="sales">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseSales" data-parent="#mylistings">
            <i class="fa fa-fw fa-list"></i>
            <span class="nav-link-text">매출 관리</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseSales">
            <li>
              <a href="#">Pending <span class="badge badge-pill badge-primary">el${el }</span></a>
            </li>
			<li>
              <a href="#">Active <span class="badge badge-pill badge-success">el${el }</span></a>
            </li>
			<li>
              <a href="#">Expired <span class="badge badge-pill badge-danger">el${el }</span></a>
            </li>
          </ul>
        </li>
        
        <%-- 회원 관리--%>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="member">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMember" data-parent="#mylistings">
            <i class="fa fa-fw fa-user"></i>
            <span class="nav-link-text">회원 관리</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseMember">
            <li>
              <a href="#">회원 정보 <span class="badge badge-pill badge-primary">el${el }</span></a>
            </li>
			<li>
              <a href="#">호스팅 정보 <span class="badge badge-pill badge-success">el${el }</span></a>
            </li>
			<li>
              <a href="#">공지 발송 <span class="badge badge-pill badge-danger">el${el }</span></a>
            </li>
          </ul>
        </li>
        
        <%-- 신고 관리--%>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="accuse">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseAccuse" data-parent="#mylistings">
            <i class="fa fa-fw fa-user"></i>
            <span class="nav-link-text">신고 관리</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseAccuse">
            <li>
              <a href="#">회원 신고 <span class="badge badge-pill badge-primary">el${el }</span></a>
            </li>
			<li>
              <a href="#">댓글 삭제 요청 <span class="badge badge-pill badge-success">el${el }</span></a>
            </li>
          </ul>
         </li>
         
         <%-- 기타 관리--%>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="etc">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseEtc" data-parent="#mylistings">
            <i class="fa fa-fw fa-gear"></i>
            <span class="nav-link-text">기타 관리</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseEtc">
            <li>
              <a href="#">약관 관리 <span class="badge badge-pill badge-primary">el${el }</span></a>
            </li>
			<li>
              <a href="#">도움말 관리 <span class="badge badge-pill badge-success">el${el }</span></a>
            </li>
            <li>
              <a href="#">광고메일발송 <span class="badge badge-pill badge-success">el${el }</span></a>
            </li>
            <li>
              <a href="#">SNS 관리 <span class="badge badge-pill badge-success">el${el }</span></a>
            </li>
          </ul>
         </li>
      </ul>
      <%-- 홈페이지로 이동 --%>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Exit</a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- /Navigation-->