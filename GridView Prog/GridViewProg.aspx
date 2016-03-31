<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewProg.aspx.cs" Inherits="GridView_Prog.GridViewProg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" OnItemEditing="ListView1_ItemEditing">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Stu_Name") %>'></asp:Label>
                            
                        </td>
                         <td>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Stu_Age") %>'></asp:Label>
                            
                        </td>
                         <td>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Stu_class") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Button ID="Edit" runat="server" Text="Edit" CommandName="Edit" />

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <EditItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%#Eval("Stu_Name") %>'></asp:TextBox>
                        </td>
                         <td>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("Stu_Age") %>'></asp:TextBox>
                        </td>
                         <td>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("Stu_class") %>'></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </EditItemTemplate>
            <LayoutTemplate>
        
                <table id="itemPlaceholder" runat="server">
                    <tr id="TabelHeading" runat="server">
                        <th runat="server">Student Name</th>
                        <th runat="server">Student Age</th>
                        <th runat="server">Student Class</th>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    
    </div>
    </form>
</body>
</html>
