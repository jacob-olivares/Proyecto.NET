<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listaVendedores.aspx.cs" Inherits="Aplicacion.Web.Administrador.formularios.vendedor.listaVendedores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <asp:SiteMapPath ID="siteMap1" runat="server"></asp:SiteMapPath>
    <form id="form1" runat="server">
        <div>
            <asp:Table runat="server" ID="tabla">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Rut</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Nombre</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Apellido</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Direccion</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Fecha de nacimiento</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Genero</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
