<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [weijli_flower]"></asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="order" HeaderText="order" SortExpression="order" />
        <asp:BoundField DataField="family" HeaderText="family" SortExpression="family" />
        <asp:BoundField DataField="tribe" HeaderText="tribe" SortExpression="tribe" />
        <asp:BoundField DataField="genus" HeaderText="genus" SortExpression="genus" />
        <asp:BoundField DataField="species" HeaderText="species" SortExpression="species" />
    </Columns>
</asp:GridView>
<br />

</asp:Content>

