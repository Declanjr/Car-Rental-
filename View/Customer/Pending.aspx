<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Pending.aspx.cs" Inherits="Cars.View.Customer.Pending" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <script type="text/javascript">
    function confirmReturn() {
        return confirm("Are you sure you want to return the car?");
    }
    </script>

    <div class="container-fluid">
        <div class="row">
            <div class="col"></div>
                <div><h2  class="text-center bg-dark text-white">PENDING RENTALS</h2></div>
            </div>
        <div class="col"></div>
        <div class="row">
            <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" AutoGenerateColumns="False" Width="1053px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Car" HeaderText="Car" />
                    <asp:BoundField DataField="RentDate" HeaderText="Rent Date" />
                    <asp:BoundField DataField="ReturnDate" HeaderText="ReturnDate" />
                    <asp:BoundField DataField="Fees" HeaderText="Fees" />

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
            <asp:Label ID="Msglb1" runat="server" Text=""></asp:Label>
            <br />
        </div>
         <div>

     <asp:Button ID="returnBtn" runat="server" Text="Return Rental" Width="160px"  CssClass="btn btn-warning" OnClientClick="return confirmReturn()" OnClick="returnBtn_Click"/>
             <br />
        </div>
        </div>
</asp:Content>
