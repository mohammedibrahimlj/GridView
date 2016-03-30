<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GridView.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Stu_Id" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Stu_IdLabel" runat="server" Text='<%# Eval("Stu_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_NameLabel" runat="server" Text='<%# Eval("Stu_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_AgeLabel" runat="server" Text='<%# Eval("Stu_Age") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_classLabel" runat="server" Text='<%# Eval("Stu_class") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="Stu_IdLabel1" runat="server" Text='<%# Eval("Stu_Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Stu_NameTextBox" runat="server" Text='<%# Bind("Stu_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Stu_AgeTextBox" runat="server" Text='<%# Bind("Stu_Age") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Stu_classTextBox" runat="server" Text='<%# Bind("Stu_class") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="Stu_NameTextBox" runat="server" Text='<%# Bind("Stu_Name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Stu_AgeTextBox" runat="server" Text='<%# Bind("Stu_Age") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="Stu_classTextBox" runat="server" Text='<%# Bind("Stu_class") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Stu_IdLabel" runat="server" Text='<%# Eval("Stu_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_NameLabel" runat="server" Text='<%# Eval("Stu_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_AgeLabel" runat="server" Text='<%# Eval("Stu_Age") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_classLabel" runat="server" Text='<%# Eval("Stu_class") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">Stu_Id</th>
                                    <th runat="server">Stu_Name</th>
                                    <th runat="server">Stu_Age</th>
                                    <th runat="server">Stu_class</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="Stu_IdLabel" runat="server" Text='<%# Eval("Stu_Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_NameLabel" runat="server" Text='<%# Eval("Stu_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_AgeLabel" runat="server" Text='<%# Eval("Stu_Age") %>' />
                    </td>
                    <td>
                        <asp:Label ID="Stu_classLabel" runat="server" Text='<%# Eval("Stu_class") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString %>" DeleteCommand="DELETE FROM [Demo] WHERE [Stu_Id] = @Stu_Id" InsertCommand="INSERT INTO [Demo] ([Stu_Name], [Stu_Age], [Stu_class]) VALUES (@Stu_Name, @Stu_Age, @Stu_class)" SelectCommand="SELECT * FROM [Demo]" UpdateCommand="UPDATE [Demo] SET [Stu_Name] = @Stu_Name, [Stu_Age] = @Stu_Age, [Stu_class] = @Stu_class WHERE [Stu_Id] = @Stu_Id">
            <DeleteParameters>
                <asp:Parameter Name="Stu_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Stu_Name" Type="String" />
                <asp:Parameter Name="Stu_Age" Type="Int32" />
                <asp:Parameter Name="Stu_class" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Stu_Name" Type="String" />
                <asp:Parameter Name="Stu_Age" Type="Int32" />
                <asp:Parameter Name="Stu_class" Type="String" />
                <asp:Parameter Name="Stu_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
