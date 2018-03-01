<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="beheren klanten.aspx.cs" Inherits="Vliegtuigmaatschappij.beheren_klanten" %>
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
    <br />
    <asp:DropDownList ID="cboNamen" runat="server" AutoPostBack="True" DataSourceID="dtsklantenbeheer" DataTextField="Voornaam" DataValueField="Voornaam" OnSelectedIndexChanged="appelboom">
    </asp:DropDownList>
    <asp:SqlDataSource ID="dtsklantenbeheer" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT KlantnummerID, Voornaam, Familienaam FROM TblKlant ORDER BY Voornaam"></asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
<p>
    <asp:GridView ID="dgvKlanten" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="KlantnummerID" DataSourceID="dstKlantenVolledig">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="KlantnummerID" HeaderText="KlantnummerID" InsertVisible="False" ReadOnly="True" SortExpression="KlantnummerID" />
            <asp:BoundField DataField="Voornaam" HeaderText="Voornaam" SortExpression="Voornaam" />
            <asp:BoundField DataField="Familienaam" HeaderText="Familienaam" SortExpression="Familienaam" />
            <asp:BoundField DataField="Straat" HeaderText="Straat" SortExpression="Straat" />
            <asp:BoundField DataField="Postnummer" HeaderText="Postnummer" SortExpression="Postnummer" />
            <asp:BoundField DataField="Gemeente" HeaderText="Gemeente" SortExpression="Gemeente" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dstKlantenVolledig" runat="server" ConnectionString="Provider=Microsoft.Ace.OLEDB.15.0;Data Source=|DataDirectory|\Vliegtuigmaatschappij.accdb" DeleteCommand="DELETE FROM [TblKlant] WHERE [KlantnummerID] = ?" InsertCommand="INSERT INTO [TblKlant] ([KlantnummerID], [Voornaam], [Familienaam], [Straat], [Postnummer], [Gemeente], [Email]) VALUES (?, ?, ?, ?, ?, ?, ?)" ProviderName="System.Data.OleDb" SelectCommand="SELECT [KlantnummerID], [Voornaam], [Familienaam], [Straat], [Postnummer], [Gemeente], [Email] FROM [TblKlant]" UpdateCommand="UPDATE [TblKlant] SET [Voornaam] = ?, [Familienaam] = ?, [Straat] = ?, [Postnummer] = ?, [Gemeente] = ?, [Email] = ? WHERE [KlantnummerID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="KlantnummerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="KlantnummerID" Type="Int32" />
            <asp:Parameter Name="Voornaam" Type="String" />
            <asp:Parameter Name="Familienaam" Type="String" />
            <asp:Parameter Name="Straat" Type="String" />
            <asp:Parameter Name="Postnummer" Type="String" />
            <asp:Parameter Name="Gemeente" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Voornaam" Type="String" />
            <asp:Parameter Name="Familienaam" Type="String" />
            <asp:Parameter Name="Straat" Type="String" />
            <asp:Parameter Name="Postnummer" Type="String" />
            <asp:Parameter Name="Gemeente" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="KlantnummerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
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
