<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YetenekGuncelle.aspx.cs" Inherits="personalwebsite.YetenekGuncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Yetenek Güncelleme Sayfası</h4>
<table>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Yetenek Adı"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="600px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Derece"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="600px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="margin-left:60px">
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-warning" Width="150px" OnClick="Button1_Click1"/>
        </td>
    </tr>
</table>
</asp:Content>
