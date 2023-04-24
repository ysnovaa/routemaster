<%@ Page Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterPage.master" CodeBehind="LogErrores.aspx.vb" Inherits="GenericTransferIntegration.LogErrores" %>

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
                            &nbsp;LOG ERRORES
                            SIESA - Máximo 1000 resultados
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
                                                    Id de la Tarea:
                                                </td>
                                                <td style="vertical-align: middle" valign="middle">
                                                            <asp:TextBox ID="txtIdTarea" runat="server" Width="50px"></asp:TextBox>
                                                </td>
                                                <td style="vertical-align: middle" valign="middle">
                                                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtIdTarea"
                                                                ErrorMessage="* Valor entero" MaximumValue="10000" MinimumValue="0" Type="Integer"
                                                                Display="Dynamic"></asp:RangeValidator>
                                                </td>
                                                <td style="vertical-align: middle" valign="middle" class="columnaGris">
                                                    Nombre de la Tarea: </td>
                                                <td style="vertical-align: middle" valign="middle">
                                                    <asp:DropDownList ID="ddlIdTarea" runat="server" AutoPostBack="True" DataSourceID="sqlTarea"
                                                        DataTextField="Nombre" DataValueField="idTarea" AppendDataBoundItems="True">
                                                        <asp:ListItem Value="-1">Todas</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="vertical-align: middle" valign="middle">
                                                    <asp:CalendarExtender ID="ceFechaFinal" runat="server" PopupButtonID="ibFecha" TargetControlID="txtFecha"
                                                        Format="dd/MM/yyyy">
                                                    </asp:CalendarExtender>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="columnaGris">
                                                    &nbsp;Fecha:</td>
                                                <td style="vertical-align: middle" valign="middle">
                                                    <asp:TextBox ID="txtFecha" runat="server" Width="60px"></asp:TextBox>
                                                </td>
                                                <td style="vertical-align: middle" valign="middle">
                                                    <asp:ImageButton ID="ibFecha" runat="server" ImageUrl="~/Imagenes/calendar.ICO" Height="16px" />
                                                    &nbsp;
                                                </td>
                                                <td style="vertical-align: middle" valign="middle" class="columnaGris">
                                                    &nbsp;
                                                    Id Envío</td>
                                                <td style="vertical-align: middle" valign="middle">
                                                    <asp:DropDownList ID="ddlEnvio" runat="server" DataSourceID="SqlEnvio" DataTextField="Column2"
                                                        DataValueField="Column1" AutoPostBack="True">
                                                    </asp:DropDownList>
                                                </td>
                                                <td style="vertical-align: middle" valign="middle">
                                                    &nbsp;
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6">
                                                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="6" style="text-align: center; margin-left: 40px;">
                                                    <br />
                                                    <asp:LinkButton ID="lbConsultar" runat="server" CssClass="botonAzul" Height="22px"
                                                        Width="90px">Consultar</asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="lbExportar" runat="server" CssClass="botonAzul" Height="22px"
                                                        Width="90px">Exportar</asp:LinkButton>
                                                    &nbsp;<asp:LinkButton ID="lbGenerarPlano" runat="server" CssClass="botonAzul" Height="22px"
                                                        Width="90px">Plano</asp:LinkButton>
                                                    <br />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table border="0" cellpadding="0" cellspacing="2" width="1450px">
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
                                                                                    <td style="text-align: left" width="30%">
                                                                                        id Tarea</td>
                                                                                    <td style="text-align: left" width="5%">
                                                                                        id Envío
                                                                                    </td>
                                                                                    <td style="text-align: left" width="7%">
                                                                                        Fecha
                                                                                    </td>
                                                                                    <td style="text-align: left" width="8%">
                                                                                        f_nro_linea
                                                                                    </td>
                                                                                    <td style="text-align: left" width="8%">
                                                                                        f_tipo_reg
                                                                                    </td>
                                                                                    <td style="text-align: left" width="8%">
                                                                                        f_subtupo_reg
                                                                                    </td>
                                                                                    <td style="text-align: left" width="8%">
                                                                                        f_version
                                                                                    </td>
                                                                                    <td style="text-align: left" width="8%">
                                                                                        f_nivel
                                                                                    </td>
                                                                                    <td style="text-align: left" width="8%">
                                                                                        f_valor
                                                                                    </td>
                                                                                    <td style="text-align: left" width="10%">
                                                                                        f_detalle
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
                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                                <ContentTemplate>
                                                                    <asp:GridView ID="grvResultado" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                                                        ForeColor="#333333" GridLines="None" Style="margin-right: 1px" DataSourceID="odsLog"
                                                                        Width="98%" AllowPaging="True" PageSize="31" ShowHeader="False">
                                                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                                        <HeaderStyle BackColor="#224272" Font-Bold="False" ForeColor="White" VerticalAlign="Top" />
                                                                        <Columns>
                                                                            <asp:BoundField DataField="Id Tarea" HeaderText="Id Tarea" SortExpression="Id Tarea" 
                                                                                 InsertVisible="False" ReadOnly="True">
                                                                                <ItemStyle HorizontalAlign="Left" Width="30%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="idLogPrincipal" HeaderText="idLogPrincipal" SortExpression="idLogPrincipal"
                                                                                InsertVisible="False" ReadOnly="True">
                                                                                <ItemStyle HorizontalAlign="Left" Width="5%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="FechaInicio" HeaderText="FechaInicio" SortExpression="FechaInicio">
                                                                                <ItemStyle HorizontalAlign="Left" Width="7%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="f_nro_linea" HeaderText="f_nro_linea" SortExpression="f_nro_linea">
                                                                                <ItemStyle HorizontalAlign="Left" Width="8%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="f_tipo_reg" HeaderText="f_tipo_reg" SortExpression="f_tipo_reg">
                                                                                <ItemStyle HorizontalAlign="Left" Width="8%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="f_subtipo_reg" HeaderText="f_subtipo_reg" SortExpression="f_subtipo_reg">
                                                                                <ItemStyle HorizontalAlign="Left" Width="8%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="f_version" HeaderText="f_version" SortExpression="f_version">
                                                                                <ItemStyle HorizontalAlign="Left" Width="8%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="f_nivel" HeaderText="f_nivel" SortExpression="f_nivel">
                                                                                <ItemStyle HorizontalAlign="Right" Width="8%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="f_valor" HeaderText="f_valor" SortExpression="f_valor">
                                                                                <ItemStyle HorizontalAlign="Right" Width="8%" />
                                                                            </asp:BoundField>
                                                                            <asp:BoundField DataField="f_detalle" HeaderText="f_detalle" SortExpression="f_detalle">
                                                                                <ItemStyle HorizontalAlign="Left" Width="10%" />
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
                                            TypeName="GenericTransferIntegration.dsTareaTableAdapters.sp_LogErroresConsultarTableAdapter">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlIdTarea" Name="IdTarea" PropertyName="SelectedValue"
                                                    Type="Int32" />
                                                <asp:ControlParameter ControlID="txtFecha" Name="Fecha" PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="ddlEnvio" Name="idLogPrincipal" PropertyName="SelectedValue"
                                                    Type="Int32" />
                                                <asp:ControlParameter ControlID="txtIdTarea" Name="idTarea2" PropertyName="Text" Type="Int32" />
                                            </SelectParameters>
                                        </asp:ObjectDataSource>
                                        <asp:SqlDataSource ID="sqlExcel" runat="server" ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>"
                                            SelectCommand="sp_LogErroresConsultar" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="ddlIdTarea" Name="idTarea" PropertyName="SelectedValue"
                                                    Type="Int32" />
                                                <asp:ControlParameter ControlID="txtFecha" ConvertEmptyStringToNull="False" Name="Fecha"
                                                    PropertyName="Text" Type="String" />
                                                <asp:ControlParameter ControlID="ddlEnvio" Name="idLogPrincipal" PropertyName="SelectedValue"
                                                    Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                        <asp:SqlDataSource ID="CO" runat="server" ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>"
                                            SelectCommand="select f285_id from UnoEE.[dbo].[t285_co_centro_op]"></asp:SqlDataSource>
                                        <asp:SqlDataSource ID="Almacenamiento" runat="server" ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>"
                                            SelectCommand="insert into [DB_Intermedia_Siesa].dbo.[CuentasCO]([Cuenta], [CO])
values (@Cuenta,@CO)">
                                            <SelectParameters>
                                                <asp:Parameter Name="Cuenta" />
                                                <asp:Parameter Name="CO" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="sqlTarea" runat="server" ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>"
                                                        SelectCommand="SELECT [idTarea], convert(varchar(10), [idTarea]) + '-' +  [Nombre]  as Nombre  FROM [Tarea] order by Tarea.idTarea"></asp:SqlDataSource>
                                                    <asp:SqlDataSource ID="SqlEnvio" runat="server" ConnectionString="<%$ ConnectionStrings:dbIntercomunicacionConnectionString %>"
                                                        SelectCommand="select '-1', 'Todos'
union all
select idLogPrincipal, Expr1
from dbo.View_Log
where idTarea = @idTarea or @idTarea = -1">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="ddlIdTarea" Name="idTarea" PropertyName="SelectedValue" />
                                                        </SelectParameters>
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
</asp:Content>
