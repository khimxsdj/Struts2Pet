<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Homepage</title>
<style>
.gutter {
	padding-left: 16px;
	padding-right: 16px;
}
.word-break{
	width: 295px;
	height: 55px;
	overflow: hidden;
	word-break: break-word;
}
.title {
	height: 38px;
}
</style>
</head>
<body>
	<tiles:insertDefinition name="classic">
		<tiles:putAttribute name="main">
			<i class="fa fa-bars"></i>
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
			<h3 class="my-4 ms-5">Popular posts</h3>
			<div class="container overflow-hidden" style="max-width: 1300px">
				<div class="row g-3">
					<div class="col-lg-6">
						<div class="card flex-row">
							<img style="object-fit:cover;" height="200" width="300"
								src="https://static.standard.co.uk/s3fs-public/thumbnails/image/2016/11/25/10/occamyvisual2511.jpg?width=968"
								alt="Card image cap">
							<div class="card-body">
								<h6 class="title font-weight-semibold">
									<a href="#" data-abc="true" class="title text-decoration-none" style="font-size: 16px;">Sinh vật huyền bí và cách tìm ra chúng</a>
								</h6>
								<ul class="list-inline list-inline-dotted mb-3 mb-lg-2"
									style="font-size: 13px;">
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#tiles</a></li>
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#strut2</a></li>
								</ul>
								<p class="fst-italic word-break mb-2" style="font-size:12px;">Some quick example text to build on the
									card title and make up the bulk of the card's content. Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<div class="d-flex align-items-center">
									<img
										src="https://i.pinimg.com/736x/94/00/ff/9400ffb9bd98f3de96a5eaf431b92b1d.jpg"
										class="rounded-circle me-2" width="25"
										height="25"> <span style="font-size: 12px;">Asmodeus
										Alice</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card flex-row">
							<img style="object-fit:cover;" height="200" width="300"
								src="https://blog.mystart.com/wp-content/uploads/shutterstock_723855517-28-scaled.jpg"
								alt="Card image cap">
							<div class="card-body">
								<h6 class="title font-weight-semibold">
									<a href="#" data-abc="true" class="text-decoration-none" style="font-size: 16px;">Anna Heartfilia và Ác quỷ vùng nông thôn </a>
								</h6>
								<ul class="list-inline list-inline-dotted mb-3 mb-lg-2"
									style="font-size: 13px;">
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#tiles</a></li>
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#strut2</a></li>
								</ul>
								<p class="fst-italic word-break mb-2" style="font-size:13px;">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<div class="d-flex align-items-center ">
									<img
										src="https://i.pinimg.com/736x/94/00/ff/9400ffb9bd98f3de96a5eaf431b92b1d.jpg"
										class="rounded-circle me-2" width="25"
										height="25"> <span style="font-size: 12px;">Asmodeus
										Alice</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card flex-row">
							<img style="object-fit:cover;" height="200" width="300"
								src="https://static01.nyt.com/images/2016/11/18/arts/18FANTASTIC/18FANTASTIC-videoSixteenByNineJumbo1600.jpg"
								alt="Card image cap">
							<div class="card-body">
								<h6 class="title font-weight-semibold">
									<a href="#" data-abc="true" class="text-decoration-none" style="font-size: 16px;">Và rồi
										núi vọng, diều hâu kiếm mồi</a>
								</h6>
								<ul class="list-inline list-inline-dotted mb-3 mb-lg-2"
									style="font-size: 13px;">
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#tiles</a></li>
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#strut2</a></li>
								</ul>
								<p class="fst-italic word-break mb-2" style="font-size:13px;">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<div class="d-flex align-items-center ">
									<img
										src="https://i.pinimg.com/736x/94/00/ff/9400ffb9bd98f3de96a5eaf431b92b1d.jpg"
										class="rounded-circle me-2" width="25"
										height="25"> <span style="font-size: 12px;">Asmodeus
										Alice</span>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="card flex-row">
							<img style="object-fit:cover;" height="200" width="300"
								src="https://alpha.aeon.co/images/f7cdeddb-f580-403b-b545-7694f248ff30/2700x1530.jpg"
								alt="Card image cap">
							<div class="card-body">
								<h6 class="title font-weight-semibold">
									<a href="#" data-abc="true" class="text-decoration-none" style="font-size: 16px;">Lucifer, kẻ sa ngã nơi thiên đàng</a>
								</h6>
								<ul class="list-inline list-inline-dotted mb-3 mb-lg-2"
									style="font-size: 13px;">
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#tiles</a></li>
									<li class="list-inline-item"><a href="#"
										class="text-muted" data-abc="true">#strut2</a></li>
								</ul>
								<p class="fst-italic word-break mb-2" style="font-size:13px;">Some quick example text to build on the
									card title and make up the bulk of the card's content.</p>
								<div class="d-flex align-items-center ">
									<img
										src="https://i.pinimg.com/736x/94/00/ff/9400ffb9bd98f3de96a5eaf431b92b1d.jpg"
										class="rounded-circle me-2" width="25"
										height="25"> <span style="font-size: 12px;">Asmodeus
										Alice</span>
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