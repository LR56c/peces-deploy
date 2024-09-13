<%@ Page Title="" Language="C#" MasterPageFile="~/MPSitio.Master" AutoEventWireup="true" CodeBehind="ListadoTicket.aspx.cs" Inherits="peces_deploy.Ticket.ListadoTicket" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Label ID="lblMessage" CssClass="mb-4 inline-flex items-center px-2 py-1 me-2 text-sm font-medium text-slate-700 bg-slate-200 rounded" runat="server"></asp:Label>

    <asp:GridView class="w-full text-sm text-left rtl:text-right text-gray-500" runat="server" ID="gdvListadoTicket" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="Id" OnSelectedIndexChanged="gdvListadoTicket_SelectedIndexChanged">
        <HeaderStyle CssClass="text-xs text-gray-700 uppercase bg-gray-50"></HeaderStyle>
        <RowStyle CssClass="odd:bg-white even:bg-gray-50 border-b"></RowStyle>
        <Columns>
            <asp:ButtonField CommandName="Select" HeaderText="ACCION" ShowHeader="True" Text="Ver detalle" />
        </Columns>
    </asp:GridView>
</asp:Content>
