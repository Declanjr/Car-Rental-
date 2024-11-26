<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="Cars.View.Customer.Cars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 173px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="container-fluid">

    <div class="text-center">
        <br />
        <br />
        </div>
    <div class="container">
    <p>At our car rental business, we're dedicated to providing you with more than just a set of wheels – we're here to enhance your journey, whatever the destination. From the excitement of exploring new cities to the practicality of daily commuting, we understand that each trip is unique, and we're committed to making it as seamless and enjoyable as possible.</p>

    <p>With our diverse fleet of vehicles, carefully selected to cater to your every need, we offer more than just transportation – we offer freedom. Whether you're embarking on a weekend getaway with friends, attending a business conference, or simply need a reliable ride for your daily commute, we've got you covered.</p>

    <p>But it's not just about the cars – it's about the experience. From the moment you book with us to the final drop-off, we prioritize your comfort, convenience, and peace of mind. With flexible rental options, competitive pricing, and personalized customer service, we strive to exceed your expectations at every turn.</p>

    <p>At our car rental business, we're not just in the business of renting cars – we're in the business of creating memories, enabling adventures, and making your journey a little bit brighter. Because when you choose us, you're not just renting a car – you're joining our family, and we're here to ensure that every mile is a memorable one.</p>
        <p>&nbsp;</p>
         <a href="../Showcase.aspx" class="btn btn-warning btn-lg">SHOW ROOM</a>
        <br />
        <br />
</div>
    <div class="center">
        <h1>Choose a Car</h1>
    <asp:GridView ID="GridView1" runat="server"  CssClass="table table-hover" AutoGenerateColumns="False" Width="1053px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="CPlateNum" HeaderText="License Plate" />
            <asp:BoundField DataField="Brand" HeaderText="Car Brand" />
            <asp:BoundField DataField="Model" HeaderText="Car Model" />
            <asp:BoundField DataField="Price" HeaderText="Car Price" />
            <asp:BoundField DataField="Color" HeaderText="Car Color" />
            <asp:BoundField DataField="Status" HeaderText="Car Status" />
            
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
        <div class="row">
            <div class="col-4">
        <asp:Label ID="Msglb1" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
            <asp:Button ID="btnBook" runat="server" Text="Rent" CssClass="btn btn-warning btn-block" Width="104px" OnClick="btnBook_Click"/>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Return Date"></asp:Label>
                &nbsp;&nbsp;
                <input type="date" ID="returndate" class="auto-style1" runat="server"/>&nbsp;
                <br />
                <br />
                </div>
            </div>
        </div>
</asp:Content>
