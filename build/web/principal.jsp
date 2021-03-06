<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html  lang="es" dir="ltr">
    <head>
        <%@ include file = "cabecera.jsp" %>

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700" rel="stylesheet">

        <link rel="stylesheet" href="Resourses/CSS/principal.css">

        <!--Fuentes para la barra de redes Sociales-->
        <script src="https://kit.fontawesome.com/eb496ab1a0.js" crossorigin="anonymous"></script>

        <%@ include file = "BarraRedSocial.jsp" %>

    </head>
    <body>

        <!--Validamos la sesion-->
        <%
            HttpSession misession = request.getSession();
            String usu = (String) misession.getAttribute("usuario");
            if (usu == null) {
                response.sendRedirect("index.jsp");
            } else {
        %>

        <!-- Boton "Volver Arriba" -->
        <div class="btn-volver-arriba" id="btnVolverArriba">
            <a href="#" class="volver-arriba">
                <i class="fa fa-arrow-up" aria-hidden="true"></i>
            </a>
        </div>

        <%@ include file = "BarraDeMenu.jsp" %>

        <!-- Main -->
        <section class="main">
            <!-- Banner Principal -->
            <section class="banner-principal">
                <div class="banner" id="banner"></div>
                <div class="texto-banner">
                    <h2>Siempre Innovando</h2>
                    <h1>HOTEL ROYAL HUNT</h1>
                    <a href="#proyectos" class="scroll-suave">Tu relax, nuestra especialidad</a>
                </div>
            </section>

            <!-- Proyectos -->
            <section class="proyectos" id="proyectos">
                <div class="contenedor">
                    <div class="titulo-seccion">
                        <h2>Entretenimiento y deportes pensados para nuestros clientes</h2>
                        <p>Somos especialistas en entregar los mejores momentos y la mejor diversión</p>
                    </div>
                    <div class="galeria-proyectos">
                        <div class="proyecto">
                            <img src="Resourses/Images/1-Golf.jpg" alt="Golf" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/2-Natacion.jpg" alt="Natacion" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/3-Tenis.jpg" alt="Tenis" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/4-Polo.jpg" alt="Polo" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/5-Baile.jpg" alt="Baile" class="imagen-proyecto">
                        </div>
                        <div class="proyecto">
                            <img src="Resourses/Images/6-Gimnasio.jpg" alt="Gimnasio" class="imagen-proyecto">
                        </div>
                    </div>
                </div>
            </section>

            <!-- Acerca de -->
            <section class="acerca-de" id="acercaDe">
                <div class="contenedor">
                    <div class="titulo-seccion">
                        <h2>SERVICIOS</h2>
                        <p>Conoce más sobre nosotros, lo que hacemos y cómo lo hacemos</p>
                    </div>
                    <div class="texto-acerca-de">
                        <p>Atracciones para visitar con toda la familia y amigos
                            • Catedral de León
                            • Estadio de tenis
                            • Centro de exposiciones y convenciones Poliforum León
                            • Arco Triunfal Calzada de los Héroes
                            Otros puntos de interés cerca de Hoteles Royal Hunt
                            • Centro comercial Plaza del Zapato
                            • Zoológico de León
                            • Centro comercial Centro Max
                            • Teatro Manuel Doblado
                            • Centro de Ciencias Explora
                            • Vuelos a León</p>
                    </div>
                </div>
            </section>

            <!-- Slider -->

            <section class="contenedor-slider">
                <div class="slider" id="slider">
                    <div class="slide">
                        <img src="Resourses/Images/slide1.jpg" alt="Slide">
                    </div>
                    <div class="slide">
                        <img src="Resourses/Images/slide2.jpg" alt="Slide">
                    </div>
                    <div class="slide">
                        <img src="Resourses/Images/slide3.jpg" alt="Slide">
                    </div>
                    <div class="slide">
                        <img src="Resourses/Images/slide4.jpg" alt="Slide">
                    </div>
                </div>
                <div class="btn-anterior" id="btnAnterior">
                    <i class="fa fa-arrow-left" aria-hidden="true"></i>
                </div>
                <div class="btn-siguiente" id="btnSiguiente">
                    <i class="fa fa-arrow-right" aria-hidden="true"></i>
                </div>

            </section>

            <!-- Nuestro equipo -->
            <section class="nuestro-equipo" id="equipo">
                <div class="contenedor">
                    <div class="titulo-seccion">
                        <h2>Nuestro equipo</h2>
                        <p>Personas expertas y apasionadas por lo que hacen</p>
                    </div>
                    <div class="equipo">
                        <div class="persona-equipo">
                            <div class="foto">
                                <img src="Resourses/Images/foto1.jpg" alt="Persona">
                            </div>
                            <div class="texto">
                                <h3>Raúl Gonzalez</h3>
                                <h4>Gerente de Hotel</h4>
                                <p>25 años dando atencion, calidad y asesoria a nuestros clientes</p>
                            </div>
                        </div>

                        <div class="persona-equipo">
                            <div class="foto">
                                <img src="Resourses/Images/foto2.jpg" alt="Persona">
                            </div>
                            <div class="texto">
                                <h3>Laura Lentini</h3>
                                <h4>Administradora de servicios</h4>
                                <p>Gracias a sus destrezas y habilidades, el hotel funciona las 24 horas a plena capacidad</p>
                            </div>
                        </div>

                        <div class="persona-equipo">
                            <div class="foto">
                                <img src="Resourses/Images/foto3.jpg" alt="Persona">
                            </div>
                            <div class="texto">
                                <h3>De María Castro</h3>
                                <h4>Chef Profesional</h4>
                                <p>Aporta su experiencia y conocimiento se sirven las mas ricas y sabrosas comidas</p>
                            </div>
                        </div>

                    </div>
                </div>
            </section>

            <!-- Seccion Información extra -->
            <section class="info-extra">
                <div class="contenedor">
                    <div class="info">
                        <div class="contenido-info">
                            <div class="icono-info">
                                <i class="fa fa-paint-brush" aria-hidden="true"></i>
                            </div>
                            <div class="texto-info">
                                <h4>Imaginamos y diseñamos</h4>
                                <p>Queremos que te lleves recuerdos y momentos inolvidables y los compartas con toda tu familia y tus amigos.</p>
                            </div>
                        </div>

                        <div class="contenido-info">
                            <div class="icono-info">
                                <i class="fa fa-desktop" aria-hidden="true"></i>
                            </div>
                            <div class="texto-info">
                                <h4>Creamos diversion y descanso</h4>
                                <p>Pensado especialmente para la recreacion y descanso del cuerpo y tu relax inegral</p>
                            </div>
                        </div>

                    </div>
                    <div class="foto">
                    </div>
                </div>
            </section>

            <!-- Contacto -->
            <section>
                <div class="contacto" id="contacto" data-parallax="scroll" data-image-src="img/bg-contacto.jpg">
                    <div class="contenedor">
                        <div class="contenedor-formulario">
                            <div class="formulario" id="formulario">
                                <h2>Suscribete y recibe nuestras novedades</h2>
                                <p>Recibe descuentos, promociones, nuevas actividades y espectaculos, mantente actualizado y disfruta de la vida!</p>
                                <form action="SvSuscripcion" method="POST">
                                    <div>
                                        <input type="text" name="idDni" placeholder="DNI" id="nombre">
                                        <p class="error">Por favor escribe tu dni</p>
                                    </div>
                                    <div>
                                        <input type="email" name="email" placeholder="Correo electrónico" id="email">
                                        <p class="error">Por favor escribe tu correo</p>
                                    </div>
                                    <div>
                                        <textarea name="mensaje" placeholder="Dejanos tu opinion" id="mensaje"></textarea>
                                        <p class="error">Por favor escribe tu mensaje</p>
                                    </div>
                                    <div>
                                        <input type="submit" name="enviar" value="Suscribirse">
                                    </div>
                                </form>
                            </div>

                            <div class="foto">
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <!--Incluimos el archivo de Pie de pagina-->
        <%@ include file = "footer.jsp" %>

        <script src="Resourses/JS/jquery.min.js"></script>
        <script src="Resourses/JS/banner.js"></script>
        <script src="Resourses/JS/stickyHeader.js"></script>
        <script src="Resourses/JS/scrollSuave.js"></script>
        <script src="Resourses/JS/modal.js"></script>
        <script src="Resourses/JS/slider.js"></script>
        <script src="js/bgParallax.js"></script>
        <script src="Resourses/JS/validacion.js"></script>
        <script src="Resourses/JS/menuMobile.js"></script>

        <script src="Resourses/JS/parallax.min.js"></script>
        <script src="Resourses/JS/prefixfree.min.js"></script>

        <%}%>
    </body>
</html>

