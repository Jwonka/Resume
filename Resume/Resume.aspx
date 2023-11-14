<%@ Page Title="Resume" Language="C#" MasterPageFile="~/Resume.Master" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="Resume.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <main class="resume"> 
    <section>
      <h3 class="resumeCenter">Josh Werlein</h3>
      <div class="resumeContactSection">
        <div class="resumeRight">
          <h4 class="resumeContact">Contact</h4>
          <div class="resumeLinks resumeRight">
            <a href="mailto:jwerlein2@student.cvtc.edu">jwerlein2@student.cvtc.edu</a><br />
            <p class="resumeP">608-484-1869</p>
          </div>
        </div>
      </div>
      <div class="resumeLeft">
      <h4>Location</h4>
      <p class="resumePTags">492 W. Main St.
      <br>Mondovi, WI, 54755<br>
      </p>
      <h4>Education</h4>
      <p class="resumePTags resumeCVTC">Chippewa Valley Technical College:</p>
        <dl>
          <dd class="resumeEducation">Associated Degree in Information Technology</dd>
          <dd class="resumeEducationCredits">Credits: 48/60 – GPA 4.0</dd>
        </dl>
      <h4>Technologies</h4>
        <dl>
          <dt class="resumeSoftware">Software:</dt>
          <dd class="resumeSoftwareApp">Microsoft Visual Studio</dd>
          <dd class="resumeSoftwareApp">Unity</dd>
          <dd class="resumeSoftwareApp">XAMPP</dd>
          <dd class="resumeSoftwareApp">MySQL Workbench</dd>
          <dt class="resumeSoftware1">Operating Systems:</dt>
          <dd class="resumeSoftwareApp">Windows 11</dd>
          <dt class="resumeSoftware2">Databases:</dt>
          <dd class="resumeSoftwareApp">MySQL</dd>
          <dt class="resumeSoftware3">Software Development:</dt>
          <dd class="resumeSoftwareApp">HTML, CSS, JavaScript, Java, C#, PHP</dd>
        </dl>
      <h4>Experience</h4>
        <dl>
          <dt class="experience"><a href="https://northamericanlam.com/">North American Specialty Laminations</a></dt><br />
          <dt class="resumeJobTitle">Job Title:</dt>
          <dd class="resumeSoftwareApp">Machine Operator</dd>
          <dd class="resumeSoftwareApp">Material Handler</dd>
          <dt class="experience"><a href="https://www.ashleyfurniture.com/">Ashley Furniture</a></dt><br />
         <dt class="resumeJobTitle">Job Title:</dt>
         <dd class="resumeSoftwareApp">Furniture Assembly Technician</dd>
         <dd class="resumeSoftwareApp">High Lift Operator</dd>
        </dl>
      <h4 class="resumeCenterBottom">References</h4>
      <p class="resumePTags resumeCenterBottom">*Available Upon Request*</p>
      <h4 class="resumeCenterBottom">Get the PDF</h4>
        <div class="resumeLinks resumeCenterBottom">
          <a href="PDF/JoshWerleinResume.docx">Download</a>
        </div>
      </div>
    </section>
  </main>
</asp:Content>
