<%@ Page Title="Home" Language="C#" MasterPageFile="~/Resume.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Resume.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="home">
    <h2>Welcome to My Website</h2>
    <p>Your Gateway to a World of Software Development.</p>
    <h3>Explore My Journey</h3>
    <p>Welcome to my website! I'm on an exciting journey of transitioning from a career in manufacturing to the world of software development. On this site, you'll discover my story, skills, projects, and aspirations in the tech industry.</p>
    <p>Feel free to navigate through the different sections to learn more about me, view my resume, or get in touch. Let's embark on this adventure together!</p>
    <div class="centerHomeLink">
      <a href="AboutMe.aspx">Learn More</a><br /><br />
        <div class="homeImageContainer">
          <img src="images/AIspiderman.png" />
        </div>
    </div>
  </section>
</asp:Content>
