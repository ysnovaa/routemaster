<%@ Page Title="Administrar Query" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" 
    CodeBehind="AdministrarQuery.aspx.vb" Inherits="GenericTransferIntegration.AdministrarQuery" ValidateRequest="false"  %>

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



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <uc1:ContenedorMensajes runat="server" ID="ContenedorMensajes" />
            <asp:HiddenField ID="hdIdTarea" runat="server" />
            <asp:HiddenField ID="hdIdSeccion" runat="server" />

            <table style="width: 100%">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td width="9">
                                    <img src="../imagenes/in_contenedor2_left.png" width="12" height="32" />
                                </td>
                                <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png); background-repeat: repeat-x; color: #FFF;">&nbsp;ADMINISTRAR QUERY
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
                        <div style="width: 240px; float: left;">
                            Sección:
                           
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:DropDownList ID="DropDownList2" runat="server" DataTextField="Descripcion"
                                DataValueField="idSeccion">
                            </asp:DropDownList>
                        </div>
                    </td>


                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Consulta:
                        </div>
                        <div style="width: 700px; float: left">


                            <asp:TextBox ID="txtQuery" runat="server" Height="400px"
                                TextMode="MultiLine" Width="700px" Font-Size="10pt" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuery" Display="Dynamic" ErrorMessage="Debe ingresar una consulta." ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                        
                        


                    </td>

                </tr>





                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="btnIngresar" runat="server" Text="Guardar" ToolTip="Botón para ingresar una consulta" /></td>
                                <td>
                                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" ToolTip="Boton para actualizar una consulta" /></td>
                                <td>
                                    <asp:Button ID="btnregresar" runat="server" Text="Regresar" ToolTip="Boton para regresar a la tarea" CausesValidation="False" /></td>
                            </tr>
                        </table>





                    </td>


                </tr>

            </table>
        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>

