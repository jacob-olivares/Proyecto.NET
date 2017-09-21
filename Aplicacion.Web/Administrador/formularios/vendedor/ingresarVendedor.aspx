<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresarVendedor.aspx.cs" Inherits="Aplicacion.Web.Administrador.formularios.vendedor.ingresarVendedor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <% if (Session["admin"] != null)
        {%>
<body>
    <asp:SiteMapPath ID="siteMap1" runat="server"></asp:SiteMapPath>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="tabla" runat="server">
                <asp:TableRow>
                    <asp:TableCell>
                        Rut:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                                
                <asp:TableRow>
                    <asp:TableCell>
                        Nombre
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                                
                <asp:TableRow>
                    <asp:TableCell>
                        Apellido:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                                
                <asp:TableRow>
                    <asp:TableCell>
                        Direccion:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Genero:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:RadioButtonList ID="rBut" runat="server">
                            <asp:ListItem Value="Masculino">Masculino</asp:ListItem>
                            <asp:ListItem Value="Femenino">Femenino</asp:ListItem>
                        </asp:RadioButtonList>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        Fecha Nacimiento:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Calendar ID="cFecha" runat="server"></asp:Calendar>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:Button ID="btnEnviar" runat="server" Text="Contratar" OnClick="btnEnviar_Click" /></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
    <%}
        else
        {
            Response.Redirect("../../../login.aspx");
        }
        %>
</html>
