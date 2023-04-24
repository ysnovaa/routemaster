<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="GenericTransferIntegration.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>SONAR</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="keywords" content="archivos planos,planos,conectores,estructruas, siesa, Siesa, sistema erp, erp, ERP, Sistema ERP, solución software erp, solucion software erp, solucion software, Programa contable, programa, contable, Software ERP, Software contable, Software de inventarios, inventarios, Software de nómina, nomina, Nomina, Nómina, sistemas, sistemas de informacion, sistemas de información, sistemas de información s.a., sistemas de información S.A., sistemas de información sa, sistemas de información SA" />

    <script type="text/javascript" src="script/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="script/jquery-ui.js"></script>
    <script type="text/javascript" src="script/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="script/scripts.js"></script>

    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css' />
    <link href="Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <link href="Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <link href="Estilos/jquery-ui/themes/base/jquery-ui.css" rel="stylesheet" />
    <link href="Estilos/jquery.bxslider.css" rel="stylesheet" />

    <!-- bxSlider CSS file -->

    <style type="text/css">
        
        .style1 {
            width: 580px;
            height: 325px;
        }

        .style2 {
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div class="contenedorEncabezado">
                <div class="encabezado">
                    <div class="logo">

                        <table class="contenedor">
                            <tr>
                                <td>

                                    <img src="imagenes/logo_ge.png" /></td>
                                <td>
                                    <em><strong>
                                        <br />
                                    </strong><span class="style2">Integration</span></em></td>
                            </tr>
                        </table>
                        &nbsp;
                    </div>
                    <div class="login">
                        <table width="400" border="0" cellspacing="2" cellpadding="0">
                            <tr>
                                <td class="fondoInput">
                                    <asp:TextBox ID="txtUsuario" runat="server" onblur="if (this.value == '') this.value = 'USUARIO'; $(this).css('border','2px solid #ccc');"
                                        onfocus="if (this.value == 'USUARIO') this.value = ''; $(this).css('border','2px solid #09C');"
                                        value="USUARIO"></asp:TextBox>
                                </td>
                                <td class="fondoInput">
                                    <asp:TextBox ID="txtClave" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:LinkButton ID="ibAceptar" runat="server" class="botonIngresar">INGRESAR</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="textoLogin">&nbsp;<asp:Label ID="lblMensaje" runat="server" ForeColor="#009933"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="contenedorSlider"
                style="vertical-align: middle; text-align: center">
                <br />
                <br />
                <img alt="" class="style1" src="Imagenes/banner4-ERP.jpg" />
            </div>
            <div class="contenedorContenido">
                <div class="contenedorContenido1">
                </div>
            </div>
        </div>
        <div class="contenedorPiePagina1">
            <div class="piePagina">
                <table cellpadding="0" cellspacing="5">
                    <tr>
                        <td style="padding-top: 5px">
                            <img src="imagenes/logo_ge_pie.png" />
                        </td>
                        <td>TODOS LOS DERECHOS RESERVADOS 2023
                        -
                        <asp:Label ID="lblDerechos" runat="server"></asp:Label>
                            &nbsp;</td>
                    </tr>
                </table>
            </div>
        </div>
        <asp:SqlDataSource ID="sqlPlano" runat="server" ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>"
            SelectCommand="select count(*) from dbo.Auditorias
where strTipoAuditoria = 'Generacion de plano'"></asp:SqlDataSource>
    </form>
</body>
</html>
