<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="ContenedorMensajes.ascx.vb" Inherits="GenericTransferIntegration.ContenedorMensajes" %>
<link href="../Estilos/ValidationMessages.css" rel="stylesheet" type="text/css" />

<div class="info" runat ="server" id="divInfo">
     <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
</div>
<div class="error" runat ="server" id="divError">
     <asp:Label ID="lblMensaje2" runat="server" Text=""></asp:Label>
</div>

<div class="success" runat ="server" id="divSucces">
      <asp:Label ID="lblMensaje3" runat="server" Text=""></asp:Label>
</div>

