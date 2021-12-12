<nav class="navbar navbar-expand-lg navbar-light bg-warning">
	<div class="container-fluid">
		<a class="navbar-brand border border-2 rounded border-dark"
			href="/tierraMedia/views/admin/index.jsp">Admin</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">Ver</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/atracciones/index.ad">Atracciones</a></li>
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/usuarios/index.ad">Usuarios</a></li>
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/promociones/index.ad">Promociones</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">Editar</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/edit/atraccion/index.ad">Atracciones</a></li>
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/edit/usuario/index.ad">Usuarios</a></li>
						<!--  <li><a class="dropdown-item" href="#">Promociones</a></li> -->
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">Agregar</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/add/atraccion/index.ad">Atracciones</a></li>
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/add/usuario/index.ad">Usuarios</a></li>
						<!-- <li><a class="dropdown-item" href="#">Promociones</a></li> -->
					</ul></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown"
					aria-expanded="false">Eliminar</a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/delete/atraccion/index.ad">Atracciones</a></li>
						<li><a class="dropdown-item"
							href="/tierraMedia/admin/delete/usuario/index.ad">Usuarios</a></li>
						<!--  <li><a class="dropdown-item" href="#">Promociones</a></li> -->
					</ul></li>

				<li class="nav-item"><a class="nav-link" href="/tierraMedia/logout">Logout</a></li>
			</ul>
		</div>
	</div>
</nav>