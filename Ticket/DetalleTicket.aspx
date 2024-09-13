<%@ Page Title="" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="DetalleTicket.aspx.cs" Inherits="peces_deploy.Ticket.DetalleTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"></asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label CssClass="mb-4 inline-flex items-center px-2 py-1 me-2 text-sm font-medium text-slate-700 bg-slate-200 rounded" ID="lblMessage" runat="server"></asp:Label>
    <br/>
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
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblTelefonoCliente" runat="server" Text="Telefono cliente"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblTelefonoClienteValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblEmailCliente" runat="server" Text="Email cliente"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblEmailClienteValue" runat="server"></asp:Label>
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
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblProducto" runat="server" Text="Producto"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblProductoValue" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblDescripcionProducto" runat="server" Text="Descripcion Producto"></asp:Label>
            </td>
            <td>
                <asp:Label CssClass="tracking-normal text-gray-500 md:text-lg" ID="lblDescripcionProductoValue" runat="server"></asp:Label>
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
                <asp:Button CssClass="my-4 text-gray-900 hover:text-white border border-gray-800 hover:bg-gray-900 focus:ring-4 focus:outline-none focus:ring-gray-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2" ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_OnClick"/>
            </td>
            <td>
                <asp:Button CssClass="my-4 text-blue-700 hover:text-white border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2" ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>
