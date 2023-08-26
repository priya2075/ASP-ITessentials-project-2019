<%@ Page Language="C#" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="Error_400" %>
<% Response.StatusCode = 404; %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>PAGE NOT FOUND</title>
    <link href="404StyleSheet.css" rel="stylesheet" /> 
    <link href="~/Images/icons8-vintage-glasses-32.png" rel="shortcut icon" type="image/png" />
    
    <!-- CUSTOM ERROR TUTORIAL: https://stackoverflow.com/questions/30467835/web-config-custom-error-pages-not-working -->

    <!-- CUSTOM --> 
    <script src="smoothscroll_plugins.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Crimson+Text:400,400i,700,700i" rel="stylesheet"/>
    <link href='https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css' rel='stylesheet'>    
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

</head>
<body class="clearfix" onselectstart="return false" ondragstart="return false" draggable="false">

        <!-- TOP NAVIGATION -->
        <div class="navlinks">
            
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/MyiStudio/Home.aspx"><div class="logo"></div></asp:HyperLink>

                    <ul class="fleft">
                        <li><a runat="server" href="~/MyiStudio/Home.aspx">Home</a></li>
                        <li><a runat="server" href="~/MyiStudio/About.aspx">About</a></li>
                        <li><a runat="server" href="~/MyiStudio/Contact.aspx">Contact</a></li>
                        <li><a runat="server" href="~/MyiStudio/Order.aspx">Order</a></li>
                        <li><a runat="server" href="~/MyiStudio/Search.aspx"><i class="fa fa-search"></i></a></li>
                    </ul>
        </div> <!-- /TOP NAVIGATION -->


    <form id="form1" runat="server">

    <div class="banner overlay white">
        <p class="maintitle">404</p>
    </div>

    <div id="wrap">
        <table cellpadding="0" cellspacing="0" class="template">

            
            <tr id="trParagraph1">
                <td>
                    <div class="divParagraph1">

  	                    <div class="container body-content">

                        <span class="cH1">Hello</span>
                        <span class="cH2">Good news! The requested page does not exist and your lack of navigation is quite disturbing.</span>
                        <span class="cH3">
                            <a title="Return Home page" href="/MyiStudio/Home">Go Back Home</a> | 
                            <a title="Contact Us" href="/MyiStudio/Contact">Find Us</a> | 
                            <a title="Contact Us" href="/MyiStudio/Search">Search?</a>
                        </span>
                        </div>                    

                    </div>
                </td>
            </tr>


            <tr id="footer">
                <td>

                    <div class="tagline">
                    <ul>
	                    <li>Premium Leather</li>
	                    <li>Stylish Colours</li>
	                    <li>Gorgeous Designs</li>
                    </ul>
                    </div>

                    <div class="footer-secondary">
                    <asp:Label ID="lblFooterTitle" runat="server" Text="Find us!" CssClass="divContactTitle"></asp:Label>

                    <div class="divAddress">
                        
                        <p>
                            <b>ITE College East</b> <br />
                            10 Simei Ave, Singapore 486047
                        </p>

                        <p><i>Contact</i>: <u><a href="mailto:mail@plannernerd.com">mail@plannernerd.com</a></u></p>

                        <p><i>Telephone</i>: +(65)  6590 2262</p>
                    </div>

                    <div class="divSocial">
                        <ul>
                            <li><a target="_blank" href="https://facebook.com/" class="ion-social-facebook"></a></li>
                            <li><a target="_blank" href="https://instagram.com/" class="ion-social-instagram"></a></li>
                            <li><a target="_blank" href="https://twitter.com/" class="ion-social-twitter"></a></li>
                            <li><a target="_blank" href="https://pinterest.com/" class="ion-social-pinterest"></a></li>
                        </ul>
                    </div>

                    <hr class="style1" />

                    <footer role="credit">
                        <div class="divCredit" style="clear:both;" class="clearfix">
                            &copy; <%: DateTime.Now.Year %>  PLANNER NERD &bull; ALL RIGHTS RESERVED
                                <br />
                            CRAFTED BY PRIYA &bull; Powered by <a target="_blank" href="https://visualstudio.microsoft.com/">Visual Studio</a> 
                        </div>
                    </footer>
                        </div>
                </td>
            </tr>

        </table>
    </div>
    
    </form>

<div id="back-to-top"><span class="ion-arrow-up-a"></span></div> 
<script src="/scriptop.js"></script>

</body>
</html>
