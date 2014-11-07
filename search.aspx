<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;You have to press enter.&nbsp;&nbsp; You have to<br />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [weijli_flower]"></asp:SqlDataSource>
<br />
<asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1"
    CssClass="cssgridview"
            AlternatingRowStyle-CssClass="alt"
            PagerStyle-CssClass="pgr"
    >
    <Columns>
        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
        <asp:BoundField DataField="order" HeaderText="Order" SortExpression="order" />
        <asp:BoundField DataField="family" HeaderText="Family" SortExpression="family" />
        <asp:BoundField DataField="tribe" HeaderText="Tribe" SortExpression="tribe" />
        <asp:BoundField DataField="genus" HeaderText="Genus" SortExpression="genus" />
        <asp:BoundField DataField="species" HeaderText="Species" SortExpression="species" />
    </Columns>
</asp:GridView>
<br />

</asp:Content>

