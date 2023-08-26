<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="MyiStudio_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
<link href="MyContactStyleSheet.css" rel="stylesheet" />   

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="banner overlay white">
        <p class="maintitle">Contact Us</p>
        <p class="subtitle">We would love to hear from you!</p>
    </div>



        <tr id="trParagraph1">
            <td>
                <div class="divParagraph1">
                    <div class="divLeft">
                        <img width="450" src="../Images/map2.png" />
                    </div>



                    <div class="divRight">
                        <ul class="divRightContact">
                        <b>Branch Office, Singapore</b>
                            
                            <li><i class="ion ion-ios-telephone-outline"></i> +(65) 6590 2262</li>
                            <li><i class="ion ion-ios-keypad-outline"></i> +(65) 6590 2044</li>
                            <li><i class="ion ion-ios-paperplane-outline"></i> <a href="mailto:mail@plannernerd.com">mail@plannernerd.com</a></li>
                            <li><i class="ion ion-ios-location-outline"></i>ITE College East | 10 Simei Ave, Singapore 486047</li>

                        </ul>
                        <br />
                        <ul class="divRightContact">
                        <b>Corporate Office, New York</b>
                            
                            <li><i class="ion ion-ios-telephone-outline"></i> +1 (212)-759-3000</li>
                            <li><i class="ion ion-ios-keypad-outline"></i> +1 (949) 583-2079</li>
                            <li><i class="ion ion-ios-paperplane-outline"></i> <a href="mailto:mail@plannernerd.com">mail@plannernerd.com</a></li>
                            <li><i class="ion ion-ios-location-outline"></i> 768 5th Ave, New York, NY 10019, United States</li>

                        </ul>
                    </div>
                </div>


            </td>
        </tr>


</asp:Content>
