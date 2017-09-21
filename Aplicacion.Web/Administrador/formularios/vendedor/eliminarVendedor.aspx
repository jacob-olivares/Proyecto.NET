<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="eliminarVendedor.aspx.cs" Inherits="Aplicacion.Web.Administrador.formularios.vendedor.eliminarVendedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

    <% if (Session["admin"] != null)
        { %>
<body>
    <asp:SiteMapPath ID="siteMap1" runat="server"></asp:SiteMapPath>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tabla" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Rut</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Nombre</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Apellido</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Direccion</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Genero</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Fecha de Nacimiento</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Accion</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </form>
</body>
    <% }
        else
        {
            Response.Redirect("../../../login.aspx");
        }
        %>
</html>
