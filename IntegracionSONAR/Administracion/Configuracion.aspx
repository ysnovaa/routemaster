<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master"
    CodeBehind="Configuracion.aspx.vb" Inherits="GenericTransferIntegration.Configuracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width: 800px; height: 200px;">
        <div style="width: 100%; height: 25px">
            <div style="width: 120px; float: left;">
                Nombre Propiedad:
            </div>
            <div style="width: 300px; float: left">
                <asp:TextBox ID="txtNomPropiedad" runat="server" ForeColor="Black" MaxLength="50"
                    Width="300"></asp:TextBox>
            </div>
        </div>
        <div style="width: 100%; height: 25px">
            <div style="width: 120px; float: left;">
                <label style="font-size: 14px">
                    Valor Texto 1:
                </label>
            </div>
            <div style="width: 300px; float: left">
                <asp:TextBox ID="txtvalorTexto1" runat="server" ForeColor="Black" MaxLength="500"
                    Width="300"></asp:TextBox>
            </div>
        </div>
        <div style="width: 100%; height: 25px">
            <div style="width: 120px; float: left;">
                <label style="font-size: 14px">
                    Valor Texto 2:
                </label>
            </div>
            <div style="width: 300px; float: left">
                <asp:TextBox ID="txtvalorTexto2" runat="server" ForeColor="Black" MaxLength="5000"
                    Width="300"></asp:TextBox>
            </div>
        </div>
        <div style="width: 100%; height: 25px">
            <div style="width: 120px; float: left;">
                <label style="font-size: 14px">
                    Valor Entero:
                </label>
            </div>
            <div style="width: 300px; float: left">
                <asp:TextBox ID="txtValorEntero" runat="server" ForeColor="Black" Width="300"></asp:TextBox>
            </div>
        </div>
        <div style="width: 100%; height: 25px">
            <div style="width: 120px; float: left;">
                <label style="font-size: 14px">
                    Valor Decimal:
                </label>
            </div>
            <div style="width: 300px; float: left">
                <asp:TextBox ID="txtvalorDecimal" runat="server" ForeColor="Black" Width="300"></asp:TextBox>
            </div>
        </div>
        <div style="width: 100%; height: 25px">
            <div style="width: 120px; float: left;">
                <label style="font-size: 14px">
                    Valor Booleano:
                </label>
            </div>
            <div style="width: 300px; float: left">
                <asp:DropDownList ID="ddlValorBooleano" runat="server" ForeColor="Black">
                    <asp:ListItem Value="0">False</asp:ListItem>
                    <asp:ListItem Value="1">True</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div style="width: 100%; height: 25px">
            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" />
        </div>
    </div>
    <%---------------------------------------------------------------------------------------------------------------------------%>
    <table border="0" cellpadding="0" cellspacing="2" width="100%">
        <tr>
            <td>
                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tr>
                        <td>
                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                <tr>
                                    <td width="9">
                                        <img height="26" src="../imagenes/in_contenedor3_left.png" width="12" />
                                    </td>
                                    <td align="center" style="background-image: url(../imagenes/in_contenedor3_repeat.png);
                                        background-repeat: repeat-x; color: #FFF;">
                                        <table cellpadding="0" cellspacing="0" width="99%">
                                            <tr>
                                                <td style="text-align: left" width="12.5%">
                                                    ACCIÓN
                                                </td>
                                                <td style="text-align: left" width="12.5%">
                                                    ID PROPIEDAD
                                                </td>
                                                <td style="text-align: left" width="12.5%">
                                                    NOMBRE
                                                </td>
                                                <td style="text-align: left" width="12.5%">
                                                    VALOR TEXTO 1
                                                </td>
                                                <td style="text-align: left" width="12.5%">
                                                    VALOR TEXTO 2
                                                </td>
                                                <td style="text-align: left" width="12.5%">
                                                    VALOR ENTERO
                                                </td>
                                                <td style="text-align: left" width="12.5%">
                                                    VALOR DECIMAL
                                                </td>
                                                <td style="text-align: left" width="12.5%">
                                                    VALOR BOOLEANO
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td width="9">
                                        <img height="26" src="../imagenes/in_contenedor3_right.png" width="12" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <div class="contenedorPrincipal">
                    <div style="height: 250px; overflow: auto; margin: 15px;">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idPropiedad"
                            Width="100%" Font-Bold="False" Font-Size="12px" DataSourceID="odsPropiedades"
                            CellPadding="4"
                            ForeColor="#333333" GridLines="None" Style="margin-right: 1px"
                            ShowHeader="False" 
                            AllowPaging="True" >
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerSettings Mode="NumericFirstLast" Position="TopAndBottom" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="#224272" Font-Bold="False" ForeColor="White" VerticalAlign="Top" />
                            <Columns>
                                <asp:TemplateField ShowHeader="False" HeaderText="Accion">
                                    <EditItemTemplate>
                                        <table>
                                        </table>
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Update" ImageUrl="~/Imagenes/save.png"
                                                        OnClick="ibEditar_Click" ToolTip="Guardar" Width="24px" />
                                                </td>
                                                <td>
                                                    <asp:ImageButton ID="ImageButton4" runat="server" CommandName="Cancel" ImageUrl="~/Imagenes/back.png"
                                                        ToolTip="Cancelar" Width="24px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <div style="width: 30px; float: left">
                                            <asp:ImageButton ID="ibEditar" runat="server" ImageUrl="~/Imagenes/edit-file.png"
                                                ToolTip="Modificar el nombre del documento" CommandName="Edit" />
                                        </div>
                                        <div style="width: 30px; float: left">
                                            <asp:ImageButton ID="ibEliminar" runat="server" CommandName="Delete" ImageUrl="~/Imagenes/delete-file.png"
                                                OnClientClick="return( window.confirm(&quot;¿Desea eliminar la tarea y todas las consultas relacionadas?&quot;))"
                                                ToolTip="Eliminar la tarea y las consultas relacionadas" OnClick="ImageButton2_Click" />
                                        </div>
                                    </ItemTemplate>
                                    <ItemStyle Width="12.5%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="idPropiedad" SortExpression="idPropiedad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtidPropiedad" runat="server" Text='<%# Bind("idPropiedad") %>'
                                            Enabled="False" Font-Size="12px" Width="90%"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblidPropiedad" runat="server" Text='<%# Bind("idPropiedad") %>' Font-Size="12px"
                                            Width="100%"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="12.5%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="nombrePropiedad" SortExpression="nombrePropiedad">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtnombrePropiedad" runat="server" Text='<%# Bind("nombrePropiedad") %>'
                                            Font-Size="12px" Width="90%"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblnombrePropiedad" runat="server" Text='<%# Bind("nombrePropiedad") %>'
                                            Font-Size="12px" Width="100%"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="12.5%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="valorTexto1" SortExpression="valorTexto1">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtvalorTexto1" runat="server" Text='<%# Bind("valorTexto1") %>'
                                            Font-Size="12px" Width="90%"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblvalorTexto1" runat="server" Text='<%# Bind("valorTexto1") %>' Font-Size="12px"
                                            Width="100%"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="12.5%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="valorTexto2" SortExpression="valorTexto2">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtvalorTexto2" runat="server" Text='<%# Bind("valorTexto2") %>'
                                            Font-Size="12px" Width="90%"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblvalorTexto2" runat="server" Text='<%# Bind("valorTexto2") %>' Font-Size="12px"
                                            Width="100%"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="12.5%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="valorEntero" SortExpression="valorEntero">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtvalorEntero" runat="server" Text='<%# Bind("valorEntero") %>'
                                            Font-Size="12px" Width="90%"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblvalorEntero" runat="server" Text='<%# Bind("valorEntero") %>' Font-Size="12px"
                                            Width="100%"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="12.5%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="valorDecimal" SortExpression="valorDecimal">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtvalorDecimal" runat="server" Text='<%# Bind("valorDecimal") %>'
                                            Font-Size="12px" Width="90%"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblvalorDecimal" runat="server" Text='<%# Bind("valorDecimal") %>'
                                            Font-Size="12px" Width="100%"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="12.5%" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="valorBooleano" SortExpression="valorBooleano">
                                    <EditItemTemplate>
                                        <asp:DropDownList ID="ddlvalorBooleano" runat="server" Font-Size="12px" Width="90%">
                                            <asp:ListItem Value="0">False</asp:ListItem>
                                            <asp:ListItem Value="1">True</asp:ListItem>
                                        </asp:DropDownList>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="lblvalorBooleano" runat="server" Text='<%# Bind("valorBooleano") %>'
                                            Font-Size="12px" Width="100%"></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle Width="12.5%" />
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
    <asp:ObjectDataSource ID="odsPropiedades" runat="server" SelectMethod="GetData" TypeName="GenericTransferIntegration.dsConfiguracionTableAdapters.sp_Propiedades_SelectTableAdapter"
        OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
</asp:Content>
