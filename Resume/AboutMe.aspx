<%@ Page Title="" Language="C#" MasterPageFile="~/Resume.Master" AutoEventWireup="true" CodeBehind="AboutMe.aspx.cs" Inherits="Resume.AboutMe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section class="about">
    <h3>Allow me to introduce myself</h3>
    <p> Hello, let me tell you a bit about myself. I am from Mondovi, Wisconsin and until recently I was a furniture and window trim manufacturer for over 20 years.
        However, I've decided to embark on an exciting career change into software development that I am passionate about.
    </P>  
    <p> My journey into software development began when I enrolled in Chippewa Valley Technical College. I've been learning 
        and honing my skills in various programming languages, including Javascript, Java, C#, and PHP.
    </p>
    <p> When I am not studying or being creative I like to...</p>   
    <ul>
      <li> Go for walks.
      <li> Play Nintendo with my son.
      <li> Watch Netflix.
    </ul> 
    <p> My goal is to leverage my experience and newfound software development skills to make a positive impact in the tech industry. 
        I'm particularly interested in Web Development and Game Development, and I'm excited to contribute to innovative solutions in 
        these domains.  You can call me "Your friendly neighborhood software developer."
    </p>
      <div class="aboutImageContainer">
        <div class="aboutImageHolder aboutLeftContainer">
          <div class="aboutLeftImage">
            <img src="images/SpidermanInAction.png" />
          </div>
        </div>
        <div class="aboutImageHolder aboutCenterContainer">
          <div class="aboutCenterImage">
            <img src="images/WebLogo.png" />
          </div>
        </div>
        <div class="aboutRightContainer">
           <div class="aboutRightLink">
             <a href="Links.aspx">My favorite links</a><br /><br />
           </div>
           <div class="aboutRightImageContainer">
             <img src="images/SlingingSpiderman.png" />
           </div>
        </div>
      </div>  
  </section>
</asp:Content>
