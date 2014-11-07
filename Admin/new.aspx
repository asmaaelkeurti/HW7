<%@ Page Title="" Language="VB" MasterPageFile="./Master.master" AutoEventWireup="false" CodeFile="new.aspx.vb" Inherits="Admin_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [weijli_flower]" DeleteCommand="DELETE FROM [weijli_flower] WHERE [id] = @id" InsertCommand="INSERT INTO [weijli_flower] ([name], [order], [family], [tribe], [genus], [species]) VALUES (@name, @order, @family, @tribe, @genus, @species)" UpdateCommand="UPDATE [weijli_flower] SET [name] = @name, [order] = @order, [family] = @family, [tribe] = @tribe, [genus] = @genus, [species] = @species WHERE [id] = @id">
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
<asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1" DefaultMode="Insert" style="margin-right: 0px">
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
        <table>
                <tr><td class="right">Name</td><td class="auto-style3"><asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' /></td><td class="validator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please type in flower name" ControlToValidate="nameTextBox"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td class="right">Order</td><td class="auto-style3"><asp:TextBox ID="orderTextBox" runat="server" Text='<%# Bind("order") %>' /></td><td class="validator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="orderTextBox" ErrorMessage="Please type in Order"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td class="right">Family</td><td> <asp:TextBox ID="familyTextBox" runat="server" Text='<%# Bind("family") %>' /></td></tr>
                <tr><td class="right">Tribe</td><td><asp:TextBox ID="tribeTextBox" runat="server" Text='<%# Bind("tribe") %>' /></td></tr>
                <tr><td class="right">Genus</td><td><asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' /></td></tr>
                <tr><td class="right">Species</td><td><asp:TextBox ID="speciesTextBox" runat="server" Text='<%# Bind("species") %>' /></td></tr>
                <tr><td class="right"><asp:Button ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" /></td>
                    <td style="text-align:center;" class="auto-style3"><asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClick="InsertCancelButton_Click" /></td>
            
                </tr>
            </table>
       
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

