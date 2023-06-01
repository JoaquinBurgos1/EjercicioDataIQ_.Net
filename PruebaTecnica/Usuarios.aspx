<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="PruebaTecnica.Usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <!-- Slick Carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" />

    <!-- Estilos personalizados -->
    <link rel="stylesheet" href="./Styles/UsuariosStyles.css" />



    <title></title>

</head>
<body>

    <form id="form1" runat="server">
        <main>
        <div class="titulo">
            <h1>USUARIOS</h1>
        </div>
        <div class="container-carrusel">
            <div class="Filtro">
                <input type="text" class="txtBusquedaFiltro form-control" placeholder="Filtro" value="" />
            </div>
            <div class="div-carrusel-usuarios">
                <asp:Repeater ID="rpDatos" runat="server">
                    <ItemTemplate>
                        <div class="card">
                            <h3 class="busqueda"><%#Eval("name") %></h3>
                            <div class="div-personas">
                                <div class="overlay">
                                    <h5>Username</h5>
                                    <asp:Label  Text='<%#Eval("username") %>' runat="server" />
                                    <h5>Email</h5>
                                    <asp:Label CssClass="busqueda" Text='<%#Eval("email") %>' runat="server" />
                                    <h5>Ciudad</h5>
                                    <asp:Label CssClass="busqueda" Text='<%#Eval("Address.City") %>' runat="server" />
                                    <h5>Telefono</h5>
                                    <asp:Label Text='<%#Eval("phone") %>' runat="server" />
                                    <h5>Nombre de la compañia</h5>
                                    <asp:Label Text='<%#Eval("Company.name") %>' runat="server" />

                                </div>
                                <div class="div-imagen">
                                    <img src="Imagenes/persona-incognita.jpeg" alt="Alternate Text" />
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
            </main>
        <script>
            var width = $(window).width();
            //INICIA EL CAROUSEL

            $(document).ready(function () {

                if (width >= 1050) {
                    $('.div-carrusel-usuarios').slick({
                        dots: true,
                        swipe: false,
                        infinite: false,
                        slidesToShow: 3,
                        slidesToScroll: 3,
                        prevArrow: '<a href="#" class="slick-prev"></a>',
                        nextArrow: '<a href="#" class="slick-next"></a>',
                        autoplay: false,
                    });
                } else if (width >= 695) {
                    $('.div-carrusel-usuarios').slick({
                        dots: true,
                        infinite: false,
                        slidesToShow: 2,
                        slidesToScroll: 2,
                        prevArrow: '<a href="#" class="slick-prev"></a>',
                        nextArrow: '<a href="#" class="slick-next"></a>',
                        autoplay: false,
                    });
                }
                else if (width < 695) {
                    $('.div-carrusel-usuarios').slick({
                        dots: true,
                        infinite: false,
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        prevArrow: '<a href="#" class="slick-prev"></a>',
                        nextArrow: '<a href="#" class="slick-next"></a>',
                        autoplay: false,
                    });
                }

                //TEST DE ELEMENTOS DENTRO DEL CARRUSEL
                var elementosAFiltrar = $('.div-personas').find('.busqueda');
                elementosAFiltrar.each(function () {
                    console.log($(this).text() + "----")
                });

                $('.txtBusquedaFiltro').on('keyup', function () {
                    var valorBusqueda = $(this).val().toLowerCase();
                    ///RESTABLECE EL FILTRO DEL CARRUSEL SLICK
                    $('.div-carrusel-usuarios').slick('slickUnfilter');
                    if (valorBusqueda !== '') {
                        ///ASIGNA NUEVO FILTRO AL CARRUSEL
                        $('.div-carrusel-usuarios').slick('slickFilter', function () {
                            var ValoresAFiltrar = $(this).find('.busqueda').text().toLowerCase();
                            return ValoresAFiltrar.includes(valorBusqueda);
                        });
                    }
                });

            });
        </script>
    </form>
</body>
</html>
