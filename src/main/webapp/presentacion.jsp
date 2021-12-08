<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="es">
<head>
<jsp:include page="partials/head.jsp"></jsp:include>
</head>

<body>
	<header class="container-fluid header p-3">
		<jsp:include page="partials/nav.jsp"></jsp:include>
	</header>

	<div class="separador p-2"></div>

	<!-- SLIDER -->
	<div class="container">
		<div class="row">
			<div class="col_sm_12">
				<div id="carouselExampleCaptions" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleCaptions"
							data-bs-slide-to="3" aria-label="Slide 4"></button>
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="assets/img/02.jpg" class="d-block w-100" alt="..."
								width="620px" height="450px">

							<div class="carousel-caption d-none d-md-block">
								<h5>First slide label</h5>
								<p>Some representative placeholder content for the first
									slide.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="assets/img/06.jpeg" class="d-block w-100" alt="..."
								width="620px" height="450px">
							<div class="carousel-caption d-none d-md-block">
								<h5>Second slide label</h5>
								<p>Some representative placeholder content for the second
									slide.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="assets/img/08.jpg" class="d-block w-100" alt="..."
								width="620px" height="450px">
							<div class="carousel-caption d-none d-md-block">
								<h5>Third slide label</h5>
								<p>Some representative placeholder content for the third
									slide.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img src="assets/img/11.jpg" class="d-block w-100" alt="..."
								width="620px" height="450px">
							<div class="carousel-caption d-none d-md-block">
								<h5>Promoción para aprovechar</h5>
								<p>¡¡¡Los esperamos!!!</p>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
		</div>
	</div>


	<!-- UBICACION -->
	<section class="container-fluid" id="ubicacion">
		<div class="container ">
			<aside class="banner p-3 bg-secondary my-5 rounded">
				<div class="separador-menu text-center">Estamos aquí...</div>
			</aside>

			<div class="row border border-success">
				<div class="col-sm-12">
					<div class="ubicacion ">
						<div class="contenido rounded fs-5">
							<h3>Ubicación</h3>
							<p class="font-weight-bold ">Tierra Media se encuentra
								ubicada al sur de ...</p>

							<p class="">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Cum eum neque ex eveniet officia repellendus
								fuga quia obcaecati? Molestias consequatur asperiores esse non
								accusamus reprehenderit tenetur recusandae suscipit voluptas
								cupiditate.</p>
							<p class="">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Cum eum neque ex eveniet officia repellendus
								fuga quia obcaecati? Molestias consequatur asperiores esse non
								accusamus reprehenderit tenetur recusandae suscipit voluptas
								cupiditate.</p>
							<p class="">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Cum eum neque ex eveniet officia repellendus
								fuga quia obcaecati? Molestias consequatur asperiores esse non
								accusamus reprehenderit tenetur recusandae suscipit voluptas
								cupiditate.</p>

						</div>
						<figure>
							<img class="img-fluid ubicacion-imagen rounded-circle"
								src="assets/img/05.jpg" alt="Casita en Tierra Media">
						</figure>
					</div>
				</div>
				<!-- .col -->
			</div>
			<!-- .row -->
		</div>
	</section>

	<!-- ATRACCIONES -->
	<section class="container-fluid" id="novedades">
		<div class="container">
			<aside class="banner p-4 bg-secondary my-5 rounded">
				<div class="separador-menu text-center">Atracciones</div>
			</aside>

			<div class="row border border-success">
				<div class="col-lg-3 col-md-6 col-sm-12">
					<div class="novedad">
						<figure>
							<img class="img-fluid novedad-imagen rounded-circle"
								src="assets/img/04.jpg" alt="Paisaje">
						</figure>
						<div class="contenido rounded ">
							<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Nam, ut.</h3>
							<p class="fs-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe
								corporis, dolorum enim quasi consectetur nihil maiores ratione
								vel ducimus repudiandae atque provident nisi quam, veritatis,
								cumque architecto similique accusantium repellendus!
								<!-- <a href="" class="btn btn-primary">Leer</a> -->
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12">
					<div class="novedad">
						<figure>
							<img class="img-fluid novedad-imagen rounded-circle"
								src="assets/img/07.jpg" alt="Paisaje">
						</figure>
						<div class="contenido rounded">
							<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Nam, ut.</h3>
							<p class="fs-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe
								corporis, dolorum enim quasi consectetur nihil maiores ratione
								vel ducimus repudiandae atque provident nisi quam, veritatis,
								cumque architecto similique accusantium repellendus! <a
									href="#ingreso" class="btn btn-primary">Leer más...</a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12">
					<div class="novedad">
						<figure>
							<img class="img-fluid novedad-imagen rounded-circle"
								src="assets/img/08.jpg" alt="Peregrinos">
						</figure>
						<div class="contenido rounded">
							<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Nam, ut.</h3>
							<p class="fs-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe
								corporis, dolorum enim quasi consectetur nihil maiores ratione
								vel ducimus repudiandae atque provident nisi quam, veritatis,
								cumque architecto similique accusantium repellendus!
								<!-- <a href="" class="btn btn-primary">Leer</a> -->
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12">
					<div class="novedad">
						<figure>
							<img class="img-fluid novedad-imagen rounded-circle"
								src="assets/img/09.jpg" alt="Colosos">
						</figure>
						<div class="contenido rounded">
							<h3>Lorem ipsum dolor sit amet consectetur adipisicing elit.
								Nam, ut.</h3>
							<p class="fs-5">
								Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe
								corporis, dolorum enim quasi consectetur nihil maiores ratione
								vel ducimus repudiandae atque provident nisi quam, veritatis,
								cumque architecto similique accusantium repellendus!
								<!-- <a href="" class="btn btn-primary">Leer</a> -->
						</div>
					</div>
				</div>
				<!-- .col -->
			</div>
			<!-- .row -->

		</div>
	</section>


	<!-- CONTACTO -->

	<section class="container-fluid contacto my-5" id="contacto">
		<div class="container">
			<aside class="banner p-3 bg-secondary my-5 rounded">
				<div class="separador-menu text-center">Esperamos su consulta.</div>
			</aside>
			<h2>Agradecemos su consulta</h2>
			<hr>
			<form action="" method="post"
				class="w-100 border border-success p-3 ">
				<div class="mb-3">
					<label for="nombre" class="form-label">Nombre </label> <input
						type="text" class="form-control" id="nombre"
						placeholder="Ingrese su nombre" name="nombre" required>
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email </label> <input
						type="email" class="form-control" id="email"
						placeholder="Ingrese su e-mail name@example.com" name="email"
						required>
				</div>
				<div class="mb-3">
					<label for="mensaje" class="form-label">Mensaje</label>
					<textarea name="mensaje" class="form-control" id="mensaje" rows="3"></textarea>
				</div>
				<div class="mb-3">
					<input type="submit" value="Enviar" class="btn btn-primary">
				</div>

			</form>
		</div>
	</section>



	<jsp:include page="partials/footer.jsp"></jsp:include>

</body>
</html>