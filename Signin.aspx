<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Signin.aspx.cs" Inherits="Signin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>OCAS Signin</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainPlaceHolder" runat="Server">
    <div class="row">
        <div class="col-lg-4 col-md-6  col-sm-8 col-12 offset-lg-4 offset-md-2 offset-sm-2 pt-5 pb-sm-5 pr-md-4">
            <div class="text-center mb-3">
                <h3 class="font-weight-bold text-success">Sign in Form</h3>
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Username" Text="<i class='fa fa-user'></i> Username : " />
                <asp:TextBox runat="server" ID="Username" CssClass="form-control" />
            </div>
            <div class="form-group">
                <asp:Label runat="server" AssociatedControlID="Password" Text="<i class='fa fa-lock'></i> Password : " />
                <asp:TextBox runat="server" ID="Password" CssClass="form-control" />
            </div>
            <div>
                <asp:LinkButton runat="server" ID="Submit_btn" CssClass="btn btn-success">
                    <i class='fa fa-sign-in'></i> Signin
                </asp:LinkButton>
                <span class="float-right mt-2 pr-3"><a href="#" class="text-decoration-none">Forgot Password?</a></span>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptPlaceHolder" runat="Server">

</asp:Content>

