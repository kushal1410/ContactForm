<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="align-content: center">
                <tr>
                    <td>
                        <h2><b>Login Page</b></h2>
                    </td>
                </tr>
                <tr>
                    <td><b>USERNAME</b></td>
                    <td>
                        <asp:TextBox ID="txtUSERNAME" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator
                            Display="Dynamic"
                            ForeColor="Red"
                            ID="rvfName"
                            ControlToValidate="txtUSERNAME"
                            runat="server"
                            ErrorMessage="* USERNAME is Required" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>PASSWORD</b>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPASSWORD" TextMode="PASSWORD" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="txtLogin" Text="Login" runat="server" OnClick="txtLogin_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMessage2" runat="server" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblMessage3" runat="server" /></td>
                </tr>
               

            </table>
         

            <%--<table style="align-content:center">
                <tr>
                    <td> <h3>Integrating twilio message</h3></td>

                   
                    <td>
                        <b>To Number</b>
                        <asp:TextBox ID="txtToNumber" runat="server" />

                    </td>

                  
                </tr>


                <tr>
                    <td>SMS Message
                    </td>
                    <td>

                        <asp:TextBox ID="Message" Onclick="" runat="server" />
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Button ID="SendMessage" runat="server" Text="Send Message" OnClick="SendMessage_Click" />


                    </td>
                </tr>

            </table>--%>


        </div>
    </form>
</body>
</html>
