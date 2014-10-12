<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Kyle Boyda&#39;s Loan Calculator<br />
        <br />
        Loan Amount:
        <asp:TextBox ID="tb_loanAmount" runat="server"></asp:TextBox>
        <br />
        Annual Interest %: <asp:TextBox ID="tb_annInterest" runat="server"></asp:TextBox>
        <br />
        Loan Terms (Years):
        <asp:TextBox ID="tb_loanTerms" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btn_Calculate" runat="server" Text="Calculate" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_clear" runat="server" Text="Clear" />
        <br />
        <br />
        Monthly Payment:
        <asp:Label ID="lbl_total" runat="server"></asp:Label>
    
        <br />
        <br />
        <asp:GridView ID="loanGridView" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
