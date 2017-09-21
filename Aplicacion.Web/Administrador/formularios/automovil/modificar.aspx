<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificar.aspx.cs" Inherits="Aplicacion.Web.Administrador.formularios.automovil.modificar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <%if (Session["admin"] != null)
        { %>
<body>
    <asp:SiteMapPath ID="siteMap1" runat="server"></asp:SiteMapPath>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tabla" runat="server">
                <asp:TableRow ID="trId">
                    <asp:TableCell>Id: </asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtId" runat="server" ReadOnly="true"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trMarca">
                    <asp:TableCell>Marca</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtMarca" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trModelo">
                    <asp:TableCell>Modelo</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtModelo" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trCat">
                    <asp:TableCell>Categoria</asp:TableCell>
                    <asp:TableCell><asp:DropDownList ID="ddlcategoria" runat="server">
                                    <asp:ListItem value="0">Seleccione</asp:ListItem>
                                    <asp:ListItem value="Camion">Camion</asp:ListItem>
                                    <asp:ListItem value="Automovil">Automovil</asp:ListItem>
                                    <asp:ListItem value="Camioneta">Camioneta</asp:ListItem>
                                    <asp:ListItem value="Van">Van</asp:ListItem>
                                    <asp:ListItem value="Furgon">Furgon</asp:ListItem>
                                   </asp:DropDownList></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trTipo">
                    <asp:TableCell>Tipo de combustible</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="tipoCombustible" runat="server">
                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                            <asp:ListItem Value="Diesel">Diesel</asp:ListItem>
                            <asp:ListItem Value="Bencina">Bencina</asp:ListItem>
                            <asp:ListItem Value="Gas">Gas</asp:ListItem>
                            <asp:ListItem Value="Electricidad">Electricidad</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="trDesc">
                    <asp:TableCell><asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell><asp:Button ID="btnEnviar" runat="server" Text="Modificar" OnClick="btnEnviar_Click" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
    </form>
</body>
    <%
        }
        else
        {
            Response.Redirect("../../../login.aspx");
        }
        %>
</html>
