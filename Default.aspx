<%@ Page Title="Welcome Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
<link href="DefaultStyleSheet.css" rel="stylesheet" />   

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="banner overlay white"></div>
        <tr id="trParagraph1">
            <td>
                <div class="divParagraph1">
                    <p class="pParagraph1">
                        <i>Planner Nerd's stylish planners give you the perfect place to keep all your 
                            <b>ideas</b>, <b>notes</b>, <b>to-do-lists</b>, and <b>bits and pieces organised</b>. 
                            Easily map out the important events in your life with our <u>daily planners</u>, 
                            <u>weekly planners</u>, and <u>personal compendiums</u>. With our planners, 
                            <span style="color:#FF8E8E;">make the most of every day!</span></i>
                    </p>
                </div>

                    <a href="Order.aspx"><div class="banner2"></div></a>
                    <a href="Order.aspx"><div class="banner3"></div></a>
            </td>
        </tr>
    
 

</asp:Content>


