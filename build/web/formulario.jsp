<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" dir="ltr">
    <head>
        <%@include file ="cabecera.jsp"%>
        <!-- Google font -->
        <link href="http://fonts.googleapis.com/css?family=Playfair+Display:400" rel="stylesheet" type="text/css" />
        <link href="http://fonts.googleapis.com/css?family=Alice:400,700" rel="stylesheet" type="text/css" />

        <!-- Custom stlylesheet -->
        <link type="text/css" rel="stylesheet" href="Resourses/CSS/formulario.css" />
        <link type="text/css" rel="stylesheet" href="Resourses/CSS/footer.css" />
        <%@include file = "BarraRedSocial.jsp"%>
    </head>
    <body>
        <%@include file = "BarraMenuExterna.jsp"%>

        <!-- Slider -->
        <section class="contenedor-slider">
            <div class="slider" id="slider">
                <div class="slide">
                    <img class="rounded float-left" src="Resourses/Images/slide6.jpg" alt="Slide" style="width: 30rem;height:auto">                  
                </div>
                <div class="slide">
                    <img class="rounded float-left" src="Resourses/Images/slide7.jpg" alt="Slide" style="width:30rem;height:auto">

                </div>
                <div class="slide">
                    <img class="rounded float-left" src="Resourses/Images/slide8.jpg" alt="Slide" style="width:30rem;height:auto">                  
                </div>
                <div class="slide">
                    <img class="rounded float-left" src="Resourses/Images/slide9.jpg" alt="Slide" style="width:30rem;height:auto"> 
                </div>
                <div class="btn-anterior" id="btnAnterior">
                    <i class="fa fa-arrow-left" aria-hidden="true"></i>
                </div>
                <div class="btn-siguiente" id="btnSiguiente">
                    <i class="fa fa-arrow-right" aria-hidden="true"></i>
                </div>
        </section>
        <!--Fin del slider-->

        <!--Inicio de Formulario-->
        <div id="booking" class="section">
            <div class="section-center">
                <div class="container">
                    <div class="row">
                        <div class="booking-form">
                            <div class="booking-bg">
                               
                            </div>
                            <form action="SvReserva" method="POST">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">NUMERO DE RESERVA</div>
                                            <input class="form-control" id="box" type="number" name="idReserva" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">DOCUMENTO</div>
                                            <input class="form-control"id="box" type="number" name="dni" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">NOMBRE</div>
                                            <input class="form-control" id="box" type="text" name="nombre" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <div class="form-label">APELLIDO</div>
                                            <input class="form-control" id="box" type="text" name="apellido" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <span class="form-label">NACIMIENTO</span>
                                            <input class="form-control" id="box" type="date" name="fechaNac" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <span class="form-label">DIRECCION</span>
                                            <input class="form-control" id="box" type="text" name="direccion" required>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <span class="form-label">PROFESION</span>
                                            <input class="form-control" id="box" type="text" name="profesion" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">CHECK IN</span>
                                            <input class="form-control" id="box" type="date" name="check_in" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">CHECK OUT</span>
                                            <input class="form-control" id="box" type="date" name="check_out" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">ID DE HABITACION</span>
                                            <input class="form-control" id="box" type="number" name="idHabitacion" required>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">PISO</span>
                                            <input class="form-control" id="box" type="number" name="piso" required>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">TEMATICA</span>
                                            <select class="form-control"  id="box" name="tematica" required>
                                                <option value="" selected hidden>Select room type</option>
                                                <option>CLASICA</option>
                                                <option>CONTEMPORANEA</option>
                                                <option>MEDIEVAL</option>
                                                <option>REAL</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <span class="form-label">TIPO DE HABITACION</span>
                                            <select class="form-control" id="box"  name="tipo" required>
                                                <option value="" selected hidden>Select room type</option>
                                                <option>SINGLE</option>
                                                <option>DOBLE</option>
                                                <option>TRIPLE</option>
                                                <option>MULTIPLE</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <span class="form-label">NUMERO DE PERSONAS</span>
                                            <input class="form-control" id="box" type="number" name="numPersonas" required/>
                                        </div>
                                    </div>
                                </div> 
                                <div class="row">
                                    <div class="col-md-12">
                                        <button id="boton" type="submit" class="submit-btn">RESERVAR</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Fin del Formulario-->

        <!--Incluimos el archivo de Pie de pagina-->
        <%@ include file = "footer.jsp" %>
        <script src="Resourses/JS/jquery.min.js"></script>     
        <script src="Resourses/JS/slider.js"></script>   
        <script src="Resourses/JS/bootstrap.min.js"></script>   
    </body>

</html>