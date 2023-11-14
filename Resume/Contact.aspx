<%@ Page Title="" Language="C#" MasterPageFile="~/Resume.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Resume.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="contact">
        <div class="contactContent">
            <h2>Connect with the Web-Slinging Software Developer</h2>
            <p>Your Gateway to a World of Software Development.</p>
            <p>I'm your friendly neighborhood software developer, and I'm thrilled to swing into action with you.
                I'm here to bridge the digital world with real-world challenges, and together, we'll navigate the web of Software Development.</p>
            <p>By creating a profile on my website, you'll unlock a world of opportunities:</p>
            <div class="contactLayout">
                <div class="contactImage">
                    <img src="images/SpidermansContact.png" />
                </div>
              <ul class="contactList">
                <li>Stay in the loop with my latest software development projects and innovations.
                <li>Collaborate on exciting coding adventures and web development innovations.
                <li>Get exclusive access to tutorials, and events where we explore the possibilities of web development.
                <li>Connect with fellow developers, just like you, who share a passion for both Spiderman and software development.
              </ul>
            </div>
              <p>Our mission: To use the power of code and technology for good. So, if you are ready to become a part of this dynamic web create your profile below!</p>
            <div class="contactForm">
                <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Black" CssClass="aspLabel"></asp:Label>
                <br />
                <asp:Label ID="lblFirstName" runat="server" Text="First Name"  CssClass="aspLabel"></asp:Label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="aspTextbox"></asp:TextBox>
                <br />
                <asp:Label ID="lblLastName" runat="server" Text="Last Name" CssClass="aspLabel"></asp:Label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="aspTextbox"></asp:TextBox>
                <br />
                <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="aspLabel"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="aspTextbox"></asp:TextBox>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="aspValidationSummary"/>
                <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="aspLabel"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="aspTextbox" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="lblConfirmPass" runat="server" Text="Confirm Password" CssClass="aspLabel"></asp:Label>
                <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="aspTextbox" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="lblPhone" runat="server" Text="Phone" CssClass="aspLabel"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="aspTextbox"></asp:TextBox>
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="aspLabel"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="aspTextbox"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="Missing Username" ControlToValidate="txtUsername" Display="None"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Missing Password" ControlToValidate="txtPassword" Display="None"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cfvConfirmPass" runat="server" ErrorMessage="Passwords Do Not Match" ControlToCompare="txtConfirmPass" ControlToValidate="txtPassword" Display="None" Visible="True"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ErrorMessage="Missing Password confirmation" ControlToValidate="txtConfirmPass" Display="None" Visible="True"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" ErrorMessage="Invalid Phone Number" ControlToValidate="txtPhone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}" Display="None"></asp:RegularExpressionValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="txtEmail" Display="None" Visible="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="lblIntro" runat="server" Text="Introduce Yourself" CssClass="aspLabel"></asp:Label>
                <asp:TextBox ID="Introduction" runat="server" CssClass="aspTextbox"></asp:TextBox>
                <asp:Button ID="submitButton" runat="server" Text="Submit" CssClass="aspButton" OnClick="btnSubmit_Click" /> 
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="CodeCrawlersNetworkTable" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:SpiderAccountCS %>' DeleteCommand="DELETE FROM [CodeCrawlersNetwork] WHERE [UserID] = @original_UserID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Introduction] = @original_Introduction) OR ([Introduction] IS NULL AND @original_Introduction IS NULL))" InsertCommand="INSERT INTO [CodeCrawlersNetwork] ([FirstName], [LastName], [Username], [Password], [Phone], [Email], [Introduction]) VALUES (@FirstName, @LastName, @Username, @Password, @Phone, @Email, @Introduction)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CodeCrawlersNetwork]" UpdateCommand="UPDATE [CodeCrawlersNetwork] SET [FirstName] = @FirstName, [LastName] = @LastName, [Username] = @Username, [Password] = @Password, [Phone] = @Phone, [Email] = @Email, [Introduction] = @Introduction WHERE [UserID] = @original_UserID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Introduction] = @original_Introduction) OR ([Introduction] IS NULL AND @original_Introduction IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_UserID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Introduction" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Introduction" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="Introduction" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_UserID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_FirstName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_LastName" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Username" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Password" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Phone" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Email" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Introduction" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
