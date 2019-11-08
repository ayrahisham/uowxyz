﻿<%@ Page Title="Tourist - View Tour Information" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewTInfo.aspx.cs" Inherits="viewTInfo" Debug ="true"%>

<asp:Content ID ="loginUser" ContentPlaceHolderID="loginUser" runat="server">
    Logged in: <b><u>Tourist</u></b>
</asp:Content> 

<asp:Content ID ="menubarViewTInfo" ContentPlaceHolderID="menubar" runat="server">
    <ul>
       <li>
             <img src = "GoWhere/Images/back.png" height = "30" width = "30">
             <asp:HyperLink ID="backTGProfile" runat="server" NavigateUrl="~/viewT.aspx"> BACK </asp:HyperLink>    
       </li>
        <li>
             <img src = "GoWhere/Images/home.jpg" height = "30" width = "30">
             <asp:HyperLink ID="backHomeTourG" runat="server" NavigateUrl="~/homeTR.aspx"> HOME </asp:HyperLink>
       </li>
    </ul> 
</asp:Content>

<asp:Content ID="viewUpTourContent" ContentPlaceHolderID="content" Runat="Server">
    <asp:Table ID="TGUpTourTable" runat="server">
        <asp:TableHeaderRow>
            <asp:TableCell ColumnSpan ="2"> 
                <b> VIEW TOUR ID </b> 
                <u><asp:Label ID="tourID" runat="server" Text="#"></asp:Label></u>
            </asp:TableCell>
        </asp:TableHeaderRow>
         <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="startdate" runat="server" Text="Start Date:"></asp:Label>
                 <asp:TextBox ID="tourStartDate" runat="server" placeholder ="mm/dd/yyyy" MaxLength="10" Width="90px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="enddate" runat="server" Text="End Date:"></asp:Label>
                 <asp:TextBox ID="tourEndDate" runat="server" placeholder ="mm/dd/yyyy" MaxLength="10" Width="90px"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="duration" runat="server" Text="Duration of Days:"></asp:Label>
                 <asp:TextBox ID="tourDuration" runat="server" MaxLength="100" Width="90px"></asp:TextBox>
            </asp:TableCell>
            <asp:TableCell> 
                <asp:Label ID="status" runat="server" Text="Status of Tour:"></asp:Label>
                <asp:TextBox ID="tourStatus" runat="server" Width="90px"></asp:TextBox>    
           </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="name" runat="server" Text="Name of Tour:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell> 
                 <asp:TextBox ID="tourName" runat="server" Width="400px"></asp:TextBox>  
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                 <asp:Label ID="desc" runat="server" Text="Description of Tour:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell> 
                 <asp:TextBox ID="tourDesc" runat="server" TextMode="multiline" Columns="50" Rows="5"></asp:TextBox>  
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="category" runat="server" Text="Category of Tour:"></asp:Label> 
                <asp:DropDownList ID="tourCategory" runat="server">
                    <asp:ListItem Selected="True" Value ="SS">Sightseeing</asp:ListItem>
                    <asp:ListItem Value="SE">Short excursion</asp:ListItem>
                    <asp:ListItem Value="AS">Adventure/Sporting</asp:ListItem>
                    <asp:ListItem Value="CR">Cultural</asp:ListItem>
                </asp:DropDownList>  
           </asp:TableCell>
            <asp:TableCell>
                <asp:Label ID="citycountry" runat="server" Text="City/Country of Tour:"></asp:Label>
                 <asp:TextBox ID="tourCityCountry" runat="server" Width="300px" placeholder="City, Country"></asp:TextBox>  
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label ID="pax" runat="server" Text="No. Of Pax:"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                 <asp:TextBox ID="noOfPax" runat="server" Width="100px" placeholder="4"></asp:TextBox>  
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                 <asp:Label ID="SR" runat="server" Text="Special Request(s):"></asp:Label>
            </asp:TableCell>
            <asp:TableCell> 
                 <asp:TextBox ID="specialReq" runat="server" TextMode="multiline" Columns="50" Rows="3"></asp:TextBox>  
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell ColumnSpan="2">
                <asp:Button ID="bookT" runat="server" Text="Book Tour" PostBackUrl="~/viewUpTourTR.aspx" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>

