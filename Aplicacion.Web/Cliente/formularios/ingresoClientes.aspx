<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ingresoClientes.aspx.cs" Inherits="Aplicacion.Web.Cliente.formularios.ingresoClientes" %>

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
                    <asp:TableCell>Dirección</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                                
                
                <asp:TableRow>
                    <asp:TableCell>
                        Tipo de medio de pago
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList ID="tipoMedioPago" runat="server">
                            <asp:ListItem Value="0">Seleccione</asp:ListItem>
                            <asp:ListItem Value="Efectivo">Efectivo</asp:ListItem>
                            <asp:ListItem Value="Tarjeta">Tarjeta</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>Teléfono de contacto</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtTelContacto" runat="server"></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                
                <asp:TableRow>
                    <asp:TableCell>Correo electrónico</asp:TableCell>
                    <asp:TableCell><asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox></asp:TableCell>
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
            <asp:RequiredFieldValidator id="validarNombre" ForeColor="Red" ErrorMessage="Ingrese el nombre" 
                            runat="server" ControlToValidate="txtNombre" /><br />
            <asp:RequiredFieldValidator id="validarApelllidos" ForeColor="Red" ErrorMessage="Ingrese los apellidos" 
                            runat="server" ControlToValidate="txtApellidos" /><br />
            <asp:RequiredFieldValidator id="validarDireccion" ForeColor="Red" ErrorMessage="Ingrese la dirección" 
                            runat="server" ControlToValidate="txtDireccion" /><br />
            <asp:RequiredFieldValidator id="validarTipoDePago" ForeColor="Red" ErrorMessage="Ingrese el tipo de medio de pago" 
                            runat="server" ControlToValidate="tipoMedioPago" /><br />
            <asp:RequiredFieldValidator id="validarTelContacto" ForeColor="Red" ErrorMessage="Ingrese el telefono de contacto" 
                            runat="server" ControlToValidate="txtTelContacto" /><br />
            <asp:RequiredFieldValidator id="validarCorreoElectronico" ForeColor="Red" ErrorMessage="Ingrese el correo" 
                            runat="server" ControlToValidate="txtCorreoElectronico" /><br />
            <!-- Label que mostrará errores o confirmacion-->
            <asp:Label ID="lblRespuesta" runat="server" />
        </div>
        </form>
</body>
</html>
