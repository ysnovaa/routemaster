<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="LogPrototipo.aspx.vb" Inherits="GenericTransferIntegration.LogPrototipo" %>

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
                                    &nbsp;LOG DE EJECUCIÓN
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
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;
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
                                                        </td>
                                                        <td style="vertical-align: middle" valign="middle">
                                                            <asp:ImageButton ID="ibFechaFinal" runat="server" ImageUrl="~/Imagenes/calendar.ICO" />
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
                                                <table border="0" cellpadding="0" cellspacing="2" width="1210px">
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
                                                                                            <td style="text-align: center" width="50px" >
                                                                                                Id tarea
                                                                                            </td>
                                                                                            <td style="text-align: center" width="100px" >
                                                                                                Desc tarea
                                                                                            </td>
                                                                                            <td style="text-align: center" width="125px" >
                                                                                                Fecha inicio
                                                                                            </td>
                                                                                            <td style="text-align: center" width="125px" >
                                                                                                Fecha fin
                                                                                            </td>
                                                                                            <td style="text-align: center" width="110px" >
                                                                                                Tiempo ejecución
                                                                                            </td>
                                                                                            <td style="text-align: center" width="100px" >
                                                                                                Reg. con errores
                                                                                            </td>
                                                                                            <td style="text-align: center" width="100px" >
                                                                                                Reg. exitosos
                                                                                            </td>
                                                                                            <td style="text-align: center" width="100px"  >
                                                                                                Reg. totales
                                                                                            </td>
                                                                                            <td style="text-align: center" width="100px"  >
                                                                                                Resultado %
                                                                                            </td>

                                                                                            <td style="text-align: center" width="90px"  >
                                                                                                Datos origen
                                                                                            </td>

                                                                                            <td style="text-align: center" width="90px"  >
                                                                                                Plano
                                                                                            </td>

                                                                                            <td style="text-align: center width="90px" " >
                                                                                               WS Siesa
                                                                                            </td>

                                                                                        </tr>
                                                                                    </table>
                                                                                </td>
                                                                                <td width="12">
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
                                                                        DataSourceID="sqlDetalle" 
                                                                        AllowPaging="True" PageSize="31" ShowHeader="False">
                                                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#224272" Font-Bold="False" ForeColor="White" VerticalAlign="Top" />
                                                                        <Columns>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:ImageButton ID="ImageButton2" runat="server" 
                                                                                        ImageUrl="~/Imagenes/Detalle.gif" />
                                                                                </ItemTemplate>
                                                                            </asp:TemplateField>
                                                                            <asp:BoundField DataField="Id Tarea" HeaderText="Id Tarea" 
                                                                                SortExpression="Id Tarea" >
                                                                            <ItemStyle Width="50px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Desc Tarea" HeaderText="Desc Tarea" 
                                                                                SortExpression="Desc Tarea" >
                                                                            <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Fecha Inicio" HeaderText="Fecha Inicio" 
                                                                                SortExpression="Fecha Inicio">
                                                                            <ItemStyle Width="155px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Fecha Fin" HeaderText="Fecha Fin" 
                                                                                SortExpression="Fecha Fin">
                                                                            <ItemStyle Width="155px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Timpo Ejecucion" HeaderText="Timpo Ejecucion" 
                                                                                ReadOnly="True" SortExpression="Timpo Ejecucion" >
                                                                            <ItemStyle Width="110px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Registros con errores" 
                                                                                HeaderText="Registros con errores" ReadOnly="True" 
                                                                                SortExpression="Registros con errores" >
                                                                            <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Registros exitosos" HeaderText="Registros exitosos" 
                                                                                ReadOnly="True" SortExpression="Registros exitosos" >
                                                                            <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Registros totales" HeaderText="Registros totales" 
                                                                                ReadOnly="True" SortExpression="Registros totales" >
                                                                            <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="Resultado" HeaderText="Resultado" ReadOnly="True" 
                                                                                SortExpression="Resultado" >
                                                                            <ItemStyle Width="100px" />
                                                                            </asp:BoundField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                                        ImageUrl="~/Imagenes/correcto.ico" />
                                                                                </ItemTemplate>
                                                                                <ItemStyle HorizontalAlign="Center" Width="90px" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                                        ImageUrl="~/Imagenes/correcto.ico" />
                                                                                </ItemTemplate>
                                                                                <ItemStyle HorizontalAlign="Center" Width="90px" />
                                                                            </asp:TemplateField>
                                                                            <asp:TemplateField>
                                                                                <ItemTemplate>
                                                                                    <asp:ImageButton ID="ImageButton1" runat="server" 
                                                                                        ImageUrl="~/Imagenes/correcto.ico" />
                                                                                </ItemTemplate>
                                                                                <ItemStyle HorizontalAlign="Center" Width="90px" />
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
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:SqlDataSource ID="sqlDetalle" runat="server" 
                                                    ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>" 
                                                    SelectCommand="sp_LogConsultarPrototipo" SelectCommandType="StoredProcedure">
                                                </asp:SqlDataSource>
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
