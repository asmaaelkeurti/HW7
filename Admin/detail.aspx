<%@ Page Title="" Language="VB" MasterPageFile="~/Master.master" AutoEventWireup="false" CodeFile="detail.aspx.vb" Inherits="detail" %>

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
            CssClass="cssdetailsview"
            HeaderStyle-CssClass="header"

            CommandRowStyle-CssClass="command"
        >
        <EditItemTemplate>
            <br />
            name:
            <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nameTextBox" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
            <br />
            order:
            <asp:TextBox ID="orderTextBox" runat="server" Text='<%# Bind("order") %>' />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="orderTextBox" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
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

<HeaderStyle CssClass="header"></HeaderStyle>
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
            <table>
                <tr><td class="right">Name</td><td class="silver"><asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'/></td><td></td></tr>
                <tr><td class="right">Order</td><td class="silver"><asp:Label ID="orderLabel" runat="server" Text='<%# Bind("order") %>' /></td><td></td></tr>
                <tr><td class="right">Family</td><td class="silver"><asp:Label ID="familyLabel" runat="server" Text='<%# Bind("family") %>' /></td></tr>
                <tr><td class="right">Tribe</td><td class="silver"><asp:Label ID="tribeLabel" runat="server" Text='<%# Bind("tribe") %>' /></td></tr>
                <tr><td class="right">Genus</td><td class="silver"><asp:Label ID="genusLabel" runat="server" Text='<%# Bind("genus") %>' /></td></tr>
                <tr><td class="right">Species</td><td class="silver"><asp:Label ID="speciesLabel" runat="server" Text='<%# Bind("species") %>' /></td></tr>
                <tr><td class="right"><asp:Button ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" /></td>
                    <td style="text-align:center;"><asp:Button ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" /></td>
                    <td  class="left"><asp:Button ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" OnClick="CancelButton_Click" /></td>
                </tr>
            </table>
           
            
            
           
            
           
          
            
            &nbsp;
            &nbsp;
        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />
    </asp:Content>

