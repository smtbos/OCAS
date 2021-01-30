<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Home smt</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="Server">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner text-center bg-primary pt-5" id="my_curo">
            <div class="carousel-item active">
                <div class="row" style="min-height: 500px;">
                    <div class="col-md-4 col-10 offset-1 my-auto">
                        <h2 class="font-weight-bold">Why India Health </h2>
                        <h4>India Health  is a Wildly Used Online Platform for Creating Medical Reports.</h4>
                        <a href="signin.php">
                            <button class="btn btn-signup btn-lg font-weight-bold mt-2">Sign Up Now</button></a>
                    </div>
                    <div class="col-6 d-md-block d-none offset-md-1 my-auto">
                        <img src="public/home/banner-main2.png" height="500">
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row" style="min-height: 500px;">
                    <div class="col-md-4 col-10 offset-1 my-auto">
                        <h2 class="font-weight-bold">Why India Health </h2>
                        <h4>India Health  is Recomended By May Doctors.</h4>
                        <a href="signin.php">
                            <button class="btn btn-signup btn-lg font-weight-bold mt-2">Sign Up Now</button></a>
                    </div>
                    <div class="col-6 d-md-block d-none offset-md-1 my-auto">
                        <img src="public/home/banner-main.png" height="500">
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="row" style="min-height: 500px;">
                    <div class="col-md-4 col-10 offset-1 my-auto">
                        <h2 class="font-weight-bold">Why India Health </h2>
                        <h4>No Need To Cary Papers, All is Digital.</h4>
                        <a href="signin.php">
                            <button class="btn btn-signup btn-lg font-weight-bold mt-2">Sign Up Now</button></a>
                    </div>
                    <div class="col-6 d-md-block d-none offset-md-1 my-auto">
                        <img src="public/home/banner-main3.png" height="500">
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div style="background-color: white;">
        <div class="container">
            <div class="row">
                <div class="col-12 pt-5">
                    <h2>Welcome to, India Health </h2>
                </div>
                <div class="col-12 mt-4">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card  border border-primary">
                                <div class="card-body">
                                    <div class="row" style="height: 120px;">
                                        <div class="col-10  offset-1 my-auto">
                                            <h4>Creating Reports Made Easy</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card  border border-primary">
                                <div class="card-body">
                                    <div class="row" style="height: 120px;">
                                        <div class="col-10  offset-1 my-auto">
                                            <h4>Patient Can See Their Reports Online</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-4">
                            <div class="card  border border-primary">
                                <div class="card-body">
                                    <div class="row" style="height: 120px;">
                                        <div class="col-10  offset-1 my-auto">
                                            <h4>No Longer Paper Waste</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 offset-lg-4 mb-4">
                            <div class="card  border border-primary">
                                <div class="card-body">
                                    <div class="row" style="height: 120px;">
                                        <div class="col-10  offset-1 my-auto">
                                            <h4>Doctors Can See Patient Reports</h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ScriptPlaceHolder" runat="Server">
    <script>
        $(document).ready(function () {
            $('.carousel').carousel({
                interval: 6000
            });
        });
    </script>
</asp:Content>

