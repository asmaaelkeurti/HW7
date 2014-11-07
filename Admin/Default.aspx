<%@ Page Title="" Language="VB" MasterPageFile="./Master.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin/select.aspx">Edit / Delete</asp:HyperLink>
<br />
<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Admin/new.aspx">Add New Flower</asp:HyperLink>
<br />
<asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Admin/site_mgr/UserMgmt.aspx">Manage Users</asp:HyperLink>
<br />
<asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Admin/site_mgr/RoleMgmt.aspx">Manage Roles</asp:HyperLink>
<br />
<br />
<br />

</asp:Content>

