<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="Boeken vliegtuigen.aspx.cs" Inherits="Vliegtuigmaatschappij.Boeken_vliegtuigen" %>
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
        <asp:DropDownList ID="cboBestemming" runat="server" DataSourceID="dtsBoeking" DataTextField="Plaats" DataValueField="BestemmingID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="dtsBoeking" runat="server" ConnectionString="<%$ ConnectionStrings:gip %>" ProviderName="<%$ ConnectionStrings:gip.ProviderName %>" SelectCommand="SELECT DISTINCT [Plaats], [BestemmingID] FROM [TblBestemming]"></asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
<p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="dtsVluchtenBijKeuze" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="VluchtID" HeaderText="VluchtID" InsertVisible="False" SortExpression="VluchtID" />
                <asp:BoundField DataField="BestemmingID" HeaderText="BestemmingID" InsertVisible="False" SortExpression="BestemmingID" />
                <asp:BoundField DataField="Plaats" HeaderText="Plaats" SortExpression="Plaats" />
                <asp:BoundField DataField="Datum" HeaderText="Datum" SortExpression="Datum" />
                <asp:BoundField DataField="Tijdstip" HeaderText="Tijdstip" SortExpression="Tijdstip" />
                <asp:BoundField DataField="VrijePlaatsen" HeaderText="VrijePlaatsen" SortExpression="VrijePlaatsen" />
                <asp:BoundField DataField="VliegtuigID" HeaderText="VliegtuigID" InsertVisible="False" SortExpression="VliegtuigID" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="AantalZitplaatsen" HeaderText="AantalZitplaatsen" SortExpression="AantalZitplaatsen" />
                <asp:BoundField DataField="Prijs" HeaderText="Prijs" SortExpression="Prijs" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="dtsVluchtenBijKeuze" runat="server" ConnectionString="<%$ ConnectionStrings:gip %>" ProviderName="<%$ ConnectionStrings:gip.ProviderName %>" SelectCommand="SELECT TblBestemming.BestemmingID, TblBestemming.Plaats, TblVlucht.Datum, TblVlucht.Tijdstip, TblVlucht.VrijePlaatsen, TblVliegtuig.VliegtuigID, TblVliegtuig.Type, TblVliegtuig.AantalZitplaatsen, TblPrijs.Prijs, TblVlucht.VluchtID FROM TblBestemming, TblVlucht, TblVliegtuig, TblPrijs WHERE TblBestemming.BestemmingID = TblVlucht.BestemmingID AND TblVlucht.VliegtuigID = TblVliegtuig.VliegtuigID AND TblBestemming.BestemmingID = TblPrijs.BestemmingID AND TblVlucht.VluchtID = TblPrijs.VluchtID AND (TblBestemming.BestemmingID = ?) AND (TblVlucht.VrijePlaatsen &gt; 0)">
            <SelectParameters>
                <asp:ControlParameter ControlID="cboBestemming" Name="?" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
<p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
        <asp:DropDownList ID="CboLeden" runat="server" DataSourceID="dtsLeden" DataTextField="Naam" DataValueField="KlantnummerID">
        </asp:DropDownList>
        <asp:SqlDataSource ID="dtsLeden" runat="server" ConnectionString="<%$ ConnectionStrings:gip %>" ProviderName="<%$ ConnectionStrings:gip.ProviderName %>" SelectCommand="SELECT Voornaam + ' ' + Familienaam AS Naam, KlantnummerID FROM TblKlant"></asp:SqlDataSource>
    </p>
    <asp:Panel ID="Panel1" runat="server" Height="193px">
        Naam:
        <asp:TextBox ID="txtNaam" runat="server"></asp:TextBox>
        <br />
        Voornaam:<asp:TextBox ID="txtVoornaam" runat="server"></asp:TextBox>
        <br />
        Geslacht:<asp:TextBox ID="txtGeslacht" runat="server"></asp:TextBox>
&nbsp;<br /> Geboortedatum:
        <asp:TextBox ID="txtGeboortedatum" runat="server"></asp:TextBox>
        <br />
        Stoelnr:
        <asp:DropDownList ID="cboStoelnummer" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="btnBoeken" runat="server" OnClick="btnBoeken_Click" Text="Boeken" />
        <asp:Button ID="btnNieuw" runat="server" OnClick="btnNieuw_Click" Text="Nieuw" />
    </asp:Panel>
    <p>
    </p>
<p>
        <asp:Label ID="LblBevestiging" runat="server" Text="Label"></asp:Label>
    </p>
<p>
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
    <p>
    </p>
</asp:Content>
