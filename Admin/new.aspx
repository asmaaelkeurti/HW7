<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="new.aspx.vb" Inherits="Admin_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [weijli_flower]">
</asp:SqlDataSource>
<br />
<br />
<asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert">
    <EditItemTemplate>
        id:
        <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
        <br />
        name:
        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
        <br />
        order:
        <asp:TextBox ID="orderTextBox" runat="server" Text='<%# Bind("order") %>' />
        <br />
        family:
        <asp:TextBox ID="familyTextBox" runat="server" Text='<%# Bind("family") %>' />
        <br />
        tribe:
        <asp:TextBox ID="tribeTextBox" runat="server" Text='<%# Bind("tribe") %>' />
        <br />
        genus:
        <asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' />
        <br />
        species:
        <asp:TextBox ID="speciesTextBox" runat="server" Text='<%# Bind("species") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        name:
        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
        <br />
        order:
        <asp:TextBox ID="orderTextBox" runat="server" Text='<%# Bind("order") %>' />
        <br />
        family:
        <asp:TextBox ID="familyTextBox" runat="server" Text='<%# Bind("family") %>' />
        <br />
        tribe:
        <asp:TextBox ID="tribeTextBox" runat="server" Text='<%# Bind("tribe") %>' />
        <br />
        genus:
        <asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' />
        <br />
        species:
        <asp:TextBox ID="speciesTextBox" runat="server" Text='<%# Bind("species") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        id:
        <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
        <br />
        name:
        <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
        <br />
        order:
        <asp:Label ID="orderLabel" runat="server" Text='<%# Bind("order") %>' />
        <br />
        family:
        <asp:Label ID="familyLabel" runat="server" Text='<%# Bind("family") %>' />
        <br />
        tribe:
        <asp:Label ID="tribeLabel" runat="server" Text='<%# Bind("tribe") %>' />
        <br />
        genus:
        <asp:Label ID="genusLabel" runat="server" Text='<%# Bind("genus") %>' />
        <br />
        species:
        <asp:Label ID="speciesLabel" runat="server" Text='<%# Bind("species") %>' />
        <br />
    </ItemTemplate>
</asp:FormView>
</asp:Content>

