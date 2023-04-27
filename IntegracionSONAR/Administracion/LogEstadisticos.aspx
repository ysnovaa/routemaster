<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="LogEstadisticos.aspx.vb" Inherits="GenericTransferIntegration.LogEstadisticos" %>

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
                                    &nbsp;LOG ESTADÍSTICOS</td>
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
                                                            &nbsp;Id Tarea:</td>
                                                        <td style="vertical-align: middle" valign="middle">
                                                            <asp:DropDownList ID="ddlIdTarea" runat="server" AutoPostBack="True" 
                                                                DataSourceID="sqlTarea" DataTextField="Nombre" DataValueField="idTarea" 
                                                                AppendDataBoundItems="True">
                                                                <asp:ListItem Value="-1">Todas</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="sqlTarea" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>" 
                                                                SelectCommand="SELECT [idTarea], [Nombre] FROM [Tarea]"></asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="columnaGris">
                                                            Id Envío:</td>
                                                        <td style="vertical-align: middle" valign="middle">
                                                            <asp:DropDownList ID="ddlEnvio" runat="server" 
                                                                AutoPostBack="True" DataSourceID="SqlEnvio" DataTextField="Column2" 
                                                                DataValueField="Column1">
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlEnvio" runat="server" 
                                                                ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>" SelectCommand="select '-1', 'Todos'
union all
select idLogPrincipal, Expr1
from dbo.View_Log
where idTarea = @idTarea or @idTarea = -1">
                                                                <SelectParameters>
                                                                    <asp:ControlParameter ControlID="ddlIdTarea" Name="idTarea" 
                                                                        PropertyName="SelectedValue" />
                                                                </SelectParameters>
                                                            </asp:SqlDataSource>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" style="text-align: center">
                                                            <br />
                                                            <asp:LinkButton ID="lbConsultar" runat="server" CssClass="botonAzul" Height="22px"
                                                                Width="90px">Consultar</asp:LinkButton>
                                                            &nbsp;<asp:Timer ID="Timer1" runat="server" Interval="15000">
                                                            </asp:Timer>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <table border="0" cellpadding="0" cellspacing="2" width="1250px">
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
                                                                                            <td style="text-align: left" width="5%">
                                                                                                id Envío
                                                                                            </td>
                                                                                            <td style="text-align: left" width="15%">
                                                                                                Fecha Inicio
                                                                                            </td>
                                                                                            <td style="text-align: left" width="15%">
                                                                                                Fecha Fin
                                                                                            </td>
                                                                                            <td style="text-align: left" width="25%">
                                                                                                Carga de plano origen
                                                                                            </td>
                                                                                            <td style="text-align: left" width="10%">
                                                                                                Tiempo/minutos
                                                                                            </td>
                                                                                            <td style="text-align: left" width="10%">
                                                                                                Ter / Doc
                                                                                            </td>
                                                                                            <td style="text-align: left" width="10%">
                                                                                                Errores
                                                                                            </td>
                                                                                            <td style="text-align: left" width="10%">
                                                                                                Registros
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
                                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                                        <ContentTemplate>
                                                                            <asp:GridView ID="grvResultado" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                                                ForeColor="#333333" GridLines="None" Style="margin-right: 1px" DataSourceID="odsLog"
                                                                                Width="98%" AllowPaging="True" PageSize="31" DataKeyNames="idEnvio" 
                                                                                ShowHeader="False">
                                                                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                                <HeaderStyle BackColor="#224272" Font-Bold="False" ForeColor="White" VerticalAlign="Top" />
                                                                                <Columns>
                                                                                    <asp:BoundField DataField="idEnvio" HeaderText="idEnvio" SortExpression="idEnvio"
                                                                                        InsertVisible="False" ReadOnly="True">
                                                                                        <ItemStyle HorizontalAlign="Center" Width="5%" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio">
                                                                                        <ItemStyle HorizontalAlign="Left" Width="15%" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="FechaFin" HeaderText="FechaFin" SortExpression="FechaFin">
                                                                                        <ItemStyle HorizontalAlign="Left" Width="15%" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="CargaDePlano" HeaderText="CargaDePlano" 
                                                                                        SortExpression="CargaDePlano">
                                                                                    <ItemStyle Width="25%" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Tiempo Minutos" HeaderText="Tiempo Minutos" SortExpression="Tiempo Minutos"
                                                                                        ReadOnly="True">
                                                                                        <ItemStyle HorizontalAlign="Center" Width="10%" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Exitosos" HeaderText="Exitosos" SortExpression="Exitosos"
                                                                                        ReadOnly="True">
                                                                                        <ItemStyle HorizontalAlign="Center" Width="10%" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Errores" HeaderText="Errores" SortExpression="Errores"
                                                                                        ReadOnly="True">
                                                                                        <ItemStyle HorizontalAlign="Center" Width="10%" />
                                                                                    </asp:BoundField>
                                                                                    <asp:BoundField DataField="Registros" HeaderText="Registros" SortExpression="Registros"
                                                                                        ReadOnly="True">
                                                                                        <ItemStyle HorizontalAlign="Center" Width="10%" />
                                                                                    </asp:BoundField>
                                                                                </Columns>
                                                                                <EditRowStyle BackColor="#999999" />
                                                                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                            </asp:GridView>
                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:ObjectDataSource ID="odsLog" runat="server" OldValuesParameterFormatString="original_{0}"
                                                    SelectMethod="GetData" 
                                                    TypeName="GenericTransferIntegration.dsTareaTableAdapters.sp_LogEstadisticosConsultarTableAdapter">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddlEnvio" Name="idLogPrincipal" PropertyName="SelectedValue"
                                                            Type="Int32" />
                                                        <asp:ControlParameter ControlID="ddlIdTarea" Name="idTarea" 
                                                            PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:ObjectDataSource>
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
