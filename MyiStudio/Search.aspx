<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="MyiStudio_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="SearchStyleSheet.css" rel="stylesheet" /> 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

        <div class="banner overlay white">
            <p class="maintitle">SEARCH !</p>
        </div>

<table id="main" class="clearfix" width="100%">
    <tr>
        <td>

    <h1>What are you searching for?</h1>
                
    <div id="searchbar">
        <input class="search_q" type="search" value="" placeholder="I'm searching for..."
            id="q" name="q" onblur="if(this.value == '') this.value=this.defaultValue;"
            onfocus="if(this.value == this.defaultValue) this.value = '';"
            onkeypress="return SubmitOnEnter(this, event);"  />   
        <button type="button" onclick="SiteSearch();" class="sbutton"><i class="fa fa-search"></i></button>

    </div>
                

    <%-- GOOGLE SEARCH --%>
    <div id="gscBox">
        <%-- http://www.dotnetawesome.com/2014/09/how-to-implement-google-search-box-in-aspnet.html --%>
        <script async src="https://cse.google.com/cse.js?cx=003806676674405894901:kd8wmp9b0uh"></script>
        <div class="gcse-searchresults-only"></div>
    </div>

</td>
        </tr>
    </table>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>

