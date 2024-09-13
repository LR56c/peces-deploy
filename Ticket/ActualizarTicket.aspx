<%@ Page Title="" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="ActualizarTicket.aspx.cs" Inherits="peces_deploy.Ticket.ActualizarTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label CssClass="mb-4 inline-flex items-center px-2 py-1 me-2 text-sm font-medium text-slate-700 bg-slate-200 rounded" ID="lblMessage" runat="server"></asp:Label>
    <table>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblID" runat="server" Text="ID"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblIDValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblNombreCliente" runat="server" Text="Nombre cliente"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblNombreClienteValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblRutCliente" runat="server" Text="Rut cliente"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblRutClienteValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblTelefono" runat="server" Text="Telefono de cliente"></asp:Label>
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
                    ValidationGroup="vgActualizarTicket"
                    ErrorMessage="Telefono es obligatorio"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblEmail" runat="server" Text="Email de cliente"></asp:Label>
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
                    ValidationGroup="vgActualizarTicket"
                    ErrorMessage="Email de cliente es obligatorio"/>
                <asp:RegularExpressionValidator
                    ID="revEmail"
                    runat="server"
                    CssClass="text-red-500"
                    ControlToValidate="txtEmail"
                    ValidationGroup="vgActualizarTicket"
                    ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
                    Text="*"
                    ErrorMessage="Email no valido"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblTipoCliente" runat="server" Text="Tipo cliente"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblTipoClienteValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr ID="trRazonSocial" runat="server">
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblRazonSocial" runat="server" Text="Razon social"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblRazonSocialValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblProducto" runat="server" Text="Nombre de producto"></asp:Label>
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
                    ValidationGroup="vgActualizarTicket"
                    ErrorMessage="Nombre de producto es obligatorio"/>
                <asp:CustomValidator
                    ID="cvMinNombreProducto"
                    runat="server"
                    CssClass="text-red-500"
                    ControlToValidate="txtProducto"
                    OnServerValidate="cvMinNombreProducto_OnServerValidate_OnServerValidate_ServerValidate"
                    ValidationGroup="vgActualizarTicket"
                    Text="*"
                    ErrorMessage="Nombre de producto debe tener diez o más letras"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblDescripcion" runat="server" Text="Descripcion de producto"></asp:Label>
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
                    ValidationGroup="vgActualizarTicket"
                    ErrorMessage="Descripcion de producto es obligatorio"/>
                <asp:CustomValidator
                    ID="cvMinDescripcionProducto"
                    runat="server"
                    CssClass="text-red-500"
                    ControlToValidate="txtDescripcion"
                    OnServerValidate="cvMinDescripcionProducto_OnServerValidateProducto_OnServerValidate_OnServerValidate_ServerValidate"
                    ValidationGroup="vgActualizarTicket"
                    Text="*"
                    ErrorMessage="Descripcion de producto debe tener diez o más letras"/>
            </td>

        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblEstado" runat="server" Text="Estado:"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblEstadoValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblFecha" runat="server" Text="Fecha:"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblFechaValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button
                    CausesValidation="True"
                    ID="btnActualizarTicket"
                    OnClick="btnActualizarTicket_OnClick"
                    runat="server"
                    ValidationGroup="vgActualizarTicket"
                    Text="Actualizar ticket"
                    CssClass="my-4 text-green-700 hover:text-white border border-green-700 hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"/>
            </td>
        </tr>
    </table>
    <asp:ValidationSummary
        DisplayMode="BulletList"
        CssClass="text-red-500"
        HeaderText="Errores de validación:"
        ShowSummary="True"
        ValidationGroup="vgActualizarTicket"
        ID="validationSummary" runat="server"/>
</asp:Content>
