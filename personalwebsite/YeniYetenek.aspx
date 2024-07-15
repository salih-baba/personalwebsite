<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="personalwebsite.YeniYetenek" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4>Yeni Yetenek Ekleme Sayfası</h4>
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
                <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" Width="150px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
