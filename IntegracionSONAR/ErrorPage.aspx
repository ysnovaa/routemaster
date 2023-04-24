<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ErrorPage.aspx.vb" Inherits="GenericTransferIntegration.ErrorPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet'
        type='text/css' />
    <link href="../Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <!-- jQuery library (served from Google) -->
    <script src="../js/jquery.min.js"></script>
    <!-- bxSlider Javascript file -->
    <script src="../js/slider/jquery.bxslider.min.js"></script>
    <!-- bxSlider CSS file -->
    <link href="../js/slider/jquery.bxslider.css" rel="stylesheet" />
    <script src="../js/scripts.js"></script>
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <table class="style2">
        <tr>
            <td align="center">
                <br />
                <br />
                <br />
                <table class="style3" style="border-right: lightgrey 2px outset; border-top: lightgrey 2px outset;
                    border-left: lightgrey 2px outset; width: 500px; border-bottom: lightgrey 2px outset">
                    <tr>
                        <td class="CeldaLabel">
                            <strong>Hola usuario,
                                <br />
                                <br />
                                Ha ocurrido un error no especificado,
                                <asp:LinkButton ID="lbContactenos" runat="server">contactese con el administrador.</asp:LinkButton>
                                <br />
                                <br />
                                Gracias </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="CeldaLabel">
                            <strong>
                                <br />
                                Información técinca del error: </strong>
                        </td>
                    </tr>
                    <tr>
                        <td class="CeldaLabel">
                            <br />
                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                            <br />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
