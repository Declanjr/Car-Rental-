<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Rents.aspx.cs" Inherits="Cars.View.Admin.Rents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="mybody" runat="server">
    <h1 class="mt p-3 text-center bg-dark text-white">RENTED CARS</h1>
    

    <div class="col justify-content-center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../../Assets/Img/car1.jpg" class="auto-style1" /><br />
        &nbsp;<br />
    </div>
    <div class="container" >
    <div class="row justify-content-center">
       
        <br />
        <asp:Label ID="Msglb1" runat="server" Text=""></asp:Label>
        <br />
        <br />

        </div>
     
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
        &nbsp;&nbsp;&nbsp;&nbsp;
       
            <br />
        
        </div>

</asp:Content>

