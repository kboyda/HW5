<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Loan Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>Kyle Boyda&#39;s Loan Calculator</h2>
        Loan Amount*:
        <asp:TextBox ID="tb_loanAmount" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="red" ErrorMessage="Please enter a Loan Amount." ControlToValidate="tb_loanAmount"></asp:RequiredFieldValidator>
        <br />
        Annual Interest %*: <asp:TextBox ID="tb_annInterest" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="red" ErrorMessage="Please enter an Annual Interest %." ControlToValidate="tb_annInterest"></asp:RequiredFieldValidator>
        <br />
        Loan Terms (Years)*:
        <asp:TextBox ID="tb_loanTerms" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="red" ErrorMessage="Please enter the number of Loan Terms." ControlToValidate="tb_loanTerms"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btn_Calculate" runat="server" Text="Calculate" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_clear" runat="server" Text="Clear" />
        <br />
        <br />
        <asp:Label ID="lbl_total" runat="server"></asp:Label>
    
        <br />
        
        
        <%If Not IsPostBack Then%>
        <p>Welcome to the mortgage Calculator. Please fill in the following fields to calculate your monthly payment</p>
        <%Else%>
        <br />
        <asp:GridView ID="loanGridView" runat="server">
        </asp:GridView>
          <%End If %>
    
    </div>
    </form>
</body>
</html>
