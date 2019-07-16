<%@ Page Title="Map" Language="C#" MasterPageFile="~/Root.master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="ResponsiveWebApplication.Map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <script type="text/javascript" src='<%# ResolveUrl("~/Content/Map.js") %>'></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="LeftPanelContent" runat="server">
    <div class="settings-content">
        <h2>Left panel</h2>
        <p>Place your content here</p>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RightPanelContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="PageToolbar" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="PageContent" runat="server">
    <iframe 
        id="mapControl" width="100%" height="450" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d423283.4355508583!2d-118.69191628343458!3d34.020730497714055!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x80c2c75ddc27da13%3A0xe22fdf6f254608f4!2sLos+Angeles%2C+CA%2C+USA!5e0!3m2!1sen!2sru!4v1544126844331" frameborder="0" style="border: 0; vertical-align: text-bottom;" allowfullscreen></iframe>

    <script type="text/javascript">
        onMapControlInit(); // AdjustControl
    </script>
</asp:Content>