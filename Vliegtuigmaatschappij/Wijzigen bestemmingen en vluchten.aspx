<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Wijzigen bestemmingen en vluchten.aspx.cs" Inherits="Vliegtuigmaatschappij.Wijzigen_bestemmingen" %>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dtsVluchten" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Plaats" HeaderText="Plaats" SortExpression="Plaats" />
                <asp:BoundField DataField="Type Vliegtuig" HeaderText="Type Vliegtuig" SortExpression="Type Vliegtuig" />
                <asp:BoundField DataField="Aantal Zitplaatsen" HeaderText="Aantal Zitplaatsen" SortExpression="Aantal Zitplaatsen" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                <asp:BoundField DataField="Tijdstip" HeaderText="Tijdstip" SortExpression="Tijdstip" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="dtsVluchten" runat="server" ConnectionString="<%$ ConnectionStrings:gip %>" ProviderName="<%$ ConnectionStrings:gip.ProviderName %>" SelectCommand="SELECT TblBestemming.Plaats, TblVliegtuig.`Type Vliegtuig`, TblVliegtuig.`Aantal Zitplaatsen`, TblVlucht.Datum, TblVlucht.Tijdstip FROM TblVliegtuig, TblVlucht, TblBestemming WHERE TblVliegtuig.VliegtuigID = TblVlucht.VliegtuigID AND TblVlucht.BestemmingID = TblBestemming.BestemmingID" InsertCommand="Insert Into TblBestemming.Plaats, TblVliegtuig.`Type Vliegtuig`, TblVliegtuig.`Aantal Zitplaatsen`, TblVlucht.Datum, TblVlucht.Tijdstip FROM TblVliegtuig, TblVlucht, TblBestemming WHERE TblVliegtuig.VliegtuigID = TblVlucht.VliegtuigID AND TblVlucht.BestemmingID = TblBestemming.BestemmingID"></asp:SqlDataSource>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
