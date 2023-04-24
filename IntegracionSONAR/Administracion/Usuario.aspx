<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="Usuario.aspx.vb" Inherits="GenericTransferIntegration.Usuario" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
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
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
            <table style="width: 100%">
                <tr>
                    <td>
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
                            <tr>
                                <td width="9">
                                    <img src="../imagenes/in_contenedor2_left.png" width="12" height="32" />
                                </td>
                                <td align="left" style="background-image: url(../imagenes/in_contenedor2_repeat.png);
                                    background-repeat: repeat-x; color: #FFF;">
                                    &nbsp;Usuarios
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
                                                <table border="0" cellpadding="0" cellspacing="2" width="1000px">
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
                                                                                            <td style="text-align: center" width="10%">
                                                                                                
                                                                                            </td>
                                                                                            <td style="text-align: left" width="20%">
                                                                                                PERFIL</td>
                                                                                            <td style="text-align: left" width="29%">
                                                                                                NOMBRE
                                                                                            </td>
                                                                                            <td style="text-align: left" width="20%">
                                                                                                CLAVE
                                                                                            </td>
                                                                                            <td style="text-align: left" width="20%">
                                                                                                ACTIVO
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
                                                                <div style="height: 295px; overflow: auto; margin: 15px;">
                                                                    <asp:GridView ID="grvResultado" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                                        ForeColor="#333333" GridLines="None" Style="margin-right: 1px"
                                                                        DataSourceID="odsUsuario" Width="100%" ShowHeader="False" 
                                                                        AllowPaging="True" PageSize="31" DataKeyNames="idUsuario">
                                                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#224272" Font-Bold="False" ForeColor="White" VerticalAlign="Top" />
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <table>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" 
                                                                                                    ImageUrl="~/Imagenes/edit-file.png" 
                                                                                                    ToolTip="Modificar" />
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" 
                                                                                                    ImageUrl="~/Imagenes/delete-file.png" 
                                                                                                    OnClientClick="return( window.confirm(&quot;¿Desea eliminar el usuario?&quot;))" 
                                                                                                    ToolTip="Eliminar usuario" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <table>
                                                                                        <tr>
                                                                                            <td>
                                                                                                <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Update" 
                                                                                                    ImageUrl="~/Imagenes/save.png" ToolTip="Guardar" Width="24px" />
                                                                                            </td>
                                                                                            <td>
                                                                                                <asp:ImageButton ID="ImageButton4" runat="server" CommandName="Cancel" 
                                                                                                    ImageUrl="~/Imagenes/back.png" ToolTip="Cancelar" Width="24px" />
                                                                                            </td>
                                                                                        </tr>
                                                                                    </table>
                                                                                </EditItemTemplate>
                                                                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="idPerfil" SortExpression="idPerfil">
                                                                                <ItemTemplate>
                                                                                    <asp:DropDownList ID="ddlPerfil" runat="server" Enabled="False" 
                                                                                        SelectedValue='<%# Bind("idPerfil") %>'>
                                                                                        <asp:ListItem Value="1">Administrador</asp:ListItem>
                                                                                        <asp:ListItem Value="2">Consulta</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:DropDownList ID="ddlPerfil" runat="server" 
                                                                                        SelectedValue='<%# Bind("idPerfil") %>'>
                                                                                        <asp:ListItem Value="1">Administrador</asp:ListItem>
                                                                                        <asp:ListItem Value="2">Consulta</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </EditItemTemplate>
                                                                                <ItemStyle Width="20%" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre">
                                                                            <ItemStyle Width="29%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Clave" HeaderText="Clave" 
                                                                                SortExpression="Clave" >
                                                                            <ItemStyle Width="20%" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="BitActivo" SortExpression="BitActivo">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("BitActivo") %>'></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:DropDownList ID="DropDownList1" runat="server" 
                                                                                        SelectedValue='<%# Bind("BitActivo") %>'>
                                                                                        <asp:ListItem Value="True">True</asp:ListItem>
                                                                                        <asp:ListItem Value="False">False</asp:ListItem>
                                                                                    </asp:DropDownList>
                                                                                </EditItemTemplate>
                                                                                <ItemStyle Width="20%" />
                                                                            </asp:TemplateField>
                                                                        </Columns>
                                                                        <EditRowStyle BackColor="#999999" />
                                                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                    </asp:GridView>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                    <td align="center">
                                                    <asp:LinkButton ID="lbNuevo" runat="server" CssClass="botonAzul" Height="22px"
                                                        Width="90px">Nuevo</asp:LinkButton>
                                                    </td>
                                                    </tr>
                                                </table>
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:FormView ID="fvDetalle" runat="server" DataKeyNames="idUsuario" 
                DataSourceID="odsUsuario" DefaultMode="Insert">
                <EditItemTemplate>
                    idUsuario:
                    <asp:Label ID="idUsuarioLabel1" runat="server" 
                        Text='<%# Eval("idUsuario") %>' />
                    <br />
                    idCompania:
                    <asp:TextBox ID="idCompaniaTextBox" runat="server" 
                        Text='<%# Bind("idCompania") %>' />
                    <br />
                    idPerfil:
                    <asp:TextBox ID="idPerfilTextBox" runat="server" 
                        Text='<%# Bind("idPerfil") %>' />
                    <br />
                    Nombre:
                    <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                    <br />
                    Clave:
                    <asp:TextBox ID="ClaveTextBox" runat="server" Text='<%# Bind("Clave") %>' />
                    <br />
                    BitActivo:
                    <asp:CheckBox ID="BitActivoCheckBox" runat="server" 
                        Checked='<%# Bind("BitActivo") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Actualizar" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table class="contenedor">
                        <tr>
                            <td>
                                Perfil:
                                <br />
                            </td>
                            <td>
                                <asp:DropDownList ID="ddlPerfil" runat="server" 
                                    SelectedValue='<%# Bind("idPerfil") %>'>
                                    <asp:ListItem Value="1">Administrador</asp:ListItem>
                                    <asp:ListItem Value="2">Consulta</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Nombre:
                                <br />
                            </td>
                            <td>
                                <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Clave:
                                <br />
                            </td>
                            <td>
                                <asp:TextBox ID="ClaveTextBox" runat="server" Text='<%# Bind("Clave") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Activo:
                                <br />
                            </td>
                            <td>
                                <asp:CheckBox ID="BitActivoCheckBox" runat="server" 
                                    Checked='<%# Bind("BitActivo") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" style="text-align: center">
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                    CommandName="Insert" Text="Insertar" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                    CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                            </td>
                        </tr>
                    </table>
&nbsp;
                </InsertItemTemplate>
                <ItemTemplate>
                    idUsuario:
                    <asp:Label ID="idUsuarioLabel" runat="server" Text='<%# Eval("idUsuario") %>' />
                    <br />
                    idCompania:
                    <asp:Label ID="idCompaniaLabel" runat="server" 
                        Text='<%# Bind("idCompania") %>' />
                    <br />
                    idPerfil:
                    <asp:Label ID="idPerfilLabel" runat="server" Text='<%# Bind("idPerfil") %>' />
                    <br />
                    Nombre:
                    <asp:Label ID="NombreLabel" runat="server" Text='<%# Bind("Nombre") %>' />
                    <br />
                    Clave:
                    <asp:Label ID="ClaveLabel" runat="server" Text='<%# Bind("Clave") %>' />
                    <br />
                    BitActivo:
                    <asp:CheckBox ID="BitActivoCheckBox" runat="server" 
                        Checked='<%# Bind("BitActivo") %>' Enabled="false" />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Editar" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Eliminar" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="Nuevo" />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:LinkButton ID="lbRegresar" runat="server" CssClass="botonAzul" 
                Height="22px" Width="90px">Regresar</asp:LinkButton>
        </asp:View>
    </asp:MultiView>
    <asp:ObjectDataSource ID="odsUsuario" runat="server" DeleteMethod="Delete" 
        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetData" 
        TypeName="GenericTransferIntegration.dsSeguridadTableAdapters.sp_UsuarioSeleccionarTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="original_idUsuario" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="idCompania" Type="Int32" DefaultValue="1" />
            <asp:Parameter Name="idPerfil" Type="Int32" DefaultValue="" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Clave" Type="String" />
            <asp:Parameter Name="BitActivo" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="original_idUsuario" Type="Int32" />
            <asp:Parameter Name="idCompania" Type="Int32" DefaultValue="1" />
            <asp:Parameter Name="idPerfil" Type="Int32" />
            <asp:Parameter Name="Nombre" Type="String" />
            <asp:Parameter Name="Clave" Type="String" />
            <asp:Parameter Name="BitActivo" Type="Boolean" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
