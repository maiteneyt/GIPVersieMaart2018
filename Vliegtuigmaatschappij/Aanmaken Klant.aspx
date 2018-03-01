<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Aanmaken Klant.aspx.cs" Inherits="Vliegtuigmaatschappij.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Aanmaken Klant.aspx">Aanmaken Klant</asp:HyperLink>
&nbsp;
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/beheren klanten.aspx">KlantenBeheer</asp:HyperLink>
&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Wijzigen bestemmingen en vluchten.aspx">Vluchten &amp; bestemming beheer</asp:HyperLink>
&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Boeken vliegtuigen.aspx">Boeking</asp:HyperLink>
    </p>
    <p>
    Inschrijving nieuwe klant</p>
<p>
    Voornaam:&nbsp;
    <asp:TextBox ID="txtVoornaam" runat="server"></asp:TextBox>
    </p>
    <p>
        Naam:<asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
    </p>
    <p>
        Straat en nr:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
    </p>
    <p>
        Postnummer:
        <asp:TextBox ID="txtPostnummer" runat="server"></asp:TextBox>
    </p>
    <p>
        Gemeente:
        <asp:TextBox ID="txtGemeente" runat="server"></asp:TextBox>
    </p>
    <p>
        Email:<asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAanmaken" runat="server" OnClick="btnAanmaken_Click1" Text="aanmaken" />
    </p>
    <asp:Label ID="lblFout" runat="server"></asp:Label>
    <p>
        &nbsp;</p>
</asp:Content>
