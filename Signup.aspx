<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="Server">
    <div class="main container">
        <div class="row">
            <div class="col-12 pt-5 pb-sm-5">
                <div class="text-center mb-3">
                    <h3 class="font-weight-bold text-success">Sign up Form</h3>
                </div>
                <div class="form-group row">
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Fname" Text="<i class='fa fa-user'></i> First Name : " />
                        <asp:TextBox runat="server" ID="txt_Fname" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Mname" Text="<i class='fa fa-user'></i> Middle Name : " />
                        <asp:TextBox runat="server" ID="txt_Mname" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Lname" Text="<i class='fa fa-user'></i> Last Name : " />
                        <asp:TextBox runat="server" ID="txt_Lname" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_FFname" Text="<i class='fa fa-user'></i> Father First Name : " />
                        <asp:TextBox runat="server" ID="txt_FFname" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_FMname" Text="<i class='fa fa-user'></i> Father Middle Name : " />
                        <asp:TextBox runat="server" ID="txt_FMname" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_FLname" Text="<i class='fa fa-user'></i> Father Last Name : " />
                        <asp:TextBox runat="server" ID="txt_FLname" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Foccupation" Text="<i class='fa fa-briefcase'></i> Father Occupation : " />
                        <asp:TextBox runat="server" ID="txt_Foccupation" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Fincome" Text="<i class='fa fa-inr'></i> Father Income : " />
                        <asp:TextBox runat="server" ID="txt_Fincome" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Aadhaar" Text="<i class='fa fa-address-card-o'></i> Aadhaar Card Number : " />
                        <asp:TextBox runat="server" ID="txt_Aadhaar" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Email" Text="<i class='fa fa-envelope'></i> Email Address : " />
                        <asp:TextBox runat="server" TextMode="Email" ID="txt_Email" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Mobile" Text="<i class='fa fa-phone'></i> Mobile Number : " />
                        <asp:TextBox runat="server" ID="txt_Mobile" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Password" Text="<i class='fa fa-key'></i> Password : " />
                        <asp:TextBox runat="server" TextMode="Password" ID="txt_Password" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Dob" Text="<i class='fa fa-birthday-cake'></i> Date of Birth : " />
                        <asp:TextBox runat="server" TextMode="Date" ID="txt_Dob" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="dd_Gender" Text="<i class='fa fa-user'></i> Mobile Number : " />
                        <asp:DropDownList runat="server" ID="dd_Gender" CssClass="form-control">
                            <asp:ListItem Value="">--Select--</asp:ListItem>
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="dd_PH" Text="<i class='fa fa-wheelchair-alt'></i> Physically Handicapped : " />
                        <asp:DropDownList runat="server" ID="dd_PH" CssClass="form-control">
                            <asp:ListItem Value="">--Select--</asp:ListItem>
                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                            <asp:ListItem Value="No">No</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Address" Text="<i class='fa fa-map-marker'></i> Address : " />
                        <asp:TextBox runat="server" TextMode="MultiLine" ID="txt_Address" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_City" Text="<i class='fa fa-map-marker'></i> City : " />
                        <asp:TextBox runat="server" ID="txt_City" CssClass="form-control" />
                    </div>
                    <div class="col-4 mb-4">
                        <asp:Label runat="server" AssociatedControlID="txt_Pincode" Text="<i class='fa fa-map-marker'></i> Pincode   : " />
                        <asp:TextBox runat="server" ID="txt_Pincode" CssClass="form-control" />
                    </div>
                </div>
                <div>
                    <asp:LinkButton runat="server" ID="btn_Signup" CssClass="btn btn-success" OnClick="btn_Signup_Click">
                    <i class='fa fa-plus'></i> Signup
                    </asp:LinkButton>
                    <span class="float-right mt-2 pr-3"><a href="#" class="text-decoration-none">Forgot Password?</a></span>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptPlaceHolder" runat="Server">
</asp:Content>

