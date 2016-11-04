<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
   <head runat="server">
      <title></title>
   </head>
   <body>
      <form id="form1" runat="server">
         <div>
            <table>
               <tr>
                  <td><b>Name</b></td>
                  <td>
                     <asp:TextBox ID="txtName" runat="server" Width="210px"></asp:TextBox>
                  </td>
                  <td>
                     <asp:RequiredFieldValidator
                        Display="Dynamic"
                        ForeColor="Red"
                        ID="rvfName"
                        ControlToValidate="txtName"
                        runat="server"
                        ErrorMessage="* Name is Required" />
                  </td>
               </tr>
               <tr>
                  <td><b>Email:</b></td>
                  <td>
                     <asp:TextBox ID="txtEmail" runat="server" Width="214px" />
                  </td>
                  <td>
                     <asp:RequiredFieldValidator
                        Display="Dynamic"
                        ForeColor="Red"
                        ID="RequiredFieldValidator2"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="* Email is required" />
                     <asp:RegularExpressionValidator ID="rvxEmail"
                        ControlToValidate="txtEmail" runat="server"
                        ErrorMessage="* Invalid email"
                        ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                  </td>
               </tr>
               <tr>
                  <td>
                     <b>Message:</b>
                  </td>
                  <td>
                     <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="10" Width="400px" />
                  </td>
                  <td>
                     <asp:RequiredFieldValidator ID="rvfMessage"
                        ControlToValidate="txtMessage"
                        runat="server" ForeColor="Red"
                        ErrorMessage="* Message Mandatory" />
                  </td>
               </tr>
               <tr>
                  <td>
                     <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                  </td>
               </tr>
               <tr>
                  <td>
                     <asp:Label ID="lblMesaage" runat="server" />
                  </td>
               </tr>
            </table>
         </div>
      </form>
   </body>
</html>