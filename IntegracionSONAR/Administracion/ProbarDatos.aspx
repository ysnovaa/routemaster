<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ProbarDatos.aspx.vb" Inherits="GenericTransferIntegration.ProbarDatos" ValidateRequest="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Probar XML</title>
    <link href="Estilos/cascada.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>IdDocumento:</td>
                <td>
                    <asp:TextBox ID="txtIdDocumento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Nombre del Documento:</td>
                <td>
                    <asp:TextBox ID="txtNombreDocumento" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Id Compañía:</td>
                <td>
                    <asp:TextBox ID="txtIdCompañia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Compañía:</td>
                <td>
                    <asp:TextBox ID="txtCompañia" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Usuario:</td>
                <td>
                    <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Clave:</td>
                <td>
                    <asp:TextBox ID="txtClave" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td colspan="2">
        <asp:Button ID="btnProbar" runat="server" Text="Probar XML" />
                </td>
            </tr>

            <tr>
                <td colspan="2">
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
                </td>
            </tr>

        </table>
        <asp:TextBox ID="txtXML" runat="server" Height="600px" TextMode="MultiLine" Width="600px"></asp:TextBox>
    </div>
    </form>
</body>
</html>
