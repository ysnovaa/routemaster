<%@ Page Title="Administrar Propiedades" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="AdministrarPropiedad.aspx.vb" Inherits="GenericTransferIntegration.AdministrarPropiedad" %>

<%@ Register Src="../Controles/ContenedorMensajes.ascx" TagName="ContenedorMensajes" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css' />
    <link href="../Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/gridview.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/jquery-ui/themes/base/jquery-ui.css" rel="stylesheet" />
    <!-- jQuery library (served from Google) -->

    <script type="text/javascript" src="../Script/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="../js/scripts.js"></script>
    <script type="text/javascript" src="../Script/jquery-ui.js"></script>
    <style type="text/css">
        .text
        {
            font-family: 'Oswald', sans-serif;
            font-size: 12px;
            resize: none;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:ContenedorMensajes runat="server" ID="ContenedorMensajes" />
    <asp:HiddenField ID="hdIdPropiedad" runat="server" />
    <table style="width: 100%">
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td width="9">
                            <img src="../imagenes/in_contenedor2_left.png" width="12" height="32" />
                        </td>
                        <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png); background-repeat: repeat-x; color: #FFF;">&nbsp;ADMINISTRAR PROPIEDAD
                        </td>
                        <td width="9">
                            <img src="../imagenes/in_contenedor2_right.png" width="12" height="32" />
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
        <tr>
            <td>

                <table>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                Nombre Propiedad:
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtNomPropiedad" runat="server" MaxLength="50"
                                    Width="290"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNomPropiedad" Display="Dynamic" ErrorMessage="El nombre de la propiedad es obligatorio." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">
                                    Valor Texto 1:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtvalorTexto1" runat="server" MaxLength="500"
                                    Width="290" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">
                                    Valor Texto 2:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtvalorTexto2" runat="server" MaxLength="500"
                                    Width="290" Rows="3" TextMode="MultiLine"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">
                                    Valor Entero:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorEntero" runat="server" Width="290" MaxLength="4" TextMode="SingleLine"></asp:TextBox>

                            </div>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtValorEntero" Display="Dynamic" ErrorMessage="El valor ingresado es incorrecto" ValidationExpression="^\d{1,14}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">
                                    Valor Decimal:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtvalorDecimal" runat="server" Width="290"></asp:TextBox>
                            </div>

                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtvalorDecimal" Display="Dynamic" ErrorMessage="El valor ingresado es incorrecto" ValidationExpression="^\d{1,14}(\.\d{0,4})?$" ForeColor="Red"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">
                                    Valor Booleano:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:DropDownList ID="cmbValorBooleano" runat="server">
                                    <asp:ListItem Value="0">Seleccione...</asp:ListItem>
                                    <asp:ListItem Value="1">False</asp:ListItem>
                                    <asp:ListItem Value="2">True</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>
                    <tr>
                        <td></td>
                    </tr>


                </table>


            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" ToolTip="Botón para ingresar una propiedad" /></td>
                        <td>
                            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" ToolTip="Boton para actualizar la propiedad" /></td>
                        <td>
                            <asp:Button ID="btnregresar" runat="server" Text="Regresar" ToolTip="Boton para regresar a la consulta de propiedades" CausesValidation="False" /></td>
                    </tr>
                </table>





            </td>


        </tr>

    </table>
</asp:Content>

