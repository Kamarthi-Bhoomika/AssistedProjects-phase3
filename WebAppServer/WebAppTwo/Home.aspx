<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebAppTwo.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3"><h2 style="text-align:center">Home Page</h2></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RblGender" runat="server">
                        </asp:RadioButtonList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>Hobbies</td>
                    <td>
                        <asp:CheckBoxList ID="CblHobbies" runat="server">
                        </asp:CheckBoxList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>City</td>
                    <td>
                        <asp:DropDownList ID="DdlCity" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="LblInfo" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
