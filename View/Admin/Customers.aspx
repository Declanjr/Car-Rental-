<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Cars.View.Admin.Customers" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 240px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="mybody" runat="server">
    <div class="mt p-3 bg-dark text-white">
    <h1 class="text-center">MANAGE CUSTOMERS</h1>
    </div>

    <div class="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../../Assets/Img/customer.jpg" class="auto-style1"/><br />
     &nbsp;<br />
    </div>
    <div class="row justify-content-center" >


        <div class="col-lg-3">
        <asp:Label ID="Label1" runat="server" Text="Customer Names" CssClass="col-md-4"></asp:Label>
        <br />
        <asp:TextBox ID="txtname" runat="server" Width="217px" placeholder="Enter Customer Names"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Customer Address" CssClass="col-md-4"></asp:Label>
        <br />
        <asp:TextBox ID="txtadd" runat="server" Width="217px" placeholder="Enter Customer Address"></asp:TextBox>
        <br/>
            </div>

        <div class="col-lg-3">
        <asp:Label ID="Label3" runat="server" Text="Phone" CssClass="col-md-4"></asp:Label>
        <br />
        <asp:TextBox ID="txtphone" runat="server" Width="217px" placeholder="Enter Phone number"></asp:TextBox>
        <br />
            <asp:Label ID="Label5" runat="server" Text="Customer ID" CssClass="col-md-4"></asp:Label>
            <br />
            <asp:TextBox ID="txtid" runat="server" Width="217px" ReadOnly="true" placeholder="Customer ID is here"></asp:TextBox>
            <br />
            </div>
        <div class="text-center">
        <asp:Label ID="Msglb2" runat="server" Text=""></asp:Label>
        <br />
        <br />
            </div>
        <div class="text-center">
        <asp:Button ID="Savebtn" runat="server" Text="Save" CssClass="btn btn-primary" width="100px"  Height="50px" OnClick="Button1_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="EditBtn" runat="server" Text="Edit" CssClass="btn btn-warning" Width="100px"  Height="50px" OnClick="EditBtn_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="DeleteBtn" runat="server" Text="Delete" CssClass="btn btn-danger" width="100px"  Height="50px" OnClick="DeleteBtn_Click"/>
        <br />
        <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Width="977px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField HeaderText="Customer ID" DataField="id" />
                    <asp:BoundField DataField="Names" HeaderText="Customer Names" />
                    <asp:BoundField DataField="Address" HeaderText="Address" />
                    <asp:BoundField DataField="Phone" HeaderText="Customer's PhoneNumber" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        <br />
        <br />

</div>
        
    </div>        


</asp:Content>
    
