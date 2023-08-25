<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebAppTwo.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 257px;
        }
        .auto-style3 {
            width: 257px;
            height: 33px;
        }
        .auto-style4 {
            height: 33px;
        }
        .auto-style5 {
            width: 257px;
            height: 39px;
        }
        .auto-style6 {
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Name</td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ControlToValidate="TxtName" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Password</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TxtPwd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ControlToValidate="TxtPwd" ErrorMessage="Please Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Confirm Password</td>
                    <td>
                        <asp:TextBox ID="TxtCPwd" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                            ControlToValidate="TxtCPwd" ErrorMessage="Please Enter Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPwd" ControlToValidate="TxtCPwd" ErrorMessage="Confirm Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td>
                        <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                            ControlToValidate="TxtEmail" ErrorMessage="Please Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtEmail" EnableTheming="True" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">PinCode</td>
                    <td>
                        <asp:TextBox ID="TxtPinCode" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                            ControlToValidate="TxtPinCode" ErrorMessage="Please Enter PinCode" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtPinCode" EnableTheming="True" ErrorMessage="Pincode must have exact 6 digit" ForeColor="Red" ValidationExpression="(D-)?\d{6}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Age</td>
                    <td>
                        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                            ControlToValidate="TxtAge" ErrorMessage="Please Enter Age" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtAge" ErrorMessage="Age must be between 18 to 65" ForeColor="Red" MaximumValue="65" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Date of Joining</td>
                    <td>
                        <asp:Calendar ID="CalDOJ" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                            <DayStyle Width="14%" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                            <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                            <TodayDayStyle BackColor="#CCCC99" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Button ID="BtnRegister" runat="server" OnClick="BtnRegister_Click" Text="Register" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="LblInfo" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
    </form>
</body>
</html>
