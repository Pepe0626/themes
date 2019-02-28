<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

    <!-- Fuente de google -->
    <link href="https://fonts.googleapis.com/css?family=Muli:400,600,700,800,900" rel="stylesheet">
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <!-- Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid" id="wrapper">
	<header id="banner" role="banner">
		<div id="heading">
			<h1 class="site-title">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="${site_logo_height}" src="${site_logo}" width="${site_logo_width}" />
				</a>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>
			</h1>
		</div>

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow">${sign_in_text}</a>
		</#if>

		<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	</header>

	<section id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<!-- <footer id="footer" role="contentinfo">
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">TEST</a>
		</p>
	</footer> -->

<footer class="piePagina">
            <div class="bg-secundario">
                <div class="container seccion">
                    <p class="text-left"><strong>La empresa lider en distribución de refacciones automotrices en linea ofrece a sus clientes</strong></p>
                    <div class="row text-center servicios">
                        <div class="col-md-2 col-md-offset-1">
                            <div class="servicioContenedor">
                                <a href="#">
                                    <img src="http://localhost:8780/konakart/images/uxme/icono50x50.png" alt="">
                                    <p>Más de 60,000 productos</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="servicioContenedor">
                                <a href="#">
                                    <img src="http://localhost:8780/konakart/images/uxme/icono50x50.png" alt="">
                                    <p>Asesoría experta a través de nuestro chat</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="servicioContenedor">
                                <a href="#">
                                    <img src="http://localhost:8780/konakart/images/uxme/icono50x50.png" alt="">
                                    <p>Rastreo de estatus de pedidos</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="servicioContenedor">
                                <a href="#">
                                    <img src="http://localhost:8780/konakart/images/uxme/icono50x50.png" alt="">
                                    <p>Servicio de envío express</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="servicioContenedor">
                                <a href="#">
                                    <img src="http://localhost:8780/konakart/images/uxme/icono50x50.png" alt="">
                                    <p>Devolución gratuita las primeras 48 horas</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-terciario">
                <div class="container seccion">
                    <div class="row">
                        <div class="col-md-3">
                            <ul class="listaSinBullet">
                                <li>
                                    <a href="#">Rastrea tu pedido</a>
                                </li>
                                <li>
                                    <a href="#">Facturación</a>
                                </li>
                                <li>
                                    <a href="#">Acerca de</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <ul class="listaSinBullet">
                                <li>
                                    <a href="#">Política de privacidad</a>
                                </li>
                                <li>
                                    <a href="#">Términos y condiciones</a>
                                </li>
                                <li>
                                    <a href="#">Contacto</a>
                                </li>
                                <li>
                                    <a href="#">Centro de ayuda</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-3 redes">
                            <p>Siguenos en redes sociales</p>
                            <a href="#">
                                <img src="http://localhost:8780/konakart/images/uxme/icono20x20.png" alt="">
                            </a>
                            <a href="#">
                                <img src="http://localhost:8780/konakart/images/uxme/icono20x20.png" alt="">
                            </a>
                            <a href="#">
                                <img src="http://localhost:8780/konakart/images/uxme/icono20x20.png" alt="">
                            </a>
                            <a href="#">
                                <img src="http://localhost:8780/konakart/images/uxme/icono20x20.png" alt="">
                            </a>
                        </div>
                        <div class="col-md-3 pago">
                            <p>Métodos de pago</p>
                            <a href="#">
                                <img src="http://localhost:8780/konakart/images/uxme/logo80x20.png" alt="">
                            </a>
                            <a href="#">
                                <img src="http://localhost:8780/konakart/images/uxme/logo80x20.png" alt="">
                            </a>
                            <a href="#">
                                <img src="http://localhost:8780/konakart/images/uxme/logo80x20.png" alt="">
                            </a>
                        </div>
                    </div>
                </div>
                <div class="bg-copy">
                    <div class="container text-center">
                        <p>2003 - 2019 El nombre de la compañia - Todos los derechos reservados</p>
                    </div>
                </div>
            </div>
        </footer>



</div>

    <!-- <script src="${javascript_folder}/jquery-3.3.1.min.js" type="text/javascript"></script>
    <script src="${javascript_folder}/bootstrap.min.js" type="text/javascript"></script>
    <script src="${javascript_folder}/owl.carousel.min.js" type="text/javascript"></script> -->

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />


   


<!-- inject:js -->
<!-- endinject -->

<!-- inject:js -->
<!-- endinject -->

</body>

</html>