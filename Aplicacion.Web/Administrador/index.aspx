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
    <h1>Bienvenido Administrador!!</h1>
    <h2>Menu automovil</h2><br />
    <a href="formularios/automovil/ingresarAuto.aspx">Ingresar Automovil</a><br />
    <a href="formularios/automovil/eliminarAuto.aspx">Eliminar Automovil</a><br />
    <a href="formularios/automovil/modificarAuto.aspx">Modificar Automovil</a><br />

    <h2>Menu Vendedor</h2><br />
    <a href="formularios/vendedor/ingresarVendedor.aspx">Contratar vendedor</a><br />
    <a href="formularios/vendedor/eliminarVendedor.aspx">Despedir vendedor</a><br />
    <a href="buscarVendedor">Buscar vendedor</a><br />
    <a href="mostrarVendedor">Lista de vendedores</a><br />
</body>
    <%}
        else
        {
            Response.Redirect("login.aspx");
        }%>
</html>
