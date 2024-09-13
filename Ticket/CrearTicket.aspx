<%@ Page Title="" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="CrearTicket.aspx.cs" Inherits="peces_deploy.Ticket.CrearTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
<table>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblNombreCliente" runat="server" Text="Ingrese nombre de cliente"></asp:Label>
    </td>
    <td>
        <asp:TextBox CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" ID="txtNombreCliente" runat="server" Text="" ToolTip=""></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator
            ID="rfvNombreCliente"
            runat="server"
            Text="*"
            CssClass="text-red-500"
            ControlToValidate="txtNombreCliente"
            ValidationGroup="vgCrearTicket"
            ErrorMessage="Nombre de cliente es obligatorio"/>
        <asp:CustomValidator
            ID="cvMinNombreCliente"
            runat="server"
            CssClass="text-red-500"
            ControlToValidate="txtNombreCliente"
            OnServerValidate="cvMinNombreCliente_OnServerValidate_ServerValidate"
            ValidationGroup="vgCrearTicket"
            Text="*"
            ErrorMessage="Nombre de cliente debe tener cinco o más letras"/>
    </td>
</tr>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblRutCliente" runat="server" Text="Ingrese rut de cliente"></asp:Label>
    </td>
    <td>
        <asp:TextBox CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" ID="txtRutCliente" runat="server" Text="" ToolTip=""></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator
            ID="rfvRutCliente"
            runat="server"
            Text="*"
            CssClass="text-red-500"
            ControlToValidate="txtRutCliente"
            ValidationGroup="vgCrearTicket"
            ErrorMessage="Rut de cliente es obligatorio"/>
        <asp:RegularExpressionValidator
            ID="revRutCliente"
            runat="server"
            CssClass="text-red-500"
            ControlToValidate="txtRutCliente"
            ValidationGroup="vgCrearTicket"
            ValidationExpression="^(\d{8,9}-[\dkK])$"
            Text="*"
            ErrorMessage="Rut no valido"/>
    </td>
</tr>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblTelefono" runat="server" Text="Ingrese telefono de cliente"></asp:Label>
    </td>
    <td>
        <asp:TextBox CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" ID="txtTelefono" runat="server" Text="" ToolTip=""></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator
            ID="rfvTelefono"
            runat="server"
            Text="*"
            CssClass="text-red-500"
            ControlToValidate="txtTelefono"
            ValidationGroup="vgCrearTicket"
            ErrorMessage="Telefono es obligatorio"/>
    </td>
</tr>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblEmail" runat="server" Text="Ingrese email de cliente"></asp:Label>
    </td>
    <td>
        <asp:TextBox CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" ID="txtEmail" runat="server" Text="" ToolTip=""></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator
            ID="rfvEmail"
            runat="server"
            Text="*"
            CssClass="text-red-500"
            ControlToValidate="txtEmail"
            ValidationGroup="vgCrearTicket"
            ErrorMessage="Email de cliente es obligatorio"/>
        <asp:RegularExpressionValidator
            ID="revEmail"
            runat="server"
            CssClass="text-red-500"
            ControlToValidate="txtEmail"
            ValidationGroup="vgCrearTicket"
            ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
            Text="*"
            ErrorMessage="Email no valido"/>
    </td>
</tr>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblTipoCliente" runat="server" Text="Indique tipo de cliente"></asp:Label>
    </td>
    <td>
        <asp:DropDownList CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" AutoPostBack="true" OnSelectedIndexChanged="ddlTipoCliente_OnSelectedIndexChanged" ID="ddlTipoCliente" runat="server">
        </asp:DropDownList>
    </td>
    <td>
        <asp:CompareValidator
            ID="cvTipoCliente"
            runat="server"
            ControlToValidate="ddlTipoCliente"
            Operator="NotEqual"
            Type="String"
            ValueToCompare="Seleccionar"
            ValidationGroup="vgCrearTicket"
            Text="*"
            ErrorMessage="Seleccione un Tipo de cliente"
            CssClass="text-red-500"/>
    </td>
</tr>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblRazonSocial" runat="server" Text="Indique razon social"></asp:Label>
    </td>
    <td>
        <asp:TextBox CssClass="disabled:bg-gray-300 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" disabled ID="txtRazonSocial" runat="server" Text="" ToolTip=""></asp:TextBox>
    </td>
</tr>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblProducto" runat="server" Text="Ingrese nombre de producto"></asp:Label>
    </td>
    <td>
        <asp:TextBox CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" ID="txtProducto" runat="server" Text="" ToolTip=""></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator
            ID="rfvNombreProducto"
            runat="server"
            Text="*"
            CssClass="text-red-500"
            ControlToValidate="txtProducto"
            ValidationGroup="vgCrearTicket"
            ErrorMessage="Nombre de producto es obligatorio"/>
        <asp:CustomValidator
            ID="cvMinNombreProducto"
            runat="server"
            CssClass="text-red-500"
            ControlToValidate="txtProducto"
            OnServerValidate="cvMinNombreProducto_OnServerValidate_OnServerValidate_ServerValidate"
            ValidationGroup="vgCrearTicket"
            Text="*"
            ErrorMessage="Nombre de producto debe tener diez o más letras"/>
    </td>
</tr>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblDescripcion" runat="server" Text="Ingrese descripcion de producto"></asp:Label>
    </td>
    <td>
        <asp:TextBox CssClass="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" ID="txtDescripcion" runat="server" Text="" ToolTip=""></asp:TextBox>
    </td>
    <td>
        <asp:RequiredFieldValidator
            ID="rfvDescripcionProducto"
            runat="server"
            Text="*"
            CssClass="text-red-500"
            ControlToValidate="txtDescripcion"
            ValidationGroup="vgCrearTicket"
            ErrorMessage="Descripcion de producto es obligatorio"/>
        <asp:CustomValidator
            ID="cvMinDescripcionProducto"
            runat="server"
            CssClass="text-red-500"
            ControlToValidate="txtDescripcion"
            OnServerValidate="cvMinDescripcionProducto_OnServerValidate_OnServerValidate_ServerValidate"
            ValidationGroup="vgCrearTicket"
            Text="*"
            ErrorMessage="Descripcion de producto debe tener diez o más letras"/>
    </td>

</tr>
<tr>
    <td>
        <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblEstado" runat="server" Text="Indique el estado"></asp:Label>
    </td>
    <td>
        <asp:CheckBox CssClass="w-4 h-4 text-slate-600 bg-gray-100 border-gray-300 rounded focus:ring-slate-500 focus:ring-2" ID="checkEstado" runat="server">
        </asp:CheckBox>
    </td>
</tr>
<tr>
    <td>
        <asp:Button
            CausesValidation="True"
            ID="btnEnviarTicket"
            OnClick="btnEnviarTicket_OnClick"
            runat="server"
            ValidationGroup="vgCrearTicket"
            CssClass="my-4 text-green-700 hover:text-white border border-green-700 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
            Text="Enviar ticket"/>
    </td>
</tr>
</table>
<asp:ValidationSummary
    DisplayMode="BulletList"
    CssClass="text-red-500"
    HeaderText="Errores de validación:"
    ShowSummary="True"
    ValidationGroup="vgCrearTicket"
    ID="validationSummary" runat="server"/>
</asp:Content>
