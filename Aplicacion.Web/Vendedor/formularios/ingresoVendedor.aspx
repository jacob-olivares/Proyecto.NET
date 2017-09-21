<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresoVendedor.aspx.cs" Inherits="Aplicacion.Web.Vendedor.formularios.ingresoVendedor" %>

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
                    <asp:TableCell>Nombre</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>Apellidos</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                    </asp:TableCell>
                    
                </asp:TableRow>
                                
                <asp:TableRow>
                    <asp:TableCell>Modelo</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtModelo" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                                
                <asp:TableRow>
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
                <asp:TableRow>
                    <asp:TableCell>
                        Tipo Combustible
                    </asp:TableCell>
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
                <asp:TableRow>
                    <asp:TableCell>Descripcion</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Rows="10"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:Button ID="btn_Enviar" runat="server" Text="Ingresar Automovil" OnClick="btn_Enviar_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <!-- Validaciones -->                     
            <asp:RequiredFieldValidator id="validarMarca" ForeColor="Red" ErrorMessage="Ingrese marca" 
                            runat="server" ControlToValidate="txtMarca" /><br />
            <asp:RequiredFieldValidator id="validarModelo" ForeColor="Red" ErrorMessage="Ingrese modelo" 
                            runat="server" ControlToValidate="txtModelo" /><br />
            <asp:RequiredFieldValidator id="validarDescripcion" ForeColor="Red" ErrorMessage="Ingrese descripcion" 
                            runat="server" ControlToValidate="txtDesc" /><br />

            <!-- Label que mostrará errores o confirmacion-->
            <asp:Label ID="lblRespuesta" runat="server" />
    </div>
    </form>
</body>
</html>
