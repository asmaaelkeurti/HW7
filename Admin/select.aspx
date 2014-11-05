<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="select.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [weijli_flower] WHERE [id] = @id" InsertCommand="INSERT INTO [weijli_flower] ([name], [order], [family], [tribe], [genus], [species]) VALUES (@name, @order, @family, @tribe, @genus, @species)" SelectCommand="SELECT * FROM [weijli_flower]" UpdateCommand="UPDATE [weijli_flower] SET [name] = @name, [order] = @order, [family] = @family, [tribe] = @tribe, [genus] = @genus, [species] = @species WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="order" Type="String" />
            <asp:Parameter Name="family" Type="String" />
            <asp:Parameter Name="tribe" Type="String" />
            <asp:Parameter Name="genus" Type="String" />
            <asp:Parameter Name="species" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="order" Type="String" />
            <asp:Parameter Name="family" Type="String" />
            <asp:Parameter Name="tribe" Type="String" />
            <asp:Parameter Name="genus" Type="String" />
            <asp:Parameter Name="species" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />
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
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="detail.aspx?id={0}" Text="select" NavigateUrl="~/Admin/detail.aspx" />
        </Columns>
    </asp:GridView>
    <br />
    <br />
    <br />

</asp:Content>

