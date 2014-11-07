<%@ Page Title="" Language="VB" MasterPageFile="./Master.master" AutoEventWireup="false" CodeFile="detail.aspx.vb" Inherits="detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [weijli_flower] WHERE [id] = @id" InsertCommand="INSERT INTO [weijli_flower] ([name], [order], [family], [tribe], [genus], [species]) VALUES (@name, @order, @family, @tribe, @genus, @species)" SelectCommand="SELECT * FROM [weijli_flower] WHERE ([id] = @id)" UpdateCommand="UPDATE [weijli_flower] SET [name] = @name, [order] = @order, [family] = @family, [tribe] = @tribe, [genus] = @genus, [species] = @species WHERE [id] = @id">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
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
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="SqlDataSource1"
        HeaderText="Flower Detail"
            CssClass="cssformview"
            HeaderStyle-CssClass="header"

        >
        <EditItemTemplate>
            <table>
                <tr><td class="right">Name</td><td class="auto-style3"><asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' /></td><td class="validator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please type in flower name" ControlToValidate="nameTextBox"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td class="right">Order</td><td class="auto-style3"><asp:TextBox ID="orderTextBox" runat="server" Text='<%# Bind("order") %>' /></td><td class="validator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="orderTextBox" ErrorMessage="Please type in Order"></asp:RequiredFieldValidator>
                    </td></tr>
                <tr><td class="right">Family</td><td><asp:TextBox ID="familyTextBox" runat="server" Text='<%# Bind("family") %>' /></td></tr>
                <tr><td class="right">Tribe</td><td class="auto-style3"><asp:TextBox ID="tribeTextBox" runat="server" Text='<%# Bind("tribe") %>' /></td></tr>
                <tr><td class="right">Genus</td><td><asp:TextBox ID="genusTextBox" runat="server" Text='<%# Bind("genus") %>' /></td></tr>
                <tr><td class="right">Species</td><td><asp:TextBox ID="speciesTextBox" runat="server" Text='<%# Bind("species") %>' /></td></tr>
                <tr><td class="right"><asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" /></td>
                    <td style="text-align:center;" class="auto-style3"><asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" /></td>
            
                </tr>
            </table>
                   

          
           
            
        </EditItemTemplate>





        <ItemTemplate>
            <table>
                <tr><td class="right">Name</td><td class="silver"><asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'/></td></tr>
                <tr><td class="right">Order</td><td class="silver"><asp:Label ID="orderLabel" runat="server" Text='<%# Bind("order") %>' /></td></tr>
                <tr><td class="right">Family</td><td class="silver"><asp:Label ID="familyLabel" runat="server" Text='<%# Bind("family") %>' /></td></tr>
                <tr><td class="right">Tribe</td><td class="silver"><asp:Label ID="tribeLabel" runat="server" Text='<%# Bind("tribe") %>' /></td></tr>
                <tr><td class="right">Genus</td><td class="silver"><asp:Label ID="genusLabel" runat="server" Text='<%# Bind("genus") %>' /></td></tr>
                <tr><td class="right">Species</td><td class="silver"><asp:Label ID="speciesLabel" runat="server" Text='<%# Bind("species") %>' /></td></tr>
                <tr><td class="right"><asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                    <td style="text-align:center;"><asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"/></td>
                    <td  class="left"><asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClick="CancelButton_Click" /></td>
                </tr>
            </table>
           
            
            
     
        </ItemTemplate>
    </asp:FormView>
    </asp:Content>

