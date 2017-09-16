<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Aplicacion.Web.Administrador.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="login" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Usuario</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                                
                <asp:TableRow>
                    <asp:TableCell>Contraseña</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtContrasena" TextMode="Password" runat="server" ></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell><asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Label ID="lblRespuesta" runat="server" />
        </div>
    </form>
</body>
</html>
