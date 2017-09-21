<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="buscarVendedor.aspx.cs" Inherits="Aplicacion.Web.Administrador.formularios.vendedor.buscarVendedor" %>

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
            <asp:Table ID="tabla" runat="server">
                <asp:TableRow>
                    <asp:TableCell>Rut Vendedor</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtRut" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell><asp:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="btnBuscar_Click" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            
            <asp:Table ID="tablaBusqueda" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>Rut</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Nombre</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Apellido</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Direccion</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Fecha Nacimiento</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Genero</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell ID="tcell"></asp:TableCell>
                    <asp:TableCell ID="tcell1"></asp:TableCell>
                    <asp:TableCell ID="tcell2"></asp:TableCell>
                    <asp:TableCell ID="tcell3"></asp:TableCell>
                    <asp:TableCell ID="tcell4"></asp:TableCell>
                    <asp:TableCell ID="tcell5"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
