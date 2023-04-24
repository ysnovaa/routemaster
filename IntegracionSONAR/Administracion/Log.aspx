<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="Log.aspx.vb" Inherits="GenericTransferIntegration.Log" %>

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
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
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
                                    &nbsp;LOG DE EJECUCIÓN - Máximo 1000 resultados</td>
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
                                            <td align="center" style="text-align: left">
                                                <table cellpadding="0" cellspacing="5">
                                                    <tr>
                                                        <td class="columnaGris">
                                                            Id de la tarea:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtIdTarea" runat="server" Width="50px"></asp:TextBox>
                                                        </td>
                                                        <td>
                                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtIdTarea"
                                                                ErrorMessage="* Valor entero" MaximumValue="10000" MinimumValue="0" Type="Integer"
                                                                Display="Dynamic"></asp:RangeValidator>
                                                        </td>
                                                        <td align="left" class="columnaGris">
                                                            Nombre de la Tarea:</td>
                                                        <td colspan="2">
                                                            &nbsp;<asp:DropDownList ID="ddlIdTarea" runat="server" AppendDataBoundItems="True" DataSourceID="sqlTarea" DataTextField="Nombre" DataValueField="idTarea">
                                                                <asp:ListItem Value="-1">Todas</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="columnaGris">
                                                            Fecha Inicial:
                                                        </td>
                                                        <td style="vertical-align: middle" valign="middle">
                                                            <asp:TextBox ID="txtFechaInicial" runat="server" Width="60px"></asp:TextBox>
                                                        </td>
                                                        <td style="vertical-align: middle" valign="middle">
                                                            <asp:ImageButton ID="ibFechaInicial" runat="server" ImageUrl="~/Imagenes/calendar.ICO" />
                                                            <asp:CalendarExtender ID="ceFechaInicial" runat="server" PopupButtonID="ibFechaInicial"
                                                                TargetControlID="txtFechaInicial" Format="dd/MM/yyyy">
                                                            </asp:CalendarExtender>

                                                        </td>
                                                        <td style="vertical-align: middle" valign="middle" class="columnaGris">
                                                            Fecha Final:
                                                        </td>
                                                        <td style="vertical-align: middle" valign="middle">
                                                            <asp:TextBox ID="txtFechaFinal" runat="server" Width="60px"></asp:TextBox>
                                                            <asp:ImageButton ID="ibFechaFinal" runat="server" ImageUrl="~/Imagenes/calendar.ICO" />
                                                        </td>
                                                        <td style="vertical-align: middle" valign="middle" align="left">
                                                            <asp:CalendarExtender ID="ceFechaFinal" runat="server" PopupButtonID="ibFechaFinal"
                                                                TargetControlID="txtFechaFinal" Format="dd/MM/yyyy">
                                                            </asp:CalendarExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="6" style="text-align: center">
                                                            <asp:LinkButton ID="lbConsultar" runat="server" CssClass="botonAzul" Height="22px"
                                                                Width="90px">Consultar</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="2" width="1600px">
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
                                                                                            <td style="text-align: center" width="34%">
                                                                                                ID TAREA
                                                                                            </td>
                                                                                            <td style="text-align: center" width="8%">
                                                                                                RESULTADO
                                                                                            </td>
                                                                                            <td style="text-align: center" width="8%">
                                                                                                VER DETALLE
                                                                                            </td>
                                                                                            <td style="text-align: center" width="10%">
                                                                                                FECHA INICIO
                                                                                            </td>
                                                                                            <td style="text-align: center" width="10%">
                                                                                                FECHA FIN
                                                                                            </td>
                                                                                            <td style="text-align: center" width="10%">
                                                                                                DATOS ORIGEN
                                                                                            </td>
                                                                                            <td style="text-align: center" width="10%">
                                                                                                PLANO
                                                                                            </td>
                                                                                            <td style="text-align: center" width="10%">
                                                                                                WEB SERVICE
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
                                                                        ForeColor="#333333" GridLines="None" Style="margin-right: 1px" DataKeyNames="Id"
                                                                        DataSourceID="odsLog" Width="100%" ShowHeader="False" AllowPaging="True" PageSize="31">
                                                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#224272" Font-Bold="False" ForeColor="White" VerticalAlign="Top" />
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Id Tarea" HeaderText="Id Tarea" SortExpression="Id Tarea">
                                                                                <ItemStyle HorizontalAlign="Left" Width="34%" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField HeaderText="Resultado" SortExpression="Ejecución completa">
                                                                                <ItemTemplate>
                                                                                    <asp:Label ID="lblResultado" runat="server" Text='<%# Bind("[Ejecución completa]") %>'
                                                                                        Visible="False"></asp:Label>
                                                                                    <asp:Image ID="iResultado" runat="server" />
                                                                                    <asp:Label ID="lblMensajeError" runat="server" 
                                                                                        Text='<%# Bind("[Mensaje de error]") %>' Visible="False"></asp:Label>
                                                                                </ItemTemplate>
                                                                                <EditItemTemplate>
                                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("[Ejecución completa]") %>'></asp:Label>
                                                                                </EditItemTemplate>
                                                                                <ItemStyle HorizontalAlign="Center" Width="8%" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField HeaderText="Ver detalle">
                                                                                <ItemTemplate>
                                                                                    <asp:ImageButton ID="ibDetalle" runat="server" CommandName="Select" ImageUrl="~/Imagenes/Detalle.gif" />
                                                                                </ItemTemplate>
                                                                                <ItemStyle HorizontalAlign="Center" Width="8%" />
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="Fecha Inicio" HeaderText="Fecha Inicio" SortExpression="Fecha Inicio">
                                                                                <ItemStyle Width="10%" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha Fin" SortExpression="Fecha Fin">
                                                                                <ItemStyle Width="10%" HorizontalAlign="Center" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Recuperacion de datos origen" HeaderText="Recuperación de datos origen"
                                                                                ReadOnly="True" SortExpression="Recuperacion de datos origen">
                                                                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Generacion de plano" HeaderText="Generación de plano"
                                                                                ReadOnly="True" SortExpression="Generacion de plano">
                                                                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Consumir el Web Service de Siesa" HeaderText="Consumir el Web Service de Siesa"
                                                                                ReadOnly="True" SortExpression="Consumir el Web Service de Siesa">
                                                                                <ItemStyle HorizontalAlign="Center" Width="10%" />
                                                                            </asp:BoundField>
                                                                        </Columns>
                                                                        <EditRowStyle BackColor="#999999" />
                                                                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                    </asp:GridView>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                    ForeColor="#333333" GridLines="None" Style="margin-right: 1px" 
                                                     DataKeyNames="Id"
                                                    DataSourceID="odsLogDetalle">
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" VerticalAlign="Top" />
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <HeaderStyle BackColor="#224272" Font-Bold="False" ForeColor="White" VerticalAlign="Top" />
                                                    <Columns>
                                                        <asp:BoundField DataField="Id" HeaderText="Id Log" InsertVisible="False" ReadOnly="True"
                                                            SortExpression="Id">
                                                            <ItemStyle HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                        <asp:BoundField DataField="Id Tarea" HeaderText="Id Tarea" SortExpression="Id Tarea">
                                                            <ItemStyle HorizontalAlign="Center" />
                                                        </asp:BoundField>
                                                        <asp:TemplateField HeaderText="Mensaje de error" SortExpression="Mensaje de error">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("[Mensaje de error]") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:TextBox ID="txtMensajeErrorDet" runat="server" Height="60px" Text='<%# Bind("[Mensaje de error]") %>' TextMode="MultiLine" Width="400px"></asp:TextBox>
                                                            </ItemTemplate>
                                                            <ItemStyle Width="300px" />
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Fecha Inicio" HeaderText="Fecha Inicio" SortExpression="Fecha Inicio" />
                                                        <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha Fin" SortExpression="Fecha Fin" />
                                                        <asp:BoundField DataField="Fecha inicio de recuperacion de datos Origen" HeaderText="Fecha inicio de recuperacion de datos Origen"
                                                            SortExpression="Fecha inicio de recuperacion de datos Origen" />
                                                        <asp:BoundField DataField="Fecha fin de recuperacion de datos Origen" HeaderText="Fecha fin de recuperacion de datos Origen"
                                                            SortExpression="Fecha fin de recuperacion de datos Origen" />
                                                        <asp:BoundField DataField="Recuperacion de datos origen" HeaderText="Recuperacion de datos origen"
                                                            ReadOnly="True" SortExpression="Recuperacion de datos origen" />
                                                        <asp:BoundField DataField="Fecha inicio de generacion de plano" HeaderText="Fecha inicio de generacion de plano"
                                                            SortExpression="Fecha inicio de generacion de plano" />
                                                        <asp:BoundField DataField="Fecha fin de generacion de plano" HeaderText="Fecha fin de generacion de plano"
                                                            SortExpression="Fecha fin de generacion de plano" />
                                                        <asp:BoundField DataField="Generacion de plano" HeaderText="Generacion de plano"
                                                            ReadOnly="True" SortExpression="Generacion de plano" />
                                                        <asp:BoundField DataField="Fecha inicio Web Service" HeaderText="Fecha inicio Web Service"
                                                            SortExpression="Fecha inicio Web Service" />
                                                        <asp:BoundField DataField="Fecha fin Web Service" HeaderText="Fecha fin Web Service"
                                                            SortExpression="Fecha fin Web Service" />
                                                        <asp:BoundField DataField="Consumir el Web Service de Siesa" HeaderText="Consumir el Web Service de Siesa"
                                                            ReadOnly="True" SortExpression="Consumir el Web Service de Siesa" />
                                                        <asp:BoundField DataField="Ejecución completa" HeaderText="Ejecución completa" ReadOnly="True"
                                                            SortExpression="Ejecución completa" />
                                                        <asp:BoundField DataField="idDocumento" HeaderText="idDocumento" SortExpression="idDocumento" />
                                                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                                        <asp:BoundField DataField="CadenaConexion" HeaderText="CadenaConexion" SortExpression="CadenaConexion" />
                                                        <asp:BoundField DataField="RutaGeneracionPlano" HeaderText="RutaGeneracionPlano"
                                                            SortExpression="RutaGeneracionPlano" />
                                                        <asp:CheckBoxField DataField="InvocarWebService" HeaderText="InvocarWebService" SortExpression="InvocarWebService" />
                                                        <asp:CheckBoxField DataField="EnviarNotificaciones" HeaderText="EnviarNotificaciones"
                                                            SortExpression="EnviarNotificaciones" />
                                                        <asp:BoundField DataField="Destinatarios" HeaderText="Destinatarios" SortExpression="Destinatarios" />
                                                        <asp:BoundField DataField="NombreConexionWsSiesa" HeaderText="NombreConexionWsSiesa"
                                                            SortExpression="NombreConexionWsSiesa" />
                                                        <asp:BoundField DataField="CiaWsSiesa" HeaderText="CiaWsSiesa" SortExpression="CiaWsSiesa" />
                                                        <asp:BoundField DataField="UsuarioWsSiesa" HeaderText="UsuarioWsSiesa" SortExpression="UsuarioWsSiesa" />
                                                        <asp:BoundField DataField="FechaCreacion" HeaderText="FechaCreacion" SortExpression="FechaCreacion" />
                                                    </Columns>
                                                    <EditRowStyle BackColor="#999999" />
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                </asp:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:ObjectDataSource ID="odsLog" runat="server" OldValuesParameterFormatString="original_{0}"
                                                    SelectMethod="GetData" 
                                                    TypeName="GenericTransferIntegration.dsTareaTableAdapters.sp_LogConsultarTableAdapter">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="txtIdTarea" Name="IdTarea" PropertyName="Text" Type="Int32" />
                                                        <asp:ControlParameter ControlID="txtFechaInicial" Name="FechaInicioInicial" PropertyName="Text"
                                                            Type="String" />
                                                        <asp:ControlParameter ControlID="txtFechaFinal" Name="FechaInicioFinal" PropertyName="Text"
                                                            Type="String" />
                                                        <asp:Parameter Name="idLog" Type="Int64" />
                                                        <asp:ControlParameter ControlID="ddlIdTarea" Name="IdTarea2" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:ObjectDataSource>
                                                <asp:ObjectDataSource ID="odsLogDetalle" runat="server" OldValuesParameterFormatString="original_{0}"
                                                    SelectMethod="GetData" 
                                                    TypeName="GenericTransferIntegration.dsTareaTableAdapters.sp_LogConsultarTableAdapter">
                                                    <SelectParameters>
                                                        <asp:Parameter DefaultValue="" Name="IdTarea" Type="Int32" />
                                                        <asp:Parameter Name="FechaInicioInicial" Type="String" />
                                                        <asp:Parameter Name="FechaInicioFinal" Type="String" />
                                                        <asp:ControlParameter ControlID="grvResultado" Name="idLog" PropertyName="SelectedValue"
                                                            Type="Int64" DefaultValue="-1" />
                                                        <asp:Parameter Name="IdTarea2" Type="Int32" DefaultValue="-1" />
                                                    </SelectParameters>
                                                </asp:ObjectDataSource>
                                                <asp:SqlDataSource ID="sqlTarea" runat="server" ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>" SelectCommand="SELECT [idTarea], convert(varchar(10), [idTarea]) + '-' +  [Nombre]  as Nombre  FROM [Tarea] order by Tarea.idTarea"></asp:SqlDataSource>
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
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
