<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
</head>
<body>
	<tiles:insertDefinition name="classic">
		<tiles:putAttribute name="main">
			<!--  banner  -->
			<div id="carouselExampleIndicators" class="carousel slide"
				data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0"
						class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img class="d-block w-100 img-fluid"
							style="height: 500px; object-fit: cover"
							src="https://i.pinimg.com/originals/51/81/a3/5181a33c0955dee17b6e5752c09b9a3c.jpg"
							alt="First slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 img-fluid"
							style="height: 500px; object-fit: cover"
							src="https://i.pinimg.com/originals/04/14/be/0414be174bc8755e5ded5460daf039e5.png"
							alt="Second slide">
					</div>
					<div class="carousel-item">
						<img class="d-block w-100 img-fluid"
							style="height: 500px; object-fit: cover"
							src="https://i.pinimg.com/originals/b7/37/14/b73714046581ab14cb347a4ba2cff999.jpg"
							alt="Third slide">
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<!--  end banner -->
			<h3 class="mt-4 ml-3">Popular posts</h3>
			<div class="container mt-2" style="max-width:1400px">
				<div class="row mb-3">
					<div class="col-md">
						<div
							class="card media align-items-center text-center text-lg-left flex-column flex-lg-row" style="max-width: 100%">
							<div class="mr-2">
								<img style="object-fit: contain;"
									src="http://static.ybox.vn/2018/7/1/1532347525369-Slide1.JPG"
									height="135" alt="">
							</div>
							<div class="media-body">
								<h6 class="media-title font-weight-semibold">
									<a href="#" data-abc="true" style="font-size:14px;">Và rồi núi vọng</a>
								</h6>

								<ul class="list-inline list-inline-dotted mb-3 mb-lg-2" style="font-size:12px;">
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#tiles</a></li>
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#strut2</a></li>
								</ul>

								<p class="mb-3" style="font-size:12px;">Afghanistan, mùa thu năm 1952. Abdullah và
										Pari sống cùng cha, mẹ kế và em khác mẹ trong ngôi làng nhỏ
										xác xơ Shadbagh</p>

								<div class="d-flex align-items-center">
									<img
										src="https://i.pinimg.com/736x/94/00/ff/9400ffb9bd98f3de96a5eaf431b92b1d.jpg"
										class="rounded-circle align-self-start mr-2" width="25"
										height="25"> <span style="font-size:12px;">Asmodeus Alice</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md">
						<div
							class="card media align-items-center text-center text-lg-left flex-column flex-lg-row">
							<div class="mr-2">
								<img style="object-fit: contain;"
									src="http://static.ybox.vn/2018/7/1/1532347525369-Slide1.JPG"
									height="135" alt="">
							</div>
							<div class="media-body">
								<h6 class="media-title font-weight-semibold">
									<a href="#" data-abc="true" style="font-size:14px;">Và rồi núi vọng</a>
								</h6>

								<ul class="list-inline list-inline-dotted mb-3 mb-lg-2" style="font-size:12px;">
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#tiles</a></li>
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#strut2</a></li>
								</ul>

								<p class="mb-3" style="font-size:12px;">Afghanistan, mùa thu năm 1952. Abdullah và
										Pari sống cùng cha, mẹ kế và em khác mẹ trong ngôi làng nhỏ
										xác xơ Shadbagh</p>

								<div class="d-flex align-items-center">
									<img
										src="https://i.pinimg.com/736x/94/00/ff/9400ffb9bd98f3de96a5eaf431b92b1d.jpg"
										class="rounded-circle align-self-start mr-2" width="25"
										height="25"> <span style="font-size:12px;">Asmodeus Alice</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md">
						<div
							class="card media align-items-center text-center text-lg-left flex-column flex-lg-row">
							<div class="mr-2">
								<img style="object-fit: contain;"
									src="http://static.ybox.vn/2018/7/1/1532347525369-Slide1.JPG"
									height="135" alt="">
							</div>
							<div class="media-body">
								<h6 class="media-title font-weight-semibold">
									<a href="#" data-abc="true" style="font-size:14px;">Và rồi núi vọng</a>
								</h6>

								<ul class="list-inline list-inline-dotted mb-3 mb-lg-2" style="font-size:12px;">
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#tiles</a></li>
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#strut2</a></li>
								</ul>

								<p class="mb-3" style="font-size:12px;">Afghanistan, mùa thu năm 1952. Abdullah và
										Pari sống cùng cha, mẹ kế và em khác mẹ trong ngôi làng nhỏ
										xác xơ Shadbagh</p>

								<div class="d-flex align-items-center">
									<img
										src="https://i.pinimg.com/736x/94/00/ff/9400ffb9bd98f3de96a5eaf431b92b1d.jpg"
										class="rounded-circle align-self-start mr-2" width="25"
										height="25"> <span style="font-size:12px;">Asmodeus Alice</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md">
						<div
							class="card media align-items-center text-center text-lg-left flex-column flex-lg-row">
							<div class="mr-2">
								<img style="object-fit: contain;"
									src="http://static.ybox.vn/2018/7/1/1532347525369-Slide1.JPG"
									height="135" alt="">
							</div>
							<div class="media-body">
								<h6 class="media-title font-weight-semibold">
									<a href="#" data-abc="true" style="font-size:14px;">Và rồi núi vọng</a>
								</h6>

								<ul class="list-inline list-inline-dotted mb-3 mb-lg-2" style="font-size:12px;">
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#tiles</a></li>
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#strut2</a></li>
								</ul>

								<p class="mb-3" style="font-size:12px;">Afghanistan, mùa thu năm 1952. Abdullah và
										Pari sống cùng cha, mẹ kế và em khác mẹ trong ngôi làng nhỏ
										xác xơ Shadbagh</p>

								<div class="d-flex align-items-center">
									<img
										src="https://i.pinimg.com/736x/94/00/ff/9400ffb9bd98f3de96a5eaf431b92b1d.jpg"
										class="rounded-circle align-self-start mr-2" width="25"
										height="25"> <span style="font-size:12px;">Asmodeus Alice</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</tiles:putAttribute>
	</tiles:insertDefinition>
</body>
</html>