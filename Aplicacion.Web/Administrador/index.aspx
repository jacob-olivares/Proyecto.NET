<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Aplicacion.Web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <%if (Session["admin"] != null)
        {%>
<body>
    <asp:SiteMapPath ID="siteMap1" runat="server"></asp:SiteMapPath>
    <form id="form" runat="server">
        <asp:DropDownList ID="siteMap" runat="server">
            <asp:ListItem Value="0">Ingresar Automovil</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="btnEnviar" runat="server" Text="Ir" OnClick="btnEnviar_Click" />
    </form>
    <h1>Bienvenido Administrador!!</h1>
    <h2>Menu automovil</h2><br />
    <a href="formularios/automovil/ingresarAuto.aspx">Ingresar Automovil</a><br />
    <a href="formularios/automovil/eliminarAuto.aspx">Eliminar Automovil</a><br />
    <a href="modificarAuto">Modificar Automovil</a><br />
    <a href="modificarAuto">Buscar Automovil</a><br />

    <h2>Menu Vendedor</h2><br />
    <a href="contratarVendedor">Contratar vendedor</a><br />
    <a href="despedirVendedor">Despedir vendedor</a><br />
    <a href="buscarVendedor">Buscar vendedor</a><br />
    <a href="mostrarVendedor">Lista de vendedores</a><br />
</body>
    <%}
        else
        {
            Response.Redirect("login.aspx");
        }%>
</html>
