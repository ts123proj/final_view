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
				<li><span><a href="#0">Home</a></span>
					<ul>
						<li><a href="index.jsp">Home Default</a></li>
						<li><a href="index-2.jsp">Home Slider</a></li>
						<li><a href="index-3.jsp">Home Video BG</a></li>
						<li><a href="index-4.jsp">Home Layer Slider</a></li>
						<li><a href="index-5.jsp">Home Search 2</a></li>
						<li><a href="index-6.jsp">Home GDPR (EU law)</a></li>
                        <li><a href="index-7.jsp">Home Search 3</a></li>
                        <li><a href="index-8.jsp">Address Autocomplete</a></li>
                        <li><a href="index-9.jsp">Home AirBnb</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Tours</a></span>
					<ul>
						<li>
							<span><a href="#0">Tours Grid</a></span>
							<ul>
								<li><a href="tours-grid-isotope.jsp">Tours Grid Isotope</a></li>
								<li><a href="tours-grid-sidebar.jsp">Tours Grid Sidebar</a></li>
								<li><a href="tours-grid-sidebar-2.jsp">Tours Grid Sidebar 2</a></li>
								<li><a href="tours-grid.jsp">Tours Grid Simple</a></li>
							</ul>
						</li>
						<li>
							<span><a href="#0">Tours List</a></span>
							<ul>
								<li><a href="tours-list-isotope.jsp">Tours List Isotope</a></li>
								<li><a href="tours-list-sidebar.jsp">Tours List Sidebar</a></li>
								<li><a href="tours-list-sidebar-2.jsp">Tours List Sidebar 2</a></li>
								<li><a href="tours-list.jsp">Tours List Simple</a></li>
							</ul>
						</li>
						<li><a href="tours-half-screen-map.jsp">Tours Half Screen Map</a></li>
						<li><a href="tour-detail.jsp">Tour Detail</a></li>
						<li>
							<span><a href="#0">Open Street Map</a></span>
							<ul>
								<li><a href="tours-half-screen-map-leaflet.jsp">Tours Half Screen Map</a></li>
								<li><a href="tours-list-isotope-leaflet.jsp">Tours Grid Isotope</a></li>
								<li><a href="tours-list-sidebar-leaflet.jsp">Tours Grid Sidebar</a></li>
								<li><a href="tours-list-sidebar-2-leaflet.jsp">Tours Grid Sidebar 2</a></li>
								<li><a href="tours-list-leaflet.jsp">Tours Grid Simple</a></li>
								<li><a href="tours-list-isotope-leaflet.jsp">Tours List Isotope</a></li>
								<li><a href="tours-list-sidebar-leaflet.jsp">Tours List Sidebar</a></li>
								<li><a href="tours-list-sidebar-2-leaflet.jsp">Tours List Sidebar 2</a></li>
								<li><a href="tours-list-leaflet.jsp">Tours List Simple</a></li>
								<li><a href="tour-detail-leaflet.jsp">Tour Detail</a></li>
							</ul>
						</li>
					</ul>
				</li>
				<li><span><a href="#0">Hotels</a></span>
					<ul>
						<li>
							<span><a href="#0">Hotel Grid</a></span>
							<ul>
								<li><a href="hotels-grid-isotope.jsp">Hotel Grid Isotope</a></li>
								<li><a href="hotels-grid-sidebar.jsp">Hotel Grid Sidebar</a></li>
								<li><a href="hotels-grid-sidebar-2.jsp">Hotel Grid Sidebar 2</a></li>
								<li><a href="hotels-grid.jsp">Hotel Grid Simple</a></li>
							</ul>
						</li>
						<li>
							<span><a href="#0">Hotel List</a></span>
							<ul>
								<li><a href="hotels-list-isotope.jsp">Hotel List Isotope</a></li>
								<li><a href="hotels-list-sidebar.jsp">Hotel List Sidebar</a></li>
								<li><a href="hotels-list-sidebar-2.jsp">Hotel List Sidebar 2</a></li>
								<li><a href="hotels-list.jsp">Hotel List Simple</a></li>
							</ul>
						</li>
						<li><a href="hotels-half-screen-map.jsp">Hotel Half Screen Map</a></li>
						<li><a href="hotel-detail.jsp">Hotel Detail</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Eat &amp; Drink</a></span>
					<ul>
						<li>
							<span><a href="#0">Restaurant Grid</a></span>
							<ul>
								<li><a href="restaurants-grid-isotope.jsp">Restaurant Grid Isotope</a></li>
								<li><a href="restaurants-grid-sidebar.jsp">Restaurant Grid Sidebar</a></li>
								<li><a href="restaurants-grid-sidebar-2.jsp">Restaurant Grid Sidebar 2</a></li>
								<li><a href="restaurants-grid.jsp">Restaurant Grid simple</a></li>
							</ul>
						</li>
						<li>
							<span><a href="#0">Restaurant List</a></span>
							<ul>
								<li><a href="restaurants-list-isotope.jsp">Restaurant List Isotope</a></li>
								<li><a href="restaurants-list-sidebar.jsp">Restaurant List Sidebar</a></li>
								<li><a href="restaurants-list-sidebar-2.jsp">Restaurant List Sidebar 2</a></li>
								<li><a href="restaurants-list.jsp">Restaurant List Simple</a></li>
							</ul>
						</li>
						<li><a href="restaurants-half-screen-map.jsp">Half Screen Map</a></li>
						<li><a href="restaurant-detail.jsp">Restaurant Detail</a></li>
					</ul>
				</li>
				<li><span><a href="adventure.jsp">Adventure</a></span></li>
				<li><span><a href="#0">Pages</a></span>
					<ul>
						<li><a href="about.jsp">About</a></li>
						<li><a href="media-gallery.jsp">Media gallery</a></li>
						<li><a href="help.jsp">Help Section</a></li>
						<li><a href="faq.jsp">Faq Section</a></li>
						<li><a href="wishlist.jsp">Wishlist page</a></li>
						<li><a href="contacts.jsp">Contacts</a></li>
						<li><a href="login.jsp">Login</a></li>
						<li><a href="register.jsp">Register</a></li>
						<li><a href="blog.jsp">Blog</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Extra</a></span>
					<ul>
                    	<li><a href="menu-options.jsp">Menu Position Options</a></li>
                    	<li><a href="tour-detail-singlemonth-datepicker.jsp">Single month Datepicker</a></li>
						<li><a href="404.jsp">404 Error page</a></li>
						<li><a href="cart-1.jsp">Cart page 1</a></li>
						<li><a href="cart-2.jsp">Cart page 2</a></li>
						<li><a href="cart-3.jsp">Cart page 3</a></li>
						<li><a href="pricing-tables.jsp">Responsive pricing tables</a></li>
						<li><a href="coming_soon/index.jsp">Coming soon</a></li>
						<li><a href="invoice.jsp">Invoice</a></li>
						<li><a href="icon-pack-1.jsp">Icon pack 1</a></li>
						<li><a href="icon-pack-2.jsp">Icon pack 2</a></li>
						<li><a href="icon-pack-3.jsp">Icon pack 3</a></li>
						<li><a href="icon-pack-4.jsp">Icon pack 4</a></li>
                        <li><a href="hamburgers.jsp">Animated Hamburgers</a></li>
					</ul>
				</li>
				<li><span><a href="#0">Buy template</a></span></li>
			</ul>
		</nav>
	</header>
	<!-- /header -->	