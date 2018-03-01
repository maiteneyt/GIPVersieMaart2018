<%@ Page Title="" Language="C#" MasterPageFile="~/Sjabloon.Master" AutoEventWireup="true" CodeBehind="mail.aspx.cs" Inherits="Vliegtuigmaatschappij.mail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        Gebruiker:
        <asp:TextBox ID="TxtMail" runat="server" Width="185px"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnMail" runat="server" OnClick="btnMail_Click" Text="Mail" />
    </p>
    <p>
        <asp:ListBox ID="lstLijst" runat="server" Height="171px" Width="351px"></asp:ListBox>
    </p>
</asp:Content>
