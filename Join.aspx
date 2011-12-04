<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Join.aspx.cs" Inherits="MyFuture.Join" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:Panel ID="pnlCreateUser" runat="server">
        <div>
            <div>
                <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>  
                <asp:Wizard OnNextButtonClick="wizRegister_NextButtonClick" 
                    OnActiveStepChanged="wizRegister_ActiveStepChanged" ID="wizRegister" 
                    OnFinishButtonClick="wizRegister_FinishButtonClicked" 
                    runat="server" ActiveStepIndex="0">
                    <SideBarStyle />
                    <HeaderTemplate>
                        <asp:ValidationSummary ID="valSummary" runat="server" HeaderText="All fields are required!" DisplayMode="BulletList" ForeColor="Red" />
                    </HeaderTemplate>
                    <WizardSteps>

                    <asp:WizardStep Title="Enter details" runat="server" ID="wsDetails">
                    <div>
                    <div>Name</div>
                    <div><asp:TextBox ID="txtName" runat="server"></asp:TextBox></div>
                    </div>

                    <div>
                    <div>Company</div>
                    <div><asp:TextBox ID="txtCompany" runat="server"></asp:TextBox></div>
                    </div>

                    <div>Work Address</div>
                    <div><asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></div>
                    </div>
                    
                    <div>
                    <div>Position</div>
                    <div><asp:TextBox ID="txtPosition" runat="server"></asp:TextBox></div>
                    </div>

                    <div>
                    <div>Industry</div>
                    <div><asp:TextBox ID="txtIndustry" runat="server"></asp:TextBox></div>
                    </div>

                    <div>
                    <div>Availability Type</div>
                    <div><asp:DropDownList ID="listAvailability" runat="server">
                    <asp:ListItem Text="One Off" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Continuous" Value="0"></asp:ListItem>
                    </asp:DropDownList></div>
                    </div>

                    <div>
                    <div>Availability Date</div>
                    <div>
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar></div>
                    </div>

                    </asp:WizardStep>

                        <asp:WizardStep Title="Create Account" runat="server" ID="wsUsernameAndPassword">
                            <div>
                                    Create an account
                            </div>
                            <div>
                                <div>
                                    Email:
                                </div>
                                <div>
                                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator 
                                        ID="valRequiredEmail" 
                                        runat="server" 
                                        ForeColor="Red" 
                                        ControlToValidate="txtEmail" 
                                        ErrorMessage="Please provide your email address!">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator 
                                        ID="RegularExpressionValidator2" 
                                        runat="server" 
                                        ForeColor="Red"
                                        ErrorMessage="This does not appear to be a valid email address!" 
                                        ControlToValidate="txtEmail"     
                                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div>
                                <div>
                                    Username:
                                </div>
                                <div>
                                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator 
                                        ID="valRequiredUsername" 
                                        runat="server" 
                                        ForeColor="Red" 
                                        ControlToValidate="txtUsername" 
                                        ErrorMessage="Please provide a username!">*</asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator 
                                        ID="valUsernameValidation" 
                                        runat="server" 
                                        ForeColor="Red"
                                        ErrorMessage="Your username must be at least 4 letters or numbers and no more than 10." 
                                        ControlToValidate="txtUsername"     
                                        ValidationExpression="^[a-zA-Z0-9.]{4,10}">*</asp:RegularExpressionValidator>
                                </div>
                            </div>
                            <div>
                                <div>
                                    Password:
                                </div>
                                <div>
                                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator 
                                        ID="RequiredFieldValidator1" 
                                        runat="server" 
                                        ForeColor="Red" 
                                        ControlToValidate="txtPassword" 
                                        ErrorMessage="Please provide a password!">*</asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div>
                                <div>
                                    Verify Password:
                                </div>
                                <div>
                                    <asp:TextBox ID="txtVerifyPassword" TextMode="Password" runat="server"></asp:TextBox>
                                    <asp:CompareValidator 
                                        ID="valComparePasswords" 
                                        runat="server" 
                                        ForeColor="Red"
                                        ControlToValidate="txtPassword" 
                                        ControlToCompare="txtVerifyPassword" 
                                        ErrorMessage="The passwords you entered do no match!" 
                                        Display="Dynamic">*</asp:CompareValidator>
                                </div>
                            </div>

                        </asp:WizardStep>

                    </WizardSteps>    
                </asp:Wizard>
            </div>
        </div>
    </asp:Panel>
     <asp:Panel ID="pnlUserCreated" Visible="false" runat="server">
        <div>
            <div>
                <div>
                    Your account was created successfully.<br /><br />
                    Thank you for signing up!<br /><br />
                    <asp:LinkButton ID="lbLogin" runat="server" Text="Click here to login!" OnClick="lbLogin_Click"></asp:LinkButton>
                </div>
            </div>
        </div>
    </asp:Panel>
</asp:Content>
