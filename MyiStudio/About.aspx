<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="MyiStudio_About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
<link href="MyAboutStyleSheet.css" rel="stylesheet" />   

</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    <div class="banner overlay white">
        <p class="maintitle">Our Story</p>
        <p class="subtitle">How Planner Nerd's journey began...</p>
    </div>

            <tr id="trParagraph1">
            <td>
                <div class="divParagraph1">
                    <div class="divLeft">
                        <img style="margin-top:30px;" width="450" src="../Images/123.png" />
                    </div>



                    <div class="divRight">
                        <p>
                        It all began in 2004 when Priya watched a film called <b>"New York Minute"</b>.
                        </p>
                        <p> <i>
                            "In the film, Jane (Ashley Olsen) and Roxy Ryan (Mary-Kate Olsen) 
                            are teenage Long Island twins who find themselves on numerous misadventures when they 
                            trek into Manhattan on a school day. While the studious Jane intends to give an 
                            important speech in hopes of winning a scholarship, the more relaxed and carefree Roxy wants 
                            to track down her favourite New York City rock group. Trailing behind them, 
                            however, is Max Lomax (Eugene Levy), their school's obsessive truant officer." </i> - Wikipedia

                        </p>
                        <p>
                        It was in this movie, Priya realised the importance of planning and most importantly the importance of having a fabulous planner!!! 

                        </p>
                        <p>
                        So, after <u>a lot of minimal work</u>, she came up with <span style="color:#FF8E8E;">Planner Nerd</span> and here we are.
                        </p>

                </div>

                <%-- HTML5 Video settings: https://blog.addpipe.com/10-advanced-features-in-html5-video-player/ --%>
                <div class="divBottom">
                    <video width="560" height="315" controls muted autoplay loop disablePictureInPicture controlsList="nodownload nofullscreen">
                        <source src="../Video/Planner.mp4" type="video/mp4" />
                          <p>
                              Your browser doesn't support HTML5 video. Here is a 
                              <a target="_blank" href="https://www.youtube-nocookie.com/embed/bM9OwZkDfLQ">link to the video</a> instead.
                          </p>
                    </video>
                    <script>
                        vid=document.getElementById("vid")
                        vid.disablePictureInPicture = true
                    </script>

                    <%--  
                        <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/bM9OwZkDfLQ?rel=0&enablejsapi=1&loop=1&playlist=bM9OwZkDfLQ&controls=0&showsearch=0&iv_load_policy=3&cc_load_policy=1&autoplay=1&fs=0&mute=1&autohide=1&modestbranding=1" frameborder="0" allow="accelerometer; encrypted-media;" allowfullscreen></iframe>
                    --%>
                </div>

            </td>
        </tr>


</asp:Content>



<asp:Content ID="Content3" ContentPlaceHolderID="Footer" Runat="Server">
</asp:Content>