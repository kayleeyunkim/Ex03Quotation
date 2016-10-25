<!--
  Yun Kim
  WLAC COS 963
  WEB APPLICATION USING ASP.NET
  Project 2: Use CSS and Bootstrap to format the Quotation application
  Sep. 27, 2016
-->

<%@ Page Language="C#" AutoEventWireup="True" CodeBehind="Default.aspx.cs" Inherits="Ex02Quotation.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />    
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.9.1.intellisense.js"></script>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <title>Price quotation</title>
</head>
<body>
    <form class="form-horizontal" id="form1" runat="server">
        <main class="container">
            <h1 class="jumbotron">Price quotation</h1>
            <div class="form-group">
                <label class="control-label col-sm-3" for="salesPrice_txtbox" >Sales price</label>

                <asp:TextBox ID="salesPrice_txtbox" runat="server" Font-Bold="True" Width="185px" CssClass="form-control col-sm-3"></asp:TextBox>
            
                <asp:RequiredFieldValidator 
                    ID="required_salesprice" 
                    runat="server" 
                    ErrorMessage="Required" 
                    ControlToValidate="salesPrice_txtbox" 
                    ForeColor="red"
                    EnableClientScript="false"
                    CssClass="text-danger col-sm-6">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator 
                    ID="range_salesprice" 
                    runat="server" 
                    ErrorMessage="Sales Price must be between 10 and 1000" 
                    ControlToValidate="salesPrice_txtbox"
                    MinimumValue="10"
                    MaximumValue="1000"
                    Type="double"
                    ForeColor="red"
                    EnableClientScript="false"
                    CssClass="text-danger col-sm-6"
                    >
                </asp:RangeValidator>
            </div>
                <!------------------------------------------------------------------------------------------------------------------>
                
            <div class="form-group">
                <label class="control-label col-md-3" for="discountPercent_txtbox">Discount percent</label>

                <asp:TextBox ID="discountPercent_txtbox" runat="server" Width="185px" CssClass="form-control col-sm-3"></asp:TextBox>

                <asp:RequiredFieldValidator 
                    ID="required_discountpercent" 
                    runat="server" 
                    ErrorMessage="Required" 
                    ControlToValidate="discountPercent_txtbox" 
                    ForeColor="red"
                    EnableClientScript="false"
                    CssClass="text-danger col-sm-6">
                </asp:RequiredFieldValidator> 

                <asp:RangeValidator 
                    ID="range_discountpercent" 
                    runat="server" 
                    ErrorMessage="Discount Percent must be between 10 and 50" 
                    ControlToValidate="discountPercent_txtbox"
                    MinimumValue="10"
                    MaximumValue="50"
                    ForeColor="red"
                    Type="double"
                    EnableClientScript="false"
                    CssClass="text-danger col-sm-6">
                </asp:RangeValidator>
            </div>
                

            <!------------------------------------------------------------------------------------------------------------------>
                
            <div class="form-group">
                <label class="control-label col-sm-3" for="discountAmount_label">Discount amount</label>

                <asp:Label ID="discountAmount_label" runat="server" Font-Bold="True"></asp:Label>
            </div>

            <!------------------------------------------------------------------------------------------------------------------>

            <div class="form-group">
                <label class="control-label col-sm-3" for="totalPrice_label">Total price</label>
                <asp:Label ID="totalPrice_label" runat="server" Font-Bold="True"></asp:Label>
            </div>

            <!------------------------------------------------------------------------------------------------------------------>
                
            <div class="form-group">
                <asp:Button ID="calculate_button" runat="server" Text="Calculate" OnClick="calculate_button_Click" CssClass="btn btn-primary col-sm-offset-3"/>
            </div>

            <!------------------------------------------------------------------------------------------------------------------>
        </main>
    </form>
</body>
</html>

