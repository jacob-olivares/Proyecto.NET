<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresarAuto.aspx.cs" Inherits="Aplicacion.Web.Administrador.formularios.automovil.ingresarAuto" %>

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
            <asp:Table runat="server">
                <asp:TableRow>
                    <asp:TableCell>Marca</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator id="validarMarca" ForeColor="Red" ErrorMessage="Ingrese marca" 
                            runat="server" ControlToValidate="txtMarca" />
                    </asp:TableCell>
                    
                </asp:TableRow>
                                
                <asp:TableRow>
                    <asp:TableCell>Modelo</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtModelo" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                                
                <asp:TableRow>
                    <asp:TableCell>Categoria</asp:TableCell>
                    <asp:TableCell><asp:DropDownList ID="categoria" runat="server">
                                    <asp:ListItem value="0">Seleccione</asp:ListItem>
                                    <asp:ListItem value="1">Camion</asp:ListItem>
                                    <asp:ListItem value="2">Automovil</asp:ListItem>
                                    <asp:ListItem value="3">Camioneta</asp:ListItem>
                                    <asp:ListItem value="4">Van</asp:ListItem>
                                    <asp:ListItem value="5">Furgon</asp:ListItem>
                                   </asp:DropDownList></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        Telefono contacto:
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>
