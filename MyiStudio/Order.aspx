<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.master" MaintainScrollPositionOnPostback="true" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="MyiStudio_Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="MyOrderStylesheet.css" rel="stylesheet" />   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    
    <div class="banner overlay white">
        <p class="maintitle">2020 RELEASE</p>
        <p class="subtitle">Find your planner!</p>
    </div>

<table id="shopwrap" class="clearfix" width="100%">
    <tr>
        <td>
            <div class="shopframe">
                <img width="875" src="../Images/planner-nerdcollage_CART2.png" />
            </div>
        </td>
    </tr>

    <tr id="trRow-2" align="left" width="49%" style="float:left;">
        
        <td><h1>Order Form</h1>
                <!-- DDL - DROPDOWNLIST -->
                <div class="form-group">
                <asp:Label ID="lblPlanners" runat="server" Text="Choose your planner" CssClass="control-label"></asp:Label>
                <div class="plannerdropdown">
                <asp:DropDownList ID="ddlPlanners" runat="server" CssClass="dropdown-select" AppendDataBoundItems="true">
                    <asp:ListItem Value="0">-- Select One --</asp:ListItem>
                    <asp:ListItem Value="1">Leather Personal Planner [B6] - OATMEAL: $80</asp:ListItem>
                    <asp:ListItem Value="2">Leather Personal Planner [A5] - BLACK: $100</asp:ListItem>
                    <asp:ListItem Value="3">Leather Personal Planner [A5] - PINK: $100</asp:ListItem>
                    <asp:ListItem Value="4">Leather Personal Planner [A6] - MINT: $50 </asp:ListItem>
                    <asp:ListItem Value="5">Leather Personal Zip Planner [A5] - BLACK: $100 </asp:ListItem>
                    <asp:ListItem Value="6">Leather Wedding Planner [A5] - PALE WHITE $110</asp:ListItem>
                </asp:DropDownList>
                </div>
                </div>

                <!-- LB - LIST BOX -->
                <div class="form-group">
                <asp:Label ID="lblAddOn" runat="server" Text="Add-On" CssClass="control-label"></asp:Label>
                <div class="listbox">
                <asp:ListBox ID="lbAddOn" runat="server" CssClass="listbox-select">
                    <asp:ListItem Value="25.0">Daily Pages - $25.00</asp:ListItem>
                    <asp:ListItem Value="25.0">Weekly Pages - $25.00</asp:ListItem>
                    <asp:ListItem Value="20.0">Monthly Pages - $20.00</asp:ListItem>
                    <asp:ListItem Value="15.0">Meeting Notes - $15.00</asp:ListItem>
                    <asp:ListItem Value="30.0">Budget Pages - $30.00</asp:ListItem>
                </asp:ListBox>
                <asp:RequiredFieldValidator ValidationGroup="VG1" ID="vldAddon" runat="server" ControlToValidate="lbAddOn" Display="Dynamic" ErrorMessage="Please select one" CssClass="text-danger" EnableClientScript="False"></asp:RequiredFieldValidator>
                </div>
                </div>

                <!-- RBL - RADIOBUTTONLIST -->
                <div class="form-group">
                <asp:Label ID="lblMonogram" runat="server" Text="Monogram" CssClass="control-label"></asp:Label>
                <div class="radiobtnlist">
                <asp:RadioButtonList ID="rblMonogram" runat="server">
                        <asp:ListItem> No Monogram</asp:ListItem>
                        <asp:ListItem> Personal Monogram - $10.00</asp:ListItem>
                        <asp:ListItem> Couple Monogram - $15.00</asp:ListItem>
                  </asp:RadioButtonList>
                </div>
                </div>

                <!-- CBL - CHECKBOXLIST -->
                <div class="form-group">
                <asp:Label ID="lblGiftWrap" runat="server" Text="Gift Wrap" CssClass="control-label"></asp:Label>
                    <div class="checkbox checkbox-primary">
                    <asp:CheckBoxList ID="cblGiftWrap" runat="server">
                        <asp:ListItem onclick="MutExChkList(this);">Yes</asp:ListItem>
                        <asp:ListItem onclick="MutExChkList(this);">No</asp:ListItem>
                    </asp:CheckBoxList>
                    </div>
                </div>

                <!-- TXT - TEXTBOX -->
                <div class="form-group">
                <asp:Label ID="lblQuantity" runat="server" Text="Quantity" class="control-label"></asp:Label>
                <asp:TextBox ID="txtQuantity" runat="server" class="form-control" ValidateRequestMode="Inherit" text="0"></asp:TextBox>
                <asp:RangeValidator ValidationGroup="VG1" ID="vldQuantity" runat="server" ControlToValidate="txtQuantity" EnableClientScript="False" Display="Dynamic" ErrorMessage="* Limit to 10 items per order" MaximumValue="10" MinimumValue="1" SetFocusOnError="True" Type="Integer" CssClass="text-danger"></asp:RangeValidator>
                </div>


                <!-- LABEL -->
                <div class="form-group">
                
                    <div class="total">
                        <asp:Label ID="lblTotalAmt" runat="server" Text="Total:" CssClass="control-label"></asp:Label>
                        <asp:Label ID="lblTotal" runat="server" Text="" CssClass="total-control-label"></asp:Label>
                    </div>

                    <div class="grand">
                        <asp:Label ID="lblGrandTotal" runat="server" Text="Grand Total:" CssClass="control-label"></asp:Label>
                        <asp:Label ID="lblGrand" runat="server" Text="" CssClass="grand-control-label"></asp:Label>
                    </div>

                    <asp:Label ID="lblDelivery" runat="server" Text="Delivery Charge is 1%" CssClass="control-label"></asp:Label>
                    <asp:Label ID="lblTax" runat="server" Text="" CssClass="tax-control-label"></asp:Label>

                </div>
            
                <asp:Label ID="lblOutput" Display="Dynamic" CssClass="labelCMessage" runat="server"></asp:Label>
                <asp:Button ID="btnSubmit" runat="server" Text="Add to Cart" class="btn btn-default" OnClick="btnSubmit_Click" ValidationGroup="VG1" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" class="btn btn-default" OnClick="btnClear_Click" />


        </td>
    </tr>



   <tr id="trRow-3" align="right" width="49%">
       
        <td><h1>Your Details</h1>
            <div class="form-group">
                <!-- NAME -->
            <asp:Label ID="lblCName" runat="server" Text="Name:" CssClass="clabel"></asp:Label>
            <asp:TextBox ID="txtCName" runat="server" class="fcontrol"></asp:TextBox>
            <asp:RequiredFieldValidator ValidationGroup="VG2" Display="Dynamic" ID="vldCName" runat="server" ControlToValidate="txtCName" CssClass="text-danger" EnableClientScript="False" ErrorMessage="Please enter your name"></asp:RequiredFieldValidator>
                    
                <!-- PHONE -->
            <asp:Label ID="lblCPhone" runat="server" Text="Phone Number:" CssClass="clabel"></asp:Label>
            <asp:TextBox ID="txtCPhone" runat="server" class="fcontrol" TextMode="Phone"></asp:TextBox>
            <asp:RegularExpressionValidator ValidationGroup="VG2" Display="Dynamic" ID="vldPhone" runat="server" ControlToValidate="txtCPhone" CssClass="text-danger" EnableClientScript="False" ErrorMessage="Please provide a phone number" TextMode="Phone" ValidationExpression= "^([0-9\(\)\/\+ \-]*)$"></asp:RegularExpressionValidator>

                <asp:Label ID="lblCountry" runat="server" Text="Country:" CssClass="clabel"></asp:Label>
                <div class="dropdown">
                <asp:DropDownList ID="ddlCountry" runat="server" CssClass="dropdown-select" AppendDataBoundItems="true">
                    <asp:ListItem Value="0">-- Select Country --</asp:ListItem>
                    <asp:ListItem Value="1">Australia</asp:ListItem>
                    <asp:ListItem Value="2">Britain</asp:ListItem>
                    <asp:ListItem Value="3">India</asp:ListItem>
                    <asp:ListItem Value="4">Japan</asp:ListItem>
                    <asp:ListItem Value="5">New Zealand</asp:ListItem>
                    <asp:ListItem Value="6">Saudi Arabia</asp:ListItem>
                    <asp:ListItem Value="7">Singapore</asp:ListItem>
                    <asp:ListItem Value="8">United States of America</asp:ListItem>
                </asp:DropDownList>
                </div>
                <div style="margin-bottom:10px;"></div>

                <!-- EMAIL -->
            <asp:Label ID="lblCEmail" runat="server" Text="Email:" CssClass="clabel"></asp:Label>
            <asp:TextBox ID="txtCEmail" runat="server" class="fcontrol" TextMode="Email"></asp:TextBox>
            <asp:RegularExpressionValidator ValidationGroup="VG2" Display="Dynamic" ID="vldCEmail" runat="server" ControlToValidate="txtCEmail" CssClass="text-danger" EnableClientScript="False" ErrorMessage="Please enter a valid email" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>                   


                <!-- RETYPE -->
            <asp:Label ID="lblCRetype" runat="server" Text="Confirm Email:" CssClass="clabel"></asp:Label>
            <asp:TextBox ID="txtCRetype" runat="server" class="fcontrol"></asp:TextBox>
            <asp:CompareValidator ValidationGroup="VG2" Display="Dynamic" ID="vldCRetype" runat="server" ControlToCompare="txtCEmail" ControlToValidate="txtCRetype" CssClass="text-danger" EnableClientScript="False" ErrorMessage="* Email do not match"></asp:CompareValidator>
                    

                <!-- ADDRESS -->
            <asp:Label ID="lblCAddress" runat="server" Text="Shipping Address:" CssClass="clabel"></asp:Label>
            <asp:TextBox ID="txtCAddress" runat="server" class="ftext" wrap="true" TextMode="MultiLine" style="margin-top:1px; resize: vertical;"></asp:TextBox>

                <!-- MESSAGE -->  
            
            <asp:Label ID="lblCMessage" Display="Dynamic" CssClass="labelCMessage" runat="server"></asp:Label>
             

            <asp:Button ID="btnSend" runat="server" Text="Send" class="btn btn-default" OnClick="btnSend_Click" ValidationGroup="VG2" />
            <asp:Button ID="btnReset" runat="server" Text="Reset" class="btn btn-default" OnClick="btnReset_Click" />
            </div>

            <ul class="paymentmode">
            <li><img src="../Images/visa-card.png" /></li>
            <li><img src="../Images/master-card.png" /></li>
            <li><img src="../Images/paypal-pay.png" /></li>
            <li><img src="../Images/geotrust.png" /></li>
            </ul>

        </td>
    </tr>

 


</table>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">

<script type="text/javascript">
    // https://stackoverflow.com/questions/1818102/how-to-make-user-select-only-one-check-box-in-a-checkboxlist
    function MutExChkList(chk) {
        var chkList = chk.parentNode.parentNode.parentNode;
        var chks = chkList.getElementsByTagName("input");
        for (var i = 0; i < chks.length; i++) {
            if (chks[i] != chk && chk.checked) {
                chks[i].checked = false;
            }
        }
    }

</script>

</asp:Content>



