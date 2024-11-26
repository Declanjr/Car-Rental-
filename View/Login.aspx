<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cars.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css"/>
</head>
<body>
     <h1 class="text-center bg-dark text-white">RENTAL CAR SERVICES</h1>
    <div class="col-md-4">
        <div class="col-md-8">
            <div class="col-md-8">
                </div>
            </div>
    </div>
    <p class="text-center">Login</p>
    <form id="form1" runat="server">
       <div class="container-fluid">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card">
                <div class="card-body">
                    <asp:Label ID="Label5" runat="server" Text="Username"></asp:Label>
                    <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="Enter Username" required="required"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Password" required="required"></asp:TextBox>
                    <br />
                   
                    <asp:Button ID="btnLogin" runat="server" Text="Submit" CssClass="btn btn-warning btn-block" OnClick="btnLogin_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/View/signup.aspx" CssClass="hyperlink">Don't have Account? Create one </asp:HyperLink>
                    <br />
                    <br />
                    <asp:Label ID="Msglb" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </div>
</div>


    </form>
</body>
</html>
