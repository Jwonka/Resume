<%@ Page Title="Links" Language="C#" MasterPageFile="~/Resume.Master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="Resume.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="links">
    <div class="containsLinks">
      <div class="leftLinksImage">
        <img src="images/OnTheWay.png" />
      </div>
      <div class="centerLinkContent">
        <h3>My Favorite Websites</h3>
          <ul class="linkListStyle">
           <li><a href="http://www.nintendo.com/">Nintendo</a></li>
           <li><a href="http://www.facebook.com/">Facebook</a></li>
           <li><a href="http://www.reddit.com/">Reddit</a></li>
           <li><a href="http://www.google.com/">Google</a></li>
           <li><a href="http://www.youtube.com/">YouTube</a></li>
          </ul>
      </div>
      <div class="rightLinksImage">
        <img src="images/Webshooter.png" />
      </div>
    </div>
  </section>
</asp:Content>
