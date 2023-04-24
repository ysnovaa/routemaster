<%@ Page Title="Administrar Tarea" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="AdministrarTarea.aspx.vb" Inherits="GenericTransferIntegration.AdministrarTarea" %>

<%@ Register Src="../Controles/ContenedorMensajes.ascx" TagName="ContenedorMensajes" TagPrefix="uc1" %>

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
    <!-- bxSlider CSS file -->

    <style type="text/css">
        .text {
            font-family: 'Oswald', sans-serif;
            font-size: 12px;
            resize: none;
        }
    </style>
    <script type="text/jscript">
        function ocultarWebServiceSiesa() {
            if (document.getElementById('chkWebServiceSiesa').checked) {
                document.getElementById('totalCost').value = 10;
            } else {
                calculate();
            }
        }
    </script>

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
            var dialogTitle = 'Dese eliminar la Consulta ' + itemID + '?';

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


    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <uc1:ContenedorMensajes runat="server" ID="ContenedorMensajes" />
            <asp:HiddenField ID="hdIdTarea" runat="server" />
            <table style="width: 100%">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td width="9">
                                    <img src="../imagenes/in_contenedor2_left.png" width="12" height="32" />
                                </td>
                                <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png); background-repeat: repeat-x; color: #FFF;">&nbsp;ADMINISTRAR TAREA
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
                            Documento:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataTextField="Nombre"
                                DataValueField="idDocumento">
                            </asp:DropDownList>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Nombre:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:TextBox ID="txtNombre" runat="server" MaxLength="200"
                                Width="290px" />

                        </div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="El nombre de la tarea es obligatorio." ForeColor="Red"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Cadena de conexion:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:TextBox ID="txtcadenaConexion" runat="server" Height="50px"
                                TextMode="MultiLine" Width="500px" Font-Size="10pt" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Ruta de generación del plano:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:TextBox ID="txtRutaGeneracion" runat="server" MaxLength="200"
                                Width="290px" />
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Usar Web Service de Siesa:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:CheckBox ID="chkWebServiceSiesa" runat="server" AutoPostBack="True" />

                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Nombre Conexión Web Service Siesa:
                        </div>
                        <div style="width: 300px; float: left">
                            <div id="divWebServiceSiesa">
                                <asp:TextBox ID="txtNombreConexion" runat="server" Enabled="False" MaxLength="200"
                                    Width="290px" />
                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Compañía Web Service Siesa:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:TextBox ID="txtCia" runat="server" Enabled="False" MaxLength="10" Text='<%# Bind("CiaWsSiesa") %>'
                                Width="50px" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Usuario Web Service:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:TextBox ID="txtUsuario" runat="server" Enabled="False" MaxLength="100"
                                Width="100px" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Clave Web Service:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:TextBox ID="txtClave" runat="server" Enabled="False" MaxLength="100"
                                Width="100px" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Enviar Notificaciones:
                        </div>
                        <div style="width: 300px; float: left">
                            <asp:CheckBox ID="chkEnviarNotificacion" runat="server" AutoPostBack="True" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="width: 240px; float: left;">
                            Destinatarios:
                        </div>
                        <div style="width: 500px; float: left">

                            <asp:TextBox ID="txtDestinatarios" runat="server" Height="60px"
                                TextMode="MultiLine" Width="500px" Font-Size="10pt" />


                        </div>

                    </td>
                </tr>




                <tr>
                    <td>
                        <table>
                            <tr>
                                <td>
                                    <asp:Button ID="btnIngresar" runat="server" Text="Guardar" ToolTip="Botón para ingresar una Consulta" /></td>
                                <td>
                                    <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" ToolTip="Boton para actualizar una Tarea" /></td>
                                <td>
                                    <asp:Button ID="btnIngresarConsulta" runat="server" Text="N. Consulta" ToolTip="Boton para ingresar una consulta a la Tarea" CausesValidation="False" /></td>

                                <td>
                                    <asp:Button ID="btnregresar" runat="server" Text="Regresar" ToolTip="Boton para regresar a la consulta de Tareas" CausesValidation="False" /></td>
                            </tr>
                        </table>





                    </td>


                </tr>

            </table>
            <div id="tblConsultas" runat="server">

                <hr />
                <table style="width: 100%">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                                <tr>
                                    <td width="9">
                                        <img src="../imagenes/in_contenedor2_left.png" width="12" height="32" />
                                    </td>
                                    <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png); background-repeat: repeat-x; color: #FFF;">&nbsp;ADMINISTRAR CONSULTAS
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
                            <div class="contenedorPrincipal">
                                <div style="height: 295px; overflow: auto; margin: 15px;">
                                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="idQuery"
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
                                                <EditItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Update" ImageUrl="~/Imagenes/save.png"
                                                                    ToolTip="Guardar" Width="24px" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="ImageButton4" runat="server" CommandName="Cancel" ImageUrl="~/Imagenes/back.png"
                                                                    ToolTip="Cancelar" Width="24px" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="IbEditarConsulta" runat="server" CommandName="Edit" ImageUrl="~/Imagenes/edit-file.png"
                                                                    CommandArgument='<%# Eval("idQuery")%>' ToolTip="Modificar la Consulta" />
                                                            </td>
                                                            <td>
                                                                <asp:ImageButton ID="IbEliminarConsulta" runat="server" CommandName="Delete" ImageUrl="~/Imagenes/delete-file.png"
                                                                    CommandArgument='<%# Eval("idQuery")%>' OnClientClick="javascript:return deleteItem(this.name, this.alt);" AlternateText='<%# Bind("idQuery") %>'
                                                                    ToolTip="Eliminar la Consulta" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="15%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="ID">
                                                <ItemTemplate>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("IdQuery") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="15%" HorizontalAlign="Center" VerticalAlign="Middle" />

                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="SECCIÓN" SortExpression="Seccion">

                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Seccion.descripcion")%>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="30%" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="QUERY" SortExpression="Query">

                                                <ItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Query") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="40%" />
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




                <div id="deleteConfirmationDialog"></div>


            </div>

        </ContentTemplate>

    </asp:UpdatePanel>

</asp:Content>

