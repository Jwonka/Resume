<%@ Page Title="" Language="C#" MasterPageFile="~/Resume.Master" AutoEventWireup="true" CodeBehind="SpiderProfile.aspx.cs" Inherits="Resume.SpiderProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="profile">
        <asp:Panel ID="pnlNotAuthorized" runat="server">
            <h2>You are not logged in.</h2>
            <a href="Contact.aspx">Create a new Account</a>
        </asp:Panel>
        <asp:Panel ID="pnlSpiderProfile" runat="server">
            <h2>Welcome to the Spider army <asp:Label ID="lblWelcome" runat="server" Text =""></asp:Label></h2>
                <span>Username: </span><asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
                <br />
                <span>Phone Number: </span><asp:Label ID="lblPhone" runat="server" Text=""></asp:Label>
                <br />
                <span>Email: </span><asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                <br />
            <div class="spiderverse">
                <a href="WebDevelopers.aspx">Check out the Spiderverse</a><br />
            </div>
        </asp:Panel>
    </div>
</asp:Content>

