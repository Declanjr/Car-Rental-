<%@ Page Title="" Language="C#" MasterPageFile="~/View/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="Cars.View.Admin.Cars" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 527px;
            height: 320px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <div class="mt p-3 bg-dark text-white">
    <h1 class="text-center">MANAGE CARS</h1>
    </div>
      
    <div class="col justify-content-center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../../Assets/Img/car1.jpg" class="auto-style1"/><br />
     &nbsp;<br />
    </div>
        
    <div class="row justify-content-center">
        

        <div class="col-lg-3">
        <asp:Label ID="Label1" runat="server" Text="License plate" CssClass="col-md-6"></asp:Label>
        <br />
        <asp:TextBox ID="txtlicense" runat="server" Width="217px" placeholder="Enter License Plate"></asp:TextBox>
        <br />

        <asp:Label ID="Label2" runat="server" Text="Brand" CssClass="col-md-6"></asp:Label>
        <br />
        <asp:TextBox ID="txtbrand" runat="server" Width="217px" placeholder="Enter Car Brand"></asp:TextBox>
        <br/>

        <asp:Label ID="Label3" runat="server" Text="Model" CssClass="col-md-6"></asp:Label>
        <br />
        <asp:TextBox ID="txtmodel" runat="server" Width="217px" placeholder="Enter Car Model"></asp:TextBox>
        <br />

            </div>
        <div class="col-lg-3">
        <asp:Label ID="Label4" runat="server" Text="Price" CssClass="col-md-6"></asp:Label>
        <br />
        <asp:TextBox ID="txtprice" runat="server" Width="217px" placeholder="Enter Price"></asp:TextBox>
        <br />

        <asp:Label ID="Label5" runat="server" Text="Color" CssClass="col-md-6"></asp:Label>
        <br />
        <asp:TextBox ID="txtcolor" runat="server" Width="217px" placeholder="Enter Car Color"></asp:TextBox>
        <br />

        <asp:Label ID="Label6" runat="server" Text="Available" CssClass="col-md-6"></asp:Label>
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="227px">
            <asp:ListItem>Available</asp:ListItem>
            <asp:ListItem>Rented</asp:ListItem>
        </asp:DropDownList>
            <br />
            <br />
            </div>
        <div class="col-lg-3">
            <asp:Label ID="Label7" runat="server" Text="Choose Car photo"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            </div>
        <br />
        <br />
        <div class="text-center">
        <asp:Label ID="Msglb1" runat="server" Text=""></asp:Label>
        <br />
        <br />
            </div>
           
        <div class="text-center">
        <asp:Button ID="SaveBtn" runat="server" Text="Save" CssClass="btn btn-primary"  Width="100" Height="50" OnClick="SaveBtn_Click"/>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="EditBtn" runat="server" Text="Edit" CssClass="btn btn-warning" Width="100" Height="50" OnClick="EditBtn_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="DeleteBtn" runat="server" Text="Delete" CssClass="btn btn-danger" Width="100" Height="50" OnClick="DeleteBtn_Click" />
        <br />
            <br />
            </div>
        <div style="text-align:center;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="1053px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="CPlateNum" HeaderText="License Plate" />
                    <asp:BoundField DataField="Brand" HeaderText="Car Brand" />
                    <asp:BoundField DataField="Model" HeaderText="Car Model" />
                    <asp:BoundField DataField="Price" HeaderText="Car Price" />
                    <asp:BoundField DataField="Color" HeaderText="Car Color" />
                    <asp:BoundField DataField="Status" HeaderText="Car Status" />
                    <asp:TemplateField HeaderText="Image">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" ImageUrl='<%# Eval("Image") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Height="100px" Width="150px" />
                        </ItemTemplate>
                    </asp:TemplateField>
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
            </div>
        <br />
        <br />
        <br />


        </div>
           


</asp:Content>
