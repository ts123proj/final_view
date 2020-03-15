<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
	<header class="header menu_fixed">
		<div id="preloader"><div data-loader="circle-side"></div></div><!-- /Page Preload -->
		<div id="logo">
			<a href="index.jsp">
				<img src="${pageContext.request.contextPath }/resource/img/logo.svg" width="150" height="36" alt="" class="logo_normal">
				<img src="${pageContext.request.contextPath }/resource/img/logo_sticky.svg" width="150" height="36" alt="" class="logo_sticky">
			</a>
		</div>
		<ul id="top_menu">
			<li><a href="#" class="cart-menu-btn" title="Cart" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><strong>4</strong></a>
			
			<!-- 드랍다운 메세지 시작 -->
			<div class="dropdown-menu" aria-labelledby="messagesDropdown">
            <h6 class="dropdown-header" style="color: #444;">New Messages:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" style="color: #444;">
              <strong>David Miller</strong>
              <span class="small float-right text-muted" style="color: #444;">11:21 AM</span>
              <div class="dropdown-message small">Hey there! This new version of SB Admin is pr...</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" style="color: #444;">
              <strong>Jane Smith</strong>
              <span class="small float-right text-muted" style="color: #444;">11:21 AM</span>
              <div class="dropdown-message small">I was wondering if you could meet for an app...</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#" style="color: #444;">
              <strong>John Doe</strong>
              <span class="small float-right text-muted" style="color: #444;">11:21 AM</span>
              <div class="dropdown-message small">I've sent the final files over to you for review. W...</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#" style="color: #444;">View all messages</a>
            </div>
			<!-- 드랍다운 메세지 종료 -->
			
			</li>
			<li><a href="#sign-in-dialog" id="sign-in" class="login" title="로그인">로그인</a></li>
			<li><a href="wishlist.jsp" class="wishlist_bt_top" title="저장목록">저장목록</a></li>
		</ul>
		
		<!-- /top_menu -->
		<a href="#menu" class="btn_mobile">
			<div class="hamburger hamburger--spin" id="hamburger">
				<div class="hamburger-box">
					<div class="hamburger-inner"></div>
				</div>
			</div>
		</a>
		
		<nav id="menu" class="main-menu">
			<ul>
				<li><span><a href="blog.jsp">공지 및 이벤트</a></span></li>
				<li><span><a href="../mypage_section/index.jsp">호스팅</a></span>
					<ul>
						<li><a href="../mypage_section/index.jsp">호스트 페이지</a></li>
						<li><a href="../mypage_section/bookings.jsp">새로운 예약 보기</a></li>
						<!-- <li><a href="../mypage_section/bookmarks.jsp">bookmarks</a></li> -->
						<li><a href="../mypage_section/add-listing.jsp">새로운 숙소 추가하기</a></li>
					</ul>
				</li>
				<li><span><a href="help.jsp">도움말</a></span></li>
				<li><span><a href="register.jsp">회원가입</a></span></li>
				<li><span><a href="#0">마이페이지</a></span>
					<ul>
						<li><a href="../mypage_section/user-profile.jsp">프로필 보기</a></li>
						<li><a href="../mypage_section/reviews.jsp">후기</a></li>
						<li><a href="../mypage_section/listings.jsp">여행 목록</a></li>
						<li><a href="../mypage_section/messages.jsp">메세지</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</header>
	<!-- /header -->	