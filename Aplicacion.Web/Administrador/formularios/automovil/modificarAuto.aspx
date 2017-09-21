<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificarAuto.aspx.cs" Inherits="Aplicacion.Web.Administrador.formularios.automovil.modificarAutoaspx" %>
<%@ Import Namespace="BibliotecaDeClases.Entidades" %>
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
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Modelo</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Marca</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Categoria</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Tipo Combustible</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Accion</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
