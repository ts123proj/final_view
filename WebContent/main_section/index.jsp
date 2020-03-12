<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Panagea - Premium site template for travel agencies, hotels and restaurant listing.">
    <meta name="author" content="Ansonika">
    <title>YOLOWA | 여행중이세요? YOLOWA와 함께 숙소 예약을 해보세요.</title>

    <!-- Favicons-->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
    <link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">

    <!-- BASE CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	<link href="css/vendors.css" rel="stylesheet">

    <!-- YOUR CUSTOM CSS -->
    <link href="css/custom.css" rel="stylesheet">

</head>

<body>
	
	<jsp:include page="header.jsp"></jsp:include>
	
	<div id="page">
	
	<main>
		<section class="hero_single version_3">
			<div class="wrapper">
				<div class="container">
					<div class="main_search">
						<h3>YOLOWA와 함께<br> 원하시는 숙소를 찾아보세요.</h3>
						<p>숙소를 아직 못 정하셨다구요?<br>나만의 여행 스타일에 맞는 유형의 숙소를 YOLOWA에서 둘러보세요.</p>
						<form>
						<div class="custom-search-input-2">
							<div class="form-group">
									<input class="form-control" type="text" placeholder="목적지" id="autocomplete">
									<i class="icon_pin_alt"></i>
								</div>
								<div class="form-group">
									<input class="form-control" type="text" name="dates" placeholder="일정">
									<i class="icon_calendar"></i>
								</div>
							
							<div class="panel-dropdown">
									<a href="#">인원 <span class="qtyTotal">1</span></a>
									<div class="panel-dropdown-content">
										<!-- Quantity Buttons -->
										<div class="qtyButtons">
											<label>어른</label>
											<input type="text" name="qtyInput" value="1">
										</div>
										<div class="qtyButtons">
											<label>어린이</label>
											<input type="text" name="qtyInput" value="0">
										</div>
									</div>
								</div>
							<div class="form-group text-right">
								<input type="submit" class="btn_search" value="검색">
							</div>
						</div>
						<!-- /row -->
					</form>
					</div>
					<!-- /main_search -->	
				</div>
			</div>
		</section>
		<!-- /hero_single -->

		<div class="container container-custom margin_80_0">
			<div class="main_title_2">
				<span><em></em></span>
				<h2>슈퍼호스트가 운영하는 YOLOWA의 추천 숙소</h2>
				<p>전 세계 게스트로부터 높은 평가를 받은 슈퍼호스트의 숙소입니다.</p>
			</div>
			<div id="reccomended" class="owl-carousel owl-theme">
				<div class="item">
					<div class="box_grid">
						<figure>
							<a href="#0" class="wish_bt"></a>
							<a href="tour-detail.jsp"><img src="img/tour_1.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
							<small>슈퍼호스트</small>
						</figure>
						<div class="wrapper">
							<h3><a href="tour-detail.jsp">승현이의 고향, 서울 여기여기 모여라</a></h3>
							<p>여기다가는 숙소의 설명을 넣어주면 될거 같아요.</p>
							<span class="price">From <strong>$54</strong> /per person</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i> 1h 30min</li>
							<li><div class="score"><span>Superb<em>350 Reviews</em></span><strong>8.9</strong></div></li>
						</ul>
					</div>
				</div>
				<!-- /item -->
				<div class="item">
					<div class="box_grid">
						<figure>
							<a href="#0" class="wish_bt"></a>
							<a href="tour-detail.jsp"><img src="img/tour_2.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
							<small>슈퍼호스트</small>
						</figure>
						<div class="wrapper">
							<h3><a href="tour-detail.jsp">이제는 중국땅이 되어버린 제주 ㅠㅠ</a></h3>
							<p>숙소 설명 넣기</p>
							<span class="price">From <strong>$124</strong> /per person</span>
						</div>
						<ul>
							<li><i class="icon_compass_alt"></i> 제주도</li>
							<li><div class="score"><span>Good<em>350 Reviews</em></span><strong>7.0</strong></div></li>
						</ul>
					</div>
				</div>
				<!-- /item -->
				<div class="item">
					<div class="box_grid">
						<figure>
							<a href="#0" class="wish_bt"></a>
							<a href="tour-detail.jsp"><img src="img/tour_3.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
							<small>슈퍼호스트</small>
						</figure>
						<div class="wrapper">
							<h3><a href="tour-detail.jsp">인섭이형 주민이형 고향 군산</a></h3>
							<p>숙서설명</p>
							<span class="price">From <strong>$25</strong> /per person</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i> 1h 30min</li>
							<li><div class="score"><span>Good<em>350 Reviews</em></span><strong>7.0</strong></div></li>
						</ul>
					</div>
				</div>
				<!-- /item -->
				<div class="item">
					<div class="box_grid">
						<figure>
							<a href="#0" class="wish_bt"></a>
							<a href="tour-detail.jsp"><img src="img/tour_3.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
							<small>슈퍼호스트</small>
						</figure>
						<div class="wrapper">
							<h3><a href="tour-detail.jsp">태휘형의 나와바리 수원</a></h3>
							<p>구서ㅏ수거ㅜ거수거숴구서구서</p>
							<span class="price">From <strong>$25</strong> /per person</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i> 1h 30min</li>
							<li><div class="score"><span>Good<em>350 Reviews</em></span><strong>7.0</strong></div></li>
						</ul>
					</div>
				</div>
				<!-- /item -->
				<div class="item">
					<div class="box_grid">
						<figure>
							<a href="#0" class="wish_bt"></a>
							<a href="tour-detail.jsp"><img src="img/tour_4.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
							<small>슈퍼호스트</small>
						</figure>
						<div class="wrapper">
							<h3><a href="tour-detail.jsp">부산갈매기ㅣ기이</a></h3>
							<p>수갸ㅓㅗㅁ어망마아브다브ㅏㅇㅁ</p>
							<span class="price">From <strong>$45</strong> /per person</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i> 2h 30min</li>
							<li><div class="score"><span>Superb<em>350 Reviews</em></span><strong>9.0</strong></div></li>
						</ul>
					</div>
				</div>
				<!-- /item -->
				<div class="item">
					<div class="box_grid">
						<figure>
							<a href="#0" class="wish_bt"></a>
							<a href="tour-detail.jsp"><img src="img/tour_5.jpg" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
							<small>슈퍼호스트</small>
						</figure>
						<div class="wrapper">
							<h3><a href="tour-detail.jsp">인천의 아들 택수</a></h3>
							<p>암암우마우바ㅡ다브디,ㅁ임,임,이</p>
							<span class="price">￦<strong>20000</strong> /박</span>
							
						</div>
						<ul>
							<li><i class="icon_star_alt"></i> 1h 30min</li>
							<li><div class="score"><span>Good<em>350 Reviews</em></span><strong>7.5</strong></div></li>
						</ul>
					</div>
				</div>
				<!-- /item -->
			</div>
			<!-- /carousel -->
			<p class="btn_home_align"><a href="tours-grid-isotope.jsp" class="btn_1 rounded">더 둘러보기</a></p>
			<hr class="large">
		</div>
		<!-- /container -->
		
		<div class="container container-custom margin_30_95">
			<section class="add_bottom_45">
				<div class="main_title_3">
					<span><em></em></span>
					<h2>직접 다녀간 게스트의 후기</h2>
					<p>한국의 숙소는 15000000개 이상의 후기에서 별 5개 중 4.7개를 받았습니다</p>
				</div>
				<div class="row">
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="hotel-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>8.9</strong></div>
								<img src="img/hotel_1.jpg" class="img-fluid" alt="">
								<div class="info">
									<div class="cat_star"><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i></div>
									<h3>Mariott Hotel</h3>
								</div>
							</figure>
							
							<!-- 후기 불러오기 -->
							<div class="review" style="margin-top:8px; margin-bottom:16px; margin-right:32px">
								<div class="_152551e">
									<span class="_1jlnvra2">
										깔끔하고 다 갖춰져있어서 좋았어요:) 위치도 완전 좋아용 다들 여기 살고싶다구ㅋㅋㅋㅋㅋ 화장실도 3개예요!!! 5명이서 씻는것도 전혀 불편함없이 좋았어요^^ 이불도 포근하고 좋습니당ㅎㅎ
									</span>
								</div>
							</div>
							
							<div class="guest">
								<div class="_e296pg" style="height:48px;width:48px;display:inline-block">
									<img class="_1mgxxu3" src="https://a0.muscache.com/im/pictures/user/5d0a6e77-8d78-4255-96a3-2c3b92befc35.jpg?aki_policy=large" height="48" width="48" alt="지은" title="지은">
								</div>
								<div class="_1xz418s">
									<div class="_36rlri" style="margin-left:16px">
										<div class="_1p3joamp">지은</div>
										<div class="_1jlnvra2">한국</div>
									</div>
								</div>
							</div>
							
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="hotel-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>7.9</strong></div>
								<img src="img/hotel_2.jpg" class="img-fluid" alt="">
								<div class="info">
									<div class="cat_star"><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i></div>
									<h3>Concorde Hotel </h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="hotel-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>7.0</strong></div>
								<img src="img/hotel_3.jpg" class="img-fluid" alt="">
								<div class="info">
									<div class="cat_star"><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i></div>
									<h3>Louvre Hotel</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="hotel-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>8.9</strong></div>
								<img src="img/hotel_4.jpg" class="img-fluid" alt="">
								<div class="info">
									<div class="cat_star"><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i><i class="icon_star"></i></div>
									<h3>Park Yatt Hotel</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /row -->
				<a href="hotels-grid-isotope.jsp"><strong>더 둘러보기 (157) <i class="arrow_carrot-right"></i></strong></a>
			</section>
			<!-- /section -->
			
			<section class="add_bottom_45">
				<div class="main_title_3">
					<span><em></em></span>
					<h2>한국에서 방금 예약된 숙소</h2>
					<p>여기야여기</p>
				</div>
				<div class="row">
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>8.5</strong></div>
								<img src="img/restaurant_1.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Da Alfredo</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>7.9</strong></div>
								<img src="img/restaurant_2.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Slow Food</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>7.5</strong></div>
								<img src="img/restaurant_3.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Bella Napoli</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>9.0</strong></div>
								<img src="img/restaurant_4.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Marcus</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /row -->
				<a href="restaurants-grid-isotope.jsp"><strong>View all (157) <i class="arrow_carrot-right"></i></strong></a>
			</section>
			<!-- /section -->

			<section class="add_bottom_45">
				<div class="main_title_3">
					<span><em></em></span>
					<h2>한국에서 방금 예약된 숙소</h2>
					<p>여기야여기</p>
				</div>
				<div class="row">
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>8.5</strong></div>
								<img src="img/restaurant_1.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Da Alfredo</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>7.9</strong></div>
								<img src="img/restaurant_2.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Slow Food</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>7.5</strong></div>
								<img src="img/restaurant_3.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Bella Napoli</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>9.0</strong></div>
								<img src="img/restaurant_4.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Marcus</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /row -->
				<a href="restaurants-grid-isotope.jsp"><strong>View all (157) <i class="arrow_carrot-right"></i></strong></a>
			</section>
			<!-- /section -->
			
			<section class="add_bottom_45">
				<div class="main_title_3">
					<span><em></em></span>
					<h2>한국에서 방금 예약된 숙소</h2>
					<p>여기야여기</p>
				</div>
				<div class="row">
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>8.5</strong></div>
								<img src="img/restaurant_1.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Da Alfredo</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>7.9</strong></div>
								<img src="img/restaurant_2.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Slow Food</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>7.5</strong></div>
								<img src="img/restaurant_3.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Bella Napoli</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="restaurant-detail.jsp" class="grid_item">
							<figure>
								<div class="score"><strong>9.0</strong></div>
								<img src="img/restaurant_4.jpg" class="img-fluid" alt="">
								<div class="info">
									<h3>Marcus</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
				</div>
				<!-- /row -->
				<a href="restaurants-grid-isotope.jsp"><strong>View all (157) <i class="arrow_carrot-right"></i></strong></a>
			</section>
			<!-- /section -->
			
			
			<div class="banner mb-0">
				<div class="wrapper d-flex align-items-center opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.3)">
					<div>
						<small>Adventure</small>
						<h3>Your Perfect<br>Advenure Experience</h3>
						<p>Activities and accommodations</p>
						<a href="adventure.jsp" class="btn_1">Read more</a>
					</div>
				</div>
				<!-- /wrapper -->
			</div>
			<!-- /banner -->

		</div>
		<!-- /container -->

		<div class="bg_color_1">
			<div class="container margin_80_55">
				<div class="main_title_2">
					<span><em></em></span>
					<h3>News and Events</h3>
					<p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<a class="box_news" href="#0">
							<figure><img src="img/news_home_1.jpg" alt="">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>Mark Twain</li>
								<li>20.11.2017</li>
							</ul>
							<h4>Pri oportere scribentur eu</h4>
							<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
						</a>
					</div>
					<!-- /box_news -->
					<div class="col-lg-6">
						<a class="box_news" href="#0">
							<figure><img src="img/news_home_2.jpg" alt="">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>Jhon Doe</li>
								<li>20.11.2017</li>
							</ul>
							<h4>Duo eius postea suscipit ad</h4>
							<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
						</a>
					</div>
					<!-- /box_news -->
					<div class="col-lg-6">
						<a class="box_news" href="#0">
							<figure><img src="img/news_home_3.jpg" alt="">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>Luca Robinson</li>
								<li>20.11.2017</li>
							</ul>
							<h4>Elitr mandamus cu has</h4>
							<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
						</a>
					</div>
					<!-- /box_news -->
					<div class="col-lg-6">
						<a class="box_news" href="#0">
							<figure><img src="img/news_home_4.jpg" alt="">
								<figcaption><strong>28</strong>Dec</figcaption>
							</figure>
							<ul>
								<li>Paula Rodrigez</li>
								<li>20.11.2017</li>
							</ul>
							<h4>Id est adhuc ignota delenit</h4>
							<p>Cu eum alia elit, usu in eius appareat, deleniti sapientem honestatis eos ex. In ius esse ullum vidisse....</p>
						</a>
					</div>
					<!-- /box_news -->
				</div>
				<!-- /row -->
				<p class="btn_home_align"><a href="blog.jsp" class="btn_1 rounded">View all news</a></p>
			</div>
			<!-- /container -->
		</div>
		<!-- /bg_color_1 -->

		<div class="call_section">
			<div class="container clearfix">
				<div class="col-lg-5 col-md-6 float-right wow" data-wow-offset="250">
					<div class="block-reveal">
						<div class="block-vertical"></div>
						<div class="box_1">
							<h3>Enjoy a GREAT travel with us</h3>
							<p>Ius cu tamquam persequeris, eu veniam apeirian platonem qui, id aliquip voluptatibus pri. Ei mea primis ornatus disputationi. Menandri erroribus cu per, duo solet congue ut. </p>
							<a href="#0" class="btn_1 rounded">Read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/call_section-->
	</main>
	<!-- /main -->

	</div>
	<!-- page -->
	
	<!-- Sign In Popup -->
	<div id="sign-in-dialog" class="zoom-anim-dialog mfp-hide">
		<div class="small-dialog-header">
			<h3>Sign In</h3>
		</div>
		<form>
			<div class="sign-in-wrapper">
				<a href="#0" class="social_bt facebook">Login with Facebook</a>
				<a href="#0" class="social_bt google">Login with Google</a>
				<div class="divider"><span>Or</span></div>
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" name="email" id="email">
					<i class="icon_mail_alt"></i>
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="password" class="form-control" name="password" id="password" value="">
					<i class="icon_lock_alt"></i>
				</div>
				<div class="clearfix add_bottom_15">
					<div class="checkboxes float-left">
						<label class="container_check">Remember me
						  <input type="checkbox">
						  <span class="checkmark"></span>
						</label>
					</div>
					<div class="float-right mt-1"><a id="forgot" href="javascript:void(0);">Forgot Password?</a></div>
				</div>
				<div class="text-center"><input type="submit" value="Log In" class="btn_1 full-width"></div>
				<div class="text-center">
					Don’t have an account? <a href="register.jsp">Sign up</a>
				</div>
				<div id="forgot_pw">
					<div class="form-group">
						<label>Please confirm login email below</label>
						<input type="email" class="form-control" name="email_forgot" id="email_forgot">
						<i class="icon_mail_alt"></i>
					</div>
					<p>You will receive an email containing a link allowing you to reset your password to a new preferred one.</p>
					<div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
				</div>
			</div>
		</form>
		<!--form -->
	</div>
	<!-- /Sign In Popup -->
	
	<!-- COMMON SCRIPTS -->
    <script src="js/common_scripts.js"></script>
    <script src="js/main.js"></script>
	<script src="assets/validate.js"></script>
	
	<!-- DATEPICKER  -->
	<script>
	$(function() {
	  'use strict';
	  $('input[name="dates"]').daterangepicker({
		  autoUpdateInput: false,
		  locale: {
			  cancelLabel: 'Clear'
		  }
	  });
	  $('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
		  $(this).val(picker.startDate.format('YYYY-MM-DD') + ' ~ ' + picker.endDate.format('YYYY-MM-DD'));
	  });
	  $('input[name="dates"]').on('cancel.daterangepicker', function(ev, picker) {
		  $(this).val('');
	  });
	});
	</script>
	

	<!-- Autocomplete -->
    <script>
    function initMap() {
	  var input = document.getElementById('autocomplete');
	  var autocomplete = new google.maps.places.Autocomplete(input);
	 
	  autocomplete.addListener('place_changed', function() {
	    var place = autocomplete.getPlace();
	    if (!place.geometry) {
	      window.alert("Autocomplete's returned place contains no geometry");
	      return;
	    }

	    var address = '';
	    if (place.address_components) {
	      address = [
	        (place.address_components[0] && place.address_components[0].short_name || ''),
	        (place.address_components[1] && place.address_components[1].short_name || ''),
	        (place.address_components[2] && place.address_components[2].short_name || '')
	      ].join(' ');
	    } 
	  });
	}
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places&callback=initMap"></script>
	
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>