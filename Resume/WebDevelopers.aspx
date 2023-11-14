<%@ Page Title="" Language="C#" MasterPageFile="~/Resume.Master" AutoEventWireup="true" CodeBehind="WebDevelopers.aspx.cs" Inherits="Resume.WebDevelopers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="webView">
        <div class="header">
            <h2>Professional Code Crawlers</h2>
        </div>
            <div class="gridView">
                <asp:GridView ID="DeveloperGV" runat="server" DataSourceID="WebOfSpidersTable" AllowPaging="True" AutoGenerateColumns="False" PageSize="5" Height="220px" Width="1090px" DataKeyNames="UserID">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                        <asp:BoundField DataField="ProfessionalTitle" HeaderText="Professional Title" SortExpression="ProfessionalTitle"></asp:BoundField>
                        <asp:BoundField DataField="SpiderSkills" HeaderText="Spider Skills" SortExpression="SpiderSkills"></asp:BoundField>
                        <asp:BoundField DataField="WebTools" HeaderText="Web Tools" SortExpression="WebTools"></asp:BoundField>
                        <asp:BoundField DataField="SpideySense" HeaderText="Spidey Sense" SortExpression="SpideySense"></asp:BoundField>
                    </Columns>
                    <RowStyle CssClass="selectedRow" />
                </asp:GridView>
            </div>        
        <div class="header">
            <h2>Selected Web Slinger</h2>
        </div>
            <div class="detailsAndFormView">
                <div class="detailsView">
                    <asp:DetailsView ID="SelectedProfessionDV" runat="server" Height="80px" Width="1090px" AutoGenerateRows="False" DataSourceID="ProfessionTitle" Style="margin-right: 10px" DataKeyNames="UserID">
                        <Fields>
                            <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" InsertVisible="False" SortExpression="UserID"></asp:BoundField>
                            <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName"></asp:BoundField>
                            <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName"></asp:BoundField>
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone"></asp:BoundField>
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                            <asp:BoundField DataField="Introduction" HeaderText="Introduction" SortExpression="Introduction"></asp:BoundField>
                        </Fields>
                        <RowStyle CssClass="selectedRow" />
                    </asp:DetailsView>
                </div>
            <div class="spiderversHeader">
                <h2>Alter the Spiderverse</h2>
            </div>
            <div class="formView">
                <asp:FormView ID="WebOfSpidersFV" runat="server" DataKeyNames="SpideyID" DataSourceID="WebOfSpidersTable" Height="295px" AllowPaging="True">
                    <EditItemTemplate>
                        <div class="formItem">
                            <span class="formLabel">SpideyID:</span>
                            <asp:Label Text='<%# Eval("SpideyID") %>' runat="server" ID="SpideyIDLabel1" />
                            <span class="formLabel">UserID:</span>
                            <asp:TextBox Text='<%# Bind("UserID") %>' runat="server" ID="UserIDTextBox" CssClass="formTextbox" />
                            <span class="formLabel">Name:</span>
                            <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" CssClass="formTextbox" />
                            <span class="formLabel">ContactDetails:</span>
                            <asp:TextBox Text='<%# Bind("ContactDetails") %>' runat="server" ID="ContactDetailsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">ProfessionalTitle:</span>
                            <asp:TextBox Text='<%# Bind("ProfessionalTitle") %>' runat="server" ID="ProfessionalTitleTextBox" CssClass="formTextbox" />
                            <span class="formLabel">SpiderSkills:</span>
                            <asp:TextBox Text='<%# Bind("SpiderSkills") %>' runat="server" ID="SpiderSkillsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebTools:</span>
                            <asp:TextBox Text='<%# Bind("WebTools") %>' runat="server" ID="WebToolsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebWorkHistory:</span>
                            <asp:TextBox Text='<%# Bind("WebWorkHistory") %>' runat="server" ID="WebWorkHistoryTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebEducation:</span>
                            <asp:TextBox Text='<%# Bind("WebEducation") %>' runat="server" ID="WebEducationTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebProjects:</span>
                            <asp:TextBox Text='<%# Bind("WebProjects") %>' runat="server" ID="WebProjectsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebOfReferences:</span>
                            <asp:TextBox Text='<%# Bind("WebOfReferences") %>' runat="server" ID="WebOfReferencesTextBox" CssClass="formTextbox" />
                            <span class="formLabel">CareerGoals:</span>
                            <asp:TextBox Text='<%# Bind("CareerGoals") %>' runat="server" ID="CareerGoalsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">Hobbies:</span>
                            <asp:TextBox Text='<%# Bind("Hobbies") %>' runat="server" ID="HobbiesTextBox" CssClass="formTextbox" />
                            <span class="formLabel">SpideySense:</span>
                            <asp:TextBox Text='<%# Bind("SpideySense") %>' runat="server" ID="SpideySenseTextBox" CssClass="formTextbox" />
                            <div class="formItem editButtons">
                                <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                            </div>
                        </div>                    
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <div class="formItem">
                            <span class="formLabel">UserID:</span>
                            <asp:TextBox Text='<%# Bind("UserID") %>' runat="server" ID="UserIDTextBox" CssClass="formTextbox" />
                            <span class="formLabel">Name:</span>
                            <asp:TextBox Text='<%# Bind("Name") %>' runat="server" ID="NameTextBox" CssClass="formTextbox" />
                            <span class="formLabel">ContactDetails:</span>
                            <asp:TextBox Text='<%# Bind("ContactDetails") %>' runat="server" ID="ContactDetailsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">ProfessionalTitle:</span>
                            <asp:TextBox Text='<%# Bind("ProfessionalTitle") %>' runat="server" ID="ProfessionalTitleTextBox" CssClass="formTextbox" />
                            <span class="formLabel">SpiderSkills:</span>
                            <asp:TextBox Text='<%# Bind("SpiderSkills") %>' runat="server" ID="SpiderSkillsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebTools:</span>
                            <asp:TextBox Text='<%# Bind("WebTools") %>' runat="server" ID="WebToolsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebWorkHistory:</span>
                            <asp:TextBox Text='<%# Bind("WebWorkHistory") %>' runat="server" ID="WebWorkHistoryTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebEducation:</span>
                            <asp:TextBox Text='<%# Bind("WebEducation") %>' runat="server" ID="WebEducationTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebProjects:</span>
                            <asp:TextBox Text='<%# Bind("WebProjects") %>' runat="server" ID="WebProjectsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">WebOfReferences:</span>
                            <asp:TextBox Text='<%# Bind("WebOfReferences") %>' runat="server" ID="WebOfReferencesTextBox" CssClass="formTextbox" />
                            <span class="formLabel">CareerGoals:</span>
                            <asp:TextBox Text='<%# Bind("CareerGoals") %>' runat="server" ID="CareerGoalsTextBox" CssClass="formTextbox" />
                            <span class="formLabel">Hobbies:</span>
                            <asp:TextBox Text='<%# Bind("Hobbies") %>' runat="server" ID="HobbiesTextBox" CssClass="formTextbox" />
                            <span class="formLabel">SpideySense:</span>
                            <asp:TextBox Text='<%# Bind("SpideySense") %>' runat="server" ID="SpideySenseTextBox"  CssClass="formTextbox"/>
                            <div class="formItem editButtons">
                                <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                            </div>
                        </div>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div class="formItem">
                            <span class="formLabel">SpideyID:</span>
                            <asp:Label Text='<%# Eval("SpideyID") %>' runat="server" ID="SpideyIDLabel" />
                            <span class="formLabel">UserID:</span>
                            <asp:Label Text='<%# Bind("UserID") %>' runat="server" ID="UserIDLabel" />
                            <span class="formLabel">Name:</span>
                            <asp:Label Text='<%# Bind("Name") %>' runat="server" ID="NameLabel" />
                            <span class="formLabel">ContactDetails:</span>
                            <asp:Label Text='<%# Bind("ContactDetails") %>' runat="server" ID="ContactDetailsLabel" />
                            <span class="formLabel">ProfessionalTitle:</span>
                            <asp:Label Text='<%# Bind("ProfessionalTitle") %>' runat="server" ID="ProfessionalTitleLabel" />
                            <span class="formLabel">SpiderSkills:</span>
                            <asp:Label Text='<%# Bind("SpiderSkills") %>' runat="server" ID="SpiderSkillsLabel" />
                            <span class="formLabel">WebTools:</span>
                            <asp:Label Text='<%# Bind("WebTools") %>' runat="server" ID="WebToolsLabel" />
                            <span class="formLabel">WebWorkHistory:</span>
                            <asp:Label Text='<%# Bind("WebWorkHistory") %>' runat="server" ID="WebWorkHistoryLabel" />
                            <span class="formLabel">WebEducation:</span>
                            <asp:Label Text='<%# Bind("WebEducation") %>' runat="server" ID="WebEducationLabel" />
                            <span class="formLabel">WebProjects:</span>
                            <asp:Label Text='<%# Bind("WebProjects") %>' runat="server" ID="WebProjectsLabel" />
                            <span class="formLabel">WebOfReferences:</span>
                            <asp:Label Text='<%# Bind("WebOfReferences") %>' runat="server" ID="WebOfReferencesLabel" />
                            <span class="formLabel">CareerGoals:</span>
                            <asp:Label Text='<%# Bind("CareerGoals") %>' runat="server" ID="CareerGoalsLabel" />
                            <span class="formLabel">Hobbies:</span>
                            <asp:Label Text='<%# Bind("Hobbies") %>' runat="server" ID="HobbiesLabel" />
                            <span class="formLabel">SpideySense:</span>
                            <asp:Label Text='<%# Bind("SpideySense") %>' runat="server" ID="SpideySenseLabel" />
                            <div class="formItem editButtons">
                                <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                            </div>
                        </div>
                    </ItemTemplate>
                    <RowStyle CssClass="selectedRow" />
                </asp:FormView>
            </div>
        </div>
    </section>
    <asp:SqlDataSource ID="WebOfSpidersTable" runat="server" ConnectionString="<%$ ConnectionStrings:SpiderAccountCS %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [WebOfSpiders]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [WebOfSpiders] WHERE [SpideyID] = @original_SpideyID AND [UserID] = @original_UserID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([ContactDetails] = @original_ContactDetails) OR ([ContactDetails] IS NULL AND @original_ContactDetails IS NULL)) AND (([ProfessionalTitle] = @original_ProfessionalTitle) OR ([ProfessionalTitle] IS NULL AND @original_ProfessionalTitle IS NULL)) AND (([SpiderSkills] = @original_SpiderSkills) OR ([SpiderSkills] IS NULL AND @original_SpiderSkills IS NULL)) AND (([WebTools] = @original_WebTools) OR ([WebTools] IS NULL AND @original_WebTools IS NULL)) AND (([WebWorkHistory] = @original_WebWorkHistory) OR ([WebWorkHistory] IS NULL AND @original_WebWorkHistory IS NULL)) AND (([WebEducation] = @original_WebEducation) OR ([WebEducation] IS NULL AND @original_WebEducation IS NULL)) AND (([WebProjects] = @original_WebProjects) OR ([WebProjects] IS NULL AND @original_WebProjects IS NULL)) AND (([WebOfReferences] = @original_WebOfReferences) OR ([WebOfReferences] IS NULL AND @original_WebOfReferences IS NULL)) AND (([CareerGoals] = @original_CareerGoals) OR ([CareerGoals] IS NULL AND @original_CareerGoals IS NULL)) AND (([Hobbies] = @original_Hobbies) OR ([Hobbies] IS NULL AND @original_Hobbies IS NULL)) AND (([SpideySense] = @original_SpideySense) OR ([SpideySense] IS NULL AND @original_SpideySense IS NULL))" InsertCommand="INSERT INTO [WebOfSpiders] ([UserID], [Name], [ContactDetails], [ProfessionalTitle], [SpiderSkills], [WebTools], [WebWorkHistory], [WebEducation], [WebProjects], [WebOfReferences], [CareerGoals], [Hobbies], [SpideySense]) VALUES (@UserID, @Name, @ContactDetails, @ProfessionalTitle, @SpiderSkills, @WebTools, @WebWorkHistory, @WebEducation, @WebProjects, @WebOfReferences, @CareerGoals, @Hobbies, @SpideySense)" UpdateCommand="UPDATE [WebOfSpiders] SET [UserID] = @UserID, [Name] = @Name, [ContactDetails] = @ContactDetails, [ProfessionalTitle] = @ProfessionalTitle, [SpiderSkills] = @SpiderSkills, [WebTools] = @WebTools, [WebWorkHistory] = @WebWorkHistory, [WebEducation] = @WebEducation, [WebProjects] = @WebProjects, [WebOfReferences] = @WebOfReferences, [CareerGoals] = @CareerGoals, [Hobbies] = @Hobbies, [SpideySense] = @SpideySense WHERE [SpideyID] = @original_SpideyID AND [UserID] = @original_UserID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([ContactDetails] = @original_ContactDetails) OR ([ContactDetails] IS NULL AND @original_ContactDetails IS NULL)) AND (([ProfessionalTitle] = @original_ProfessionalTitle) OR ([ProfessionalTitle] IS NULL AND @original_ProfessionalTitle IS NULL)) AND (([SpiderSkills] = @original_SpiderSkills) OR ([SpiderSkills] IS NULL AND @original_SpiderSkills IS NULL)) AND (([WebTools] = @original_WebTools) OR ([WebTools] IS NULL AND @original_WebTools IS NULL)) AND (([WebWorkHistory] = @original_WebWorkHistory) OR ([WebWorkHistory] IS NULL AND @original_WebWorkHistory IS NULL)) AND (([WebEducation] = @original_WebEducation) OR ([WebEducation] IS NULL AND @original_WebEducation IS NULL)) AND (([WebProjects] = @original_WebProjects) OR ([WebProjects] IS NULL AND @original_WebProjects IS NULL)) AND (([WebOfReferences] = @original_WebOfReferences) OR ([WebOfReferences] IS NULL AND @original_WebOfReferences IS NULL)) AND (([CareerGoals] = @original_CareerGoals) OR ([CareerGoals] IS NULL AND @original_CareerGoals IS NULL)) AND (([Hobbies] = @original_Hobbies) OR ([Hobbies] IS NULL AND @original_Hobbies IS NULL)) AND (([SpideySense] = @original_SpideySense) OR ([SpideySense] IS NULL AND @original_SpideySense IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_SpideyID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_UserID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ContactDetails" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ProfessionalTitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_SpiderSkills" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebTools" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebWorkHistory" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebEducation" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebProjects" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebOfReferences" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_CareerGoals" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Hobbies" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_SpideySense" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="ContactDetails" Type="String"></asp:Parameter>
            <asp:Parameter Name="ProfessionalTitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="SpiderSkills" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebTools" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebWorkHistory" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebEducation" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebProjects" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebOfReferences" Type="String"></asp:Parameter>
            <asp:Parameter Name="CareerGoals" Type="String"></asp:Parameter>
            <asp:Parameter Name="Hobbies" Type="String"></asp:Parameter>
            <asp:Parameter Name="SpideySense" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="ContactDetails" Type="String"></asp:Parameter>
            <asp:Parameter Name="ProfessionalTitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="SpiderSkills" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebTools" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebWorkHistory" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebEducation" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebProjects" Type="String"></asp:Parameter>
            <asp:Parameter Name="WebOfReferences" Type="String"></asp:Parameter>
            <asp:Parameter Name="CareerGoals" Type="String"></asp:Parameter>
            <asp:Parameter Name="Hobbies" Type="String"></asp:Parameter>
            <asp:Parameter Name="SpideySense" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_SpideyID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_UserID" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Name" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ContactDetails" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ProfessionalTitle" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_SpiderSkills" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebTools" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebWorkHistory" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebEducation" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebProjects" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_WebOfReferences" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_CareerGoals" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Hobbies" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_SpideySense" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="ProfessionTitle" runat="server" ConnectionString='<%$ ConnectionStrings:SpiderAccountCS %>' OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [CodeCrawlersNetwork] WHERE (([UserID] = @UserID) AND ([UserID] = @UserID2) AND ([UserID] = @UserID3))" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [CodeCrawlersNetwork] WHERE [UserID] = @original_UserID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Introduction] = @original_Introduction) OR ([Introduction] IS NULL AND @original_Introduction IS NULL))" InsertCommand="INSERT INTO [CodeCrawlersNetwork] ([FirstName], [LastName], [Username], [Password], [Phone], [Email], [Introduction]) VALUES (@FirstName, @LastName, @Username, @Password, @Phone, @Email, @Introduction)" UpdateCommand="UPDATE [CodeCrawlersNetwork] SET [FirstName] = @FirstName, [LastName] = @LastName, [Username] = @Username, [Password] = @Password, [Phone] = @Phone, [Email] = @Email, [Introduction] = @Introduction WHERE [UserID] = @original_UserID AND (([FirstName] = @original_FirstName) OR ([FirstName] IS NULL AND @original_FirstName IS NULL)) AND (([LastName] = @original_LastName) OR ([LastName] IS NULL AND @original_LastName IS NULL)) AND [Username] = @original_Username AND [Password] = @original_Password AND (([Phone] = @original_Phone) OR ([Phone] IS NULL AND @original_Phone IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Introduction] = @original_Introduction) OR ([Introduction] IS NULL AND @original_Introduction IS NULL))">
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
        <SelectParameters>
            <asp:ControlParameter ControlID="DeveloperGV" PropertyName="SelectedValue" Name="UserID" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DeveloperGV" PropertyName="SelectedValue" Name="UserID2" Type="Int32"></asp:ControlParameter>
            <asp:ControlParameter ControlID="DeveloperGV" PropertyName="SelectedValue" Name="UserID3" Type="Int32"></asp:ControlParameter>
        </SelectParameters>
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
