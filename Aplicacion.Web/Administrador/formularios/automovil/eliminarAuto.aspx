<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eliminarAuto.aspx.cs" Inherits="Aplicacion.Web.Administrador.formularios.automovil.eliminarAuto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <%if (Session["admin"]!=null)
        { %>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tabla" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Modelo</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Marca</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Categoria</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Tipo Combustible</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell>ID a Eliminar</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtId" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:Button ID="btn_Enviar" Text="Eliminar" runat="server" OnClick="btn_Enviar_Click"/></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
    <%}
        else
        {
            Response.Redirect("../../../login.aspx");
        }%>
</html>
