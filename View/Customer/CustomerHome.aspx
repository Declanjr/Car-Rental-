<%@ Page Title="" Language="C#" MasterPageFile="~/View/Customer/CustomerMaster.Master" AutoEventWireup="true" CodeBehind="CustomerHome.aspx.cs" Inherits="Cars.View.Customer.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mybody" runat="server">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <div class="row">
        <div class="mt p-1 bg-dark text-white">
            <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WELCOME TO OUR RENTAL CAR  SERVICE</h1>
        </div>
    </div>
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="2000" data-pause="false">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="../../Assets/Img/BMW.jpg" alt="BMW M4">
            <div class="carousel-caption d-none d-md-block">
            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="../../Assets/Img/2019 brabus.jpg" alt="Mercedes Benz 2019 Brabus">
            <div class="carousel-caption d-none d-md-block">

            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="../../Assets/Img/mustang.jpg" alt="Mustang GT350R">
            <div class="carousel-caption d-none d-md-block">

            </div>
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="../../Assets/Img/ford ram.jpg" alt="FORD RAM">
            <div class="carousel-caption d-none d-md-block">

            </div>
        </div>
        <!-- Add more carousel items for additional slides -->
    </div>
    <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="../../Assets/Img/BMW.jpg" class="img-fluid" alt="Car" width="500">
                <h5 class="text-black">BMW M4</h5>
            </div>
            <div class="col-md-6">
                <h3>Car Description</h3>
                <p class="text-black">BMW cars are renowned for their sporty driving dynamics, elegant design, and advanced technology. They offer a wide range of models, including sedans, coupes, convertibles, SUVs, and electric vehicles.</p>
                <a href="Cars.aspx" class="btn btn-primary">Rent Car</a>
            </div>
        </div>
    </div>

    <div class="container">
    <div class="row">
        <div class="col-md-6">
            <img src="../../Assets/Img/2019 brabus.jpg" class="img-fluid" alt="Car" width="500">
              <h5 class="text-black">MERCEDES BENZ 2019 BRABUS</h5>
        </div>
        <div class="col-md-6">
            <h3>Car Description</h3>
            <p class="text-black">Brabus vehicles are often characterized by their breathtaking acceleration, superior handling, and exquisite craftsmanship. They combine the luxury and sophistication of Mercedes-Benz with the exhilarating performance and unique styling of Brabus.</p>
            <a href="Cars.aspx" class="btn btn-primary">Rent Car</a>
        </div>
    </div>
</div>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="../../Assets/Img/ford ram.jpg" class="img-fluid" alt="Car" width="500">
                <h5 class="text-black">FORD RAM</h5>
            </div>
            <div class="col-md-6">
                <h3>Car Description</h3>
                <p class="text-black">Ram Trucks is a brand of light to mid-weight pickup trucks, manufactured by the American automaker Stellantis North America (formerly Fiat Chrysler Automobiles). Ram trucks are known for their rugged design, powerful performance, and innovative features, making them popular choices for both work and everyday use.</p>
                 <a href="Cars.aspx" class="btn btn-primary">Rent Car</a>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <img src="../../Assets/Img/rav4.jpg" class="img-fluid" alt="Car" width="500">
                <h5 class="text-black">TOYOTA RAV4</h5>
            </div>
            <div class="col-md-6">
                <h3>Car Description</h3>
                <p class="text-black">The Toyota RAV4 is a compact crossover SUV produced by the Japanese automaker Toyota. It has been one of the best-selling SUVs in the world for many years and is known for its reliability, versatility, and practicality.</p>
                <a href="Cars.aspx" class="btn btn-primary">Rent Car</a>
            </div>
        </div>
    </div>

</asp:Content>
