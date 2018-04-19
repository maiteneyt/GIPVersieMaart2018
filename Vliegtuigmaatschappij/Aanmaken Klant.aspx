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
    <asp:TextBox ID="txtVoornaam" runat="server" EnableTheming="True"></asp:TextBox>
    <asp:RegularExpressionValidator ID="revVoornaam" runat="server" ControlToValidate="txtVoornaam" ErrorMessage="geef voornaam in" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9].{4,15}"></asp:RegularExpressionValidator>
    </p>
    <p>
        Naam:<asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revFamilienaam" runat="server" ControlToValidate="txtNaam" ErrorMessage="geef familienaam" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9].{2,15}"></asp:RegularExpressionValidator>
    </p>
    <p>
        Straat en nr:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtAdres" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revAdres" runat="server" ControlToValidate="txtAdres" ErrorMessage="geef straat en nr" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9].{5,80}"></asp:RegularExpressionValidator>
    </p>
    <p>
        Postnummer:
        <asp:TextBox ID="txtPostnummer" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revPostcode" runat="server" ControlToValidate="txtPostnummer" ErrorMessage="geef een postcode in" SetFocusOnError="True" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
    </p>
    <p>
        Gemeente:
        <asp:TextBox ID="txtGemeente" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revGemeente" runat="server" ControlToValidate="txtAdres" ErrorMessage="geef gemeente in" SetFocusOnError="True" ValidationExpression="[A-Za-z0-9].{2,15}"></asp:RegularExpressionValidator>
    </p>
    <p>
        Email:<asp:TextBox ID="txtMail" runat="server" Width="309px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="revMail" runat="server" ControlToValidate="txtMail" ErrorMessage="gelieve een geldig emailadres in te vullen" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Button ID="btnAanmaken" runat="server" OnClick="btnAanmaken_Click1" Text="aanmaken" />
    </p>
    <asp:Label ID="lblFout" runat="server"></asp:Label>
    <p>
        &nbsp;</p>
</asp:Content>
