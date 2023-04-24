<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master"
    CodeBehind="Tarea.aspx.vb" Inherits="GenericTransferIntegration.Tarea" %>

<%@ Register Src="../Controles/ContenedorMensajes.ascx" TagName="ContenedorMensajes" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css' />
    <link href="../Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/cascada.css" rel="stylesheet" type="text/css" />
    <link href="../Estilos/jquery-ui/themes/base/jquery-ui.css" rel="stylesheet" />
    <link href="../Estilos/jquery.bxslider.css" rel="stylesheet" />
    <!-- jQuery library (served from Google) -->

    <script type="text/javascript" src="../script/jquery-1.8.0.min.js"></script>
    <script type="text/javascript" src="../script/scripts.js"></script>
    <script type="text/javascript" src="../script/jquery-ui.js"></script>
    <script type="text/javascript" src="../script/jquery.bxslider.min.js"></script>
    <!-- bxSlider CSS file -->

    

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

        function deleteTarea(uniqueID, itemID) {
            var dialogTitle = 'Dese eliminar la tarea ' + itemID + '?';

            $("#deleteConfirmationDialog").html('<p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>Al eliminar esta Tarea, eliminara todas las consultas. Esta Seguro?</p>');

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
                        <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png); background-repeat: repeat-x; color: #FFF;">&nbsp;TAREAS
                        </td>
                        <td width="9">
                            <img src="../imagenes/in_contenedor2_right.png" width="12" height="32" />
                        </td>
                    </tr>
                </table>
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">

                    <tr>
                        <td class="tdFormularios" valign="top">

                            <table class="contenedorPrincipal">
                                <tr>
                                    <td>

                                        <div style="width: 800px;">
                                            <div style="width: 100%; height: 25px">
                                                <div style="width: 120px; float: left;">
                                                    Nombre Tarea:
                                                </div>
                                                <div style="width: 300px; float: left">
                                                    <asp:TextBox ID="txtNombreTarea" runat="server" ForeColor="Black" MaxLength="50"
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
                                                    <asp:Button ID="btnNuevo" runat="server" Text="Nueva Tarea" ToolTip="Boton para agregar una nueva Tarea" />

                                                </td>
                                            </tr>
                                        </table>





                                    </td>


                                </tr>
                                <tr>
                                    <td width="100%">
                                        <table border="0" cellpadding="0" cellspacing="2" width="100%">

                                            <tr>
                                                <td>
                                                    <div class="contenedorPrincipal">
                                                        <div style="height: 480px; overflow: auto; margin: 15px;">
                                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idTarea"
                                                                Width="100%" Font-Bold="False" Font-Size="12px"
                                                                CellPadding="4"
                                                                ForeColor="#333333" Style="margin-right: 1px"
                                                                AllowPaging="True" GridLines="None" BorderWidth="2px">
                                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                <FooterStyle BackColor="#35AAD8" Font-Bold="True" ForeColor="White" />
                                                                <PagerSettings FirstPageText="&amp;lt;Primero&amp;lt;" LastPageText="&amp;gt;Ultimo&amp;gt;" Mode="NumericFirstLast" />
                                                                <PagerStyle BackColor="#35AAD8" ForeColor="White" HorizontalAlign="Center" CssClass="gridview" />
                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                <HeaderStyle BackColor="#35AAD8" Font-Bold="False" ForeColor="White" VerticalAlign="Top" BorderColor="White" BorderStyle="Solid" BorderWidth="1px" />
                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="ACCIÓN">
                                                                        <ItemTemplate>
                                                                            <asp:ImageButton ID="ibEditar" runat="server" CommandArgument='<%# Eval("idTarea") %>' CommandName="Edit"
                                                                                ImageUrl="~/Imagenes/edit-file.png" ToolTip="Modificar el nombre del documento" />




                                                                            <asp:ImageButton ID="btnDelete" runat="server" CommandArgument='<%# Eval("idTarea") %>' AlternateText='<%# Bind("idTarea") %>' CommandName="Delete" ImageUrl="~/Imagenes/delete-file.png" OnClientClick="javascript:return deleteTarea(this.name, this.alt);" ToolTip="Eliminar la tarea y las consultas relacionadas" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="9.5%" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="IDTAREA" SortExpression="idTarea">

                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("idTarea") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" Width="8%" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="NOMBRE" SortExpression="Nombre">

                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nombre") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <ItemStyle Width="22%" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="DOCUMENTO">

                                                                        <ItemTemplate>
                                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Documento.Nombre") %>'></asp:Label>
                                                                        </ItemTemplate>
                                                                        <ItemStyle Width="17.5%" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="USAR WEB SERVICE" SortExpression="InvocarWebService">
                                                                        <ItemTemplate>
                                                                            <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("InvocarWebService") %>'
                                                                                Enabled="false" />
                                                                        </ItemTemplate>

                                                                        <ItemStyle HorizontalAlign="Center" Width="11%" />
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="ENVIAR NOTIFICACIONES">

                                                                        <ItemTemplate>
                                                                            <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("EnviarNotificaciones") %>' Enabled="false" />
                                                                        </ItemTemplate>
                                                                        <ItemStyle HorizontalAlign="Center" />
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



                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>


    <div id="deleteConfirmationDialog"></div>
</asp:Content>
