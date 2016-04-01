<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewProg.aspx.cs" Inherits="GridView_Prog.GridViewProg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" OnItemEditing="ListView1_ItemEditing" OnItemCanceling="ListView1_ItemCanceling" OnItemUpdating="ListView1_ItemUpdating" OnItemDeleted="ListView1_ItemDeleted" OnItemDeleting="ListView1_ItemDeleting" OnItemInserting="ListView1_ItemInserting" OnItemInserted="ListView1_ItemInserted">
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
                        </td
                            <td>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Stu_Id") %>' Visible="false"></asp:Label>

                        </td>
                        <td>
                            <asp:Button ID="Edit" runat="server" Text="Edit" CommandName="Edit" />
                           <asp:Button ID="Delete" runat="server" Text="Delete" CommandName="Delete" />
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
                        <td>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Stu_Id") %>' Visible="false"></asp:Label>

                        </td>
                        <td>
                             <asp:Button ID="Update" runat="server" Text="Update" CommandName="Update"  />
                             <asp:Button ID="Cancel" runat="server" Text="Cancel" CommandName="Cancel" />
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
            <InsertItemTemplate>
                <table>
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%#Bind("Stu_Name") %>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%#Bind("Stu_Age") %>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%#Bind("Stu_class") %>'></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="Insert" runat="server" Text="Insert" CommandName="Insert"/>

                        </td>
                    </tr>
                </table>
            </InsertItemTemplate>
        </asp:ListView>
    </div>
    </form>
</body>
</html>
