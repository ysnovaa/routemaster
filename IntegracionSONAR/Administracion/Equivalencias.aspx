<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="Equivalencias.aspx.vb" Inherits="GenericTransferIntegration.Equivalencias" %>

<%@ Register Src="~/Controles/ContenedorMensajesV2.ascx" TagPrefix="uc1" TagName="ContenedorMensajes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet'
        type='text/css' />
    <link href="../Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/jquery-ui/themes/base/jquery-ui.css" rel="stylesheet" />
    <link href="../Estilos/jquery.bxslider.css" rel="stylesheet" />
    <!-- jQuery library (served from Google) -->
    <script type="text/javascript" src="../script/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="../script/jquery-ui.js"></script>
    <script type="text/javascript" src="../script/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="../script/scripts.js"></script>
    <script type="text/javascript">


        function InitializeDeleteConfirmation() {
            $('#deleteConfirmationDialog').dialog({
                autoOpen: false,
                resizable: false,
                height: 140,
                modal: true,
                buttons: {
                    "Delete": function () {
                        $(this).dialog("close");
                    },
                    Cancel: function () {
                        $(this).dialog("close");
                    }
                }
            });
        }

        function deleteItem(uniqueID, itemID) {
            var dialogTitle = 'Dese eliminar la propiedad ' + itemID + '?';

            $("#deleteConfirmationDialog").html('<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>Esta Seguro?</p>');

            $("#deleteConfirmationDialog").dialog({
                title: dialogTitle,
                buttons: {
                    "Eliminar": function () { __doPostBack(uniqueID, ''); $(this).dialog("close"); },
                    "Cancelar": function () { $(this).dialog("close"); }
                }
            });

            $('#deleteConfirmationDialog').dialog('open');
            return false;
        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:ContenedorMensajes runat="server" ID="ContenedorMensajes" />
    <table style="width: 100%">
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                    <tr>
                        <td width="9">
                            <img src="../imagenes/in_contenedor2_left.png" width="12" height="32" />
                        </td>
                        <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png); background-repeat: repeat-x; color: #FFF;">&nbsp;CONFIGURACIÓN DE EQUIVALENCIAS
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
                <div style="width: 800px;">
                    <div style="width: 100%; height: 25px">
                        <div style="width: 120px; float: left;">
                            Equivalencia:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:TextBox ID="txtEquivalencia" runat="server" ForeColor="Black" MaxLength="50"
                                Width="300" ToolTip="Ingrese un nombre para filtrar los registros"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="btnConsultar" runat="server" Text="Consultar" ToolTip="Botón para consultar los registros" />
                        </td>
                        <td>
                            <asp:Button ID="btnBorrarFiltros" runat="server" Text="Borrar Filtros" ToolTip="Boton para quitar los filtros aplicados" />
                        </td>
                        <td>
                            <asp:Button ID="btnNuevo" runat="server" Text="Nuevo registro" ToolTip="Boton para agregar una nueva propiedad" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="2" width="100%">
                    <tr>
                        <td>
                            <div class="contenedorPrincipal">
                                <div style="height: 480px; overflow: auto; margin: 15px;">
                                    <asp:GridView ID="GridView2" runat="server" DataSourceID="odsEquivalencia" AutoGenerateColumns="False" DataKeyNames="idEquivalencia"
                                        Width="100%" Font-Bold="False" Font-Size="12px" CellPadding="4" ForeColor="#333333"
                                        Style="margin-right: 1px" AllowPaging="True" GridLines="None" BorderWidth="2px"
                                        AllowSorting="True">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <FooterStyle BackColor="#35AAD8" Font-Bold="True" ForeColor="White" />
                                        <PagerSettings FirstPageText="&amp;lt;Primero&amp;lt;" LastPageText="&amp;gt;Ultimo&amp;gt;"
                                            Mode="NumericFirstLast" />
                                        <PagerStyle BackColor="#35AAD8" ForeColor="White" HorizontalAlign="Center" CssClass="gridview" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#35AAD8" Font-Bold="False" ForeColor="White" VerticalAlign="Top"
                                            BorderColor="White" BorderStyle="Solid" BorderWidth="1px" />
                                        <Columns>
                                            <asp:TemplateField HeaderText="Accion">
                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ibEditar" runat="server" ImageUrl="~/Imagenes/edit-file.png"
                                                                    ToolTip="Modificar la propiedad" CommandName="Edit"
                                                                    CommandArgument='<%# Bind("idEquivalencia") %>' OnClick="ibEditar_Click" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ibEliminarPropiedad" runat="server" ImageUrl="~/Imagenes/delete-file.png"
                                                                    OnClientClick="return( window.confirm(&quot;¿Desea eliminar la equivalencia?&quot;))" ToolTip="Eliminar la propiedad"
                                                                    CommandArgument='<%# Bind("idEquivalencia") %>' Width="24px"
                                                                    AlternateText='<%# Bind("idEquivalencia") %>'
                                                                    OnClick="ibEliminarPropiedad_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="IdEquivalencia" HeaderText="IdEquivalencia" />
                                            <asp:BoundField DataField="Equivalencia" HeaderText="Equivalencia" />
                                            <asp:BoundField DataField="CampoOrigen1" HeaderText="CampoOrigen1" />
                                            <asp:BoundField DataField="ValorOrigen1" HeaderText="ValorOrigen1" />
                                            <asp:BoundField DataField="CampoOrigen2" HeaderText="CampoOrigen2" />
                                            <asp:BoundField DataField="ValorOrigen2" HeaderText="ValorOrigen2" />
                                            <asp:BoundField DataField="CampoOrigen3" HeaderText="CampoOrigen3" />
                                            <asp:BoundField DataField="ValorOrigen3" HeaderText="ValorOrigen3" />
                                            <asp:BoundField DataField="CampoOrigen4" HeaderText="CampoOrigen4" />
                                            <asp:BoundField DataField="ValorOrigen4" HeaderText="ValorOrigen4" />
                                            <asp:BoundField DataField="CampoOrigen5" HeaderText="CampoOrigen5" />
                                            <asp:BoundField DataField="ValorOrigen5" HeaderText="ValorOrigen5" />
                                            <asp:BoundField DataField="CampoOrigen6" HeaderText="CampoOrigen6" />
                                            <asp:BoundField DataField="ValorOrigen6" HeaderText="ValorOrigen6" />
                                            <asp:BoundField DataField="CampoOrigen7" HeaderText="CampoOrigen7" />
                                            <asp:BoundField DataField="ValorOrigen7" HeaderText="ValorOrigen7" />
                                            <asp:BoundField DataField="CampoOrigen8" HeaderText="CampoOrigen8" />
                                            <asp:BoundField DataField="ValorOrigen8" HeaderText="ValorOrigen8" />
                                            <asp:BoundField DataField="CampoOrigen9" HeaderText="CampoOrigen9" />
                                            <asp:BoundField DataField="ValorOrigen9" HeaderText="ValorOrigen9" />
                                            <asp:BoundField DataField="CampoOrigen10" HeaderText="CampoOrigen10" />
                                            <asp:BoundField DataField="ValorOrigen10" HeaderText="ValorOrigen10" />
                                            <asp:BoundField DataField="CampoOrigen11" HeaderText="CampoOrigen11" />
                                            <asp:BoundField DataField="ValorOrigen11" HeaderText="ValorOrigen11" />
                                            <asp:BoundField DataField="CampoOrigen12" HeaderText="CampoOrigen12" />
                                            <asp:BoundField DataField="ValorOrigen12" HeaderText="ValorOrigen12" />
                                            <asp:BoundField DataField="CampoOrigen13" HeaderText="CampoOrigen13" />
                                            <asp:BoundField DataField="ValorOrigen13" HeaderText="ValorOrigen13" />
                                            <asp:BoundField DataField="CampoOrigen14" HeaderText="CampoOrigen14" />
                                            <asp:BoundField DataField="ValorOrigen14" HeaderText="ValorOrigen14" />
                                            <asp:BoundField DataField="CampoOrigen15" HeaderText="CampoOrigen15" />
                                            <asp:BoundField DataField="ValorOrigen15" HeaderText="ValorOrigen15" />
                                            <asp:BoundField DataField="CampoOrigen16" HeaderText="CampoOrigen16" />
                                            <asp:BoundField DataField="ValorOrigen16" HeaderText="ValorOrigen16" />
                                            <asp:BoundField DataField="ValorDestino" HeaderText="ValorDestino" />
                                            <asp:BoundField DataField="ValorDestino2" HeaderText="ValorDestino2" />
                                            <asp:BoundField DataField="ValorDestino3" HeaderText="ValorDestino3" />
                                            <asp:BoundField DataField="ValorDestino4" HeaderText="ValorDestino4" />
                                            <asp:BoundField DataField="ValorDestino5" HeaderText="ValorDestino5" />
                                            <asp:BoundField DataField="ValorDestino6" HeaderText="ValorDestino6" />
                                            <asp:BoundField DataField="ValorDestino7" HeaderText="ValorDestino7" />
                                            <asp:BoundField DataField="ValorDestino8" HeaderText="ValorDestino8" />
                                            <asp:BoundField DataField="ValorDestino9" HeaderText="ValorDestino9" />
                                            <asp:BoundField DataField="ValorDestino10" HeaderText="ValorDestino10" />
                                            <asp:BoundField DataField="ValorDestino11" HeaderText="ValorDestino11" />
                                            <asp:BoundField DataField="ValorDestino12" HeaderText="ValorDestino12" />
                                            <asp:BoundField DataField="ValorDestino13" HeaderText="ValorDestino13" />
                                            <asp:BoundField DataField="ValorDestino14" HeaderText="ValorDestino14" />
                                            <asp:BoundField DataField="ValorDestino15" HeaderText="ValorDestino15" />
                                            <asp:BoundField DataField="ValorDestino16" HeaderText="ValorDestino16" />
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    </asp:GridView>
                                    <asp:ObjectDataSource ID="odsEquivalencia" runat="server"
                                        SelectMethod="Consultar" TypeName="GenericTransferIntegration.clsEquivalencia">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="txtEquivalencia" Name="Equivalencia"
                                                PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:ObjectDataSource>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <div id="deleteConfirmationDialog">
    </div>
</asp:Content>
