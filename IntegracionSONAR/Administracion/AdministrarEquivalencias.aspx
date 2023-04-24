<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="AdministrarEquivalencias.aspx.vb" Inherits="GenericTransferIntegration.AdministrarEquivalencias" %>

<%@ Register Src="../Controles/ContenedorMensajesV2.ascx" TagName="ContenedorMensajes"
    TagPrefix="uc1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet'
        type='text/css' />
    <link href="../Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/gridview.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/jquery-ui/themes/base/jquery-ui.css" rel="stylesheet" />
    <!-- jQuery library (served from Google) -->
    <script type="text/javascript" src="../Script/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="../js/scripts.js"></script>
    <script type="text/javascript" src="../Script/jquery-ui.js"></script>
    <style type="text/css">
        .text {
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
                        <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png); background-repeat: repeat-x; color: #FFF;">&nbsp;ADMINISTRAR EQUIVALENCIAS
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
                                <label style="font-size: 14px">
                                    Equivalencia:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtEquivalencia" runat="server" MaxLength="50" Width="290"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEquivalencia"
                                Display="Dynamic"
                                ErrorMessage="El nombre de la equivalencia es obligatorio." ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">
                                    Campo Origen 1:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen1" runat="server" MaxLength="500" Width="290"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 1:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen1" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 2:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen2" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 2:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen2" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 3:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen3" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 3:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen3" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                 <label style="font-size: 14px">Campo Origen 4:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen4" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 4:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen4" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 5:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen5" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 5:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen5" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 6:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen6" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 6:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen6" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 7:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen7" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 7:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen7" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 8:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen8" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 8:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen8" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 9:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen9" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 9:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen9" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 10:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen10" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 10:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen10" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 11:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen11" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 11:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen11" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 12:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen12" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 12:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen12" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                 <label style="font-size: 14px">Campo Origen 13:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen13" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 13:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen13" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 14:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen14" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 14:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen14" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 15:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen15" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 15:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen15" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Campo Origen 16:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtCampoOrigen16" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Origen 16:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorOrigen16" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 1:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino1" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 2:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino2" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 3:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino3" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 4:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino4" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 5:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino5" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 6:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino6" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 7:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino7" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 8:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino8" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 9:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino9" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 10:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino10" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 11:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino11" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 12:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino12" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 13:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino13" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 14:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino14" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 15:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino15" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <div style="width: 120px; float: left;">
                                <label style="font-size: 14px">Valor Destino 16:
                                </label>
                            </div>
                            <div style="width: 300px; float: left">
                                <asp:TextBox ID="txtValorDestino16" runat="server" Width="290" MaxLength="500"></asp:TextBox>
                            </div>
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
                            <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" ToolTip="Botón para ingresar una propiedad" />
                        </td>
                        <td>
                            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" ToolTip="Boton para actualizar la propiedad" />
                        </td>
                        <td>
                            <asp:Button ID="btnregresar" runat="server" Text="Regresar" ToolTip="Boton para regresar a la consulta de propiedades"
                                CausesValidation="False" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
