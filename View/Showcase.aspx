<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Showcase.aspx.cs" Inherits="Cars.View.Showcase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/Libraries/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
             <div class="container-fluid">
     <div class="row">
         <div class="mt p-3 bg-dark text-white">
             <h1 class="text-center">THE SHOW ROOM</h1>
         </div>
         </div>
     <div class="row">
         <div class="col-lg-3"><div><img src="../../Assets/Img/BMW.jpg"  width="300"/></div><div><h6>BMW M4</h6></div></div>
          <div class="col-lg-3"><div><img src="../../Assets/Img/2019 brabus.jpg"  width="300"/></div><div><h6>MERCEDES BENZ 2019 BRABUS</h6></div></div>
          <div class="col-lg-3"><div><img src="../../Assets/Img/benz s500.jpg" width="300"/></div><div><h6>MERCEDES BENZ S500</h6></div></div>
          <div class="col-lg-3"><div><img src="../../Assets/Img/camry.jpg" width="300"/></div><div><h6>TOYOTA CAMRY</h6></div></div>
         </div>
     <div class="row">
          <div class="col-lg-3"><div><img src="../../Assets/Img/ford ram.jpg" width="300"/></div><div><h6>FORD RAM </h6></div></div>
          <div class="col-lg-3"><div><img src="../../Assets/Img/fortuner.jpg" width="300"/></div><div><h6>TOYOTA FORTUNER</h6></div></div>
          <div class="col-lg-3"><div><img src="../../Assets/Img/mustang.jpg" width="300"/></div><div><h6>FORD MUSTANG</h6></div></div>
          <div class="col-lg-3"><div><img src="../../Assets/Img/range.jpg" width="300"/></div><div><h6>RANGE ROVER</h6></div></div>
          <div class="col-lg-3"><div><img src="../../Assets/Img/rav4.jpg" width="300"/></div><div><h6>TOYOTA RAV4</h6></div></div>
     </div>

      <div class="text-center mt-5">
            <a href="Customer/Cars.aspx" class="btn btn-warning btn-lg">Go Back</a>
            <br />
            <br />
            <br />
                 </div>

     </div>
    </form>
</body>
</html>
