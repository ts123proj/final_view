<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
	<header class="header menu_fixed">
		<div id="preloader"><div data-loader="circle-side"></div></div><!-- /Page Preload -->
		<div id="logo">
			<a href="index.jsp">
				<img src="img/logo.svg" width="150" height="36" alt="" class="logo_normal">
				<img src="img/logo_sticky.svg" width="150" height="36" alt="" class="logo_sticky">
			</a>
		</div>
		<ul id="top_menu">
			<li><a href="cart-1.jsp" class="cart-menu-btn" title="Cart"><strong>4</strong></a></li>
			<li><a href="#sign-in-dialog" id="sign-in" class="login" title="Sign In">Sign In</a></li>
			<li><a href="wishlist.jsp" class="wishlist_bt_top" title="Your wishlist">Your wishlist</a></li>
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
				<li><span><a href="blog.jsp">News and Events</a></span></li>
				<li><span><a href="../mypage_section/index.jsp">호스팅</a></span>
					<ul>
						<li><a href="../mypage_section/index.jsp">Dashboard</a></li>
						<li><a href="../mypage_section/bookings.jsp">Bookings</a></li>
						<li><a href="../mypage_section/bookmarks.jsp">Bookmarks</a></li>
						<li><a href="../mypage_section/add-listing.jsp">Add Listing</a></li>
					</ul>
				</li>
				<li><span><a href="help.jsp">도움말</a></span></li>
				<li><span><a href="register.jsp">회원가입</a></span></li>
				<li><span><a href="#0">My Pages</a></span>
					<ul>
						<li><a href="../mypage_section/user-profile.jsp">My Profile</a></li>
						<li><a href="../mypage_section/reviews.jsp">Reviews</a></li>
						<li><a href="../mypage_section/listings.jsp">My Listings</a></li>
						<li><a href="../mypage_section/messages.jsp">Messages</a></li>
					</ul>
				</li>
			</ul>
		</nav>
	</header>
	<!-- /header -->	