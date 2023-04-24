<%@ Page Title="Propiedades" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="Propiedades.aspx.vb" Inherits="GenericTransferIntegration.Propiedades" %>

<%@ Register Src="~/Controles/ContenedorMensajes.ascx" TagPrefix="uc1" TagName="ContenedorMensajes" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css' />
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
                        <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png); background-repeat: repeat-x; color: #FFF;">&nbsp;CONFIGURACIÓN DE PROPIEDADES
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
                            Nombre Propiedad:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:TextBox ID="txtNombrePropiedad" runat="server" ForeColor="Black" MaxLength="50"
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
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idPropiedad"
                                        Width="100%" Font-Bold="False" Font-Size="12px"
                                        CellPadding="4"
                                        ForeColor="#333333" Style="margin-right: 1px"
                                        AllowPaging="True" GridLines="None" BorderWidth="2px" AllowSorting="True">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                        <FooterStyle BackColor="#35AAD8" Font-Bold="True" ForeColor="White" />
                                        <PagerSettings FirstPageText="&amp;lt;Primero&amp;lt;" LastPageText="&amp;gt;Ultimo&amp;gt;" Mode="NumericFirstLast" />
                                        <PagerStyle BackColor="#35AAD8" ForeColor="White" HorizontalAlign="Center" CssClass="gridview" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="#35AAD8" Font-Bold="False" ForeColor="White" VerticalAlign="Top" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" />
                                        <Columns>
                                            <asp:TemplateField ShowHeader="False" HeaderText="ACCIÓN">

                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ibEditar" runat="server" ImageUrl="~/Imagenes/edit-file.png"
                                                                    ToolTip="Modificar la propiedad" CommandName="Edit" CommandArgument='<%# Bind("idPropiedad") %>' />

                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ibEliminarPropiedad" runat="server" CommandName="Delete" ImageUrl="~/Imagenes/delete-file.png"
                                                                    OnClientClick="javascript:return deleteItem(this.name, this.alt);"
                                                                    ToolTip="Eliminar la propiedad" CommandArgument='<%# Bind("idPropiedad") %>' Width="24px" AlternateText='<%# Bind("idPropiedad") %>' />



                                                            </td>
                                                        </tr>
                                                    </table>

                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="IDPROPIEDAD" SortExpression="idPropiedad">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblidPropiedad" runat="server" Text='<%# Bind("idPropiedad") %>' Font-Size="12px"
                                                        Width="100%"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="NOMBRE" SortExpression="nombrePropiedad">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblnombrePropiedad" runat="server" Text='<%# Bind("nombrePropiedad") %>'
                                                        Font-Size="12px" Width="100%"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="VALOR TEXTO 1" SortExpression="valorTexto1">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblvalorTexto1" runat="server" Text='<%# Bind("valorTexto1") %>' Font-Size="12px"
                                                        Width="100%"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="VALOR TEXTO 2" SortExpression="valorTexto2">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblvalorTexto2" runat="server" Text='<%# Bind("valorTexto2") %>' Font-Size="12px"
                                                        Width="100%"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="VALOR ENTERO" SortExpression="valorEntero">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblvalorEntero" runat="server" Text='<%# Bind("valorEntero") %>' Font-Size="12px"
                                                        Width="100%"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" HorizontalAlign="Right" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="VALOR DECIMAL" SortExpression="valorDecimal">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblvalorDecimal" runat="server" Text='<%# Bind("valorDecimal") %>'
                                                        Font-Size="12px" Width="100%"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" HorizontalAlign="Right" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="VALOR BOOLEANO" SortExpression="valorBooleano">

                                                <ItemTemplate>
                                                    <asp:Label ID="lblvalorBooleano" runat="server" Text='<%# Bind("valorBooleano") %>'
                                                        Font-Size="12px" Width="100%"></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="12.5%" HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                        </Columns>
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    </asp:GridView>
                                </div>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>

        </tr>
    </table>



    <div id="deleteConfirmationDialog"></div>




</asp:Content>
