<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="personalwebsite.anasayfa" %>

<!DOCTYPE html>
<html lang="tr">
<head>
    <title>Personal site</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="web,proje,bilişim" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="web/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="web/css/style.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
</head>
<body> 

    <form id="form1" runat="server">
        <div class="sidenav text-center">
            <div class="side_top">
                <img src="web/images/about.jpg" alt="news image" class="img-fluid navimg">
                <h1 class="top_hd mt-2"><a href="index.html">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate> <%#Eval("Bılgıler") %></ItemTemplate>
                    </asp:Repeater>
                </a></h1>
                <p class="top_hdp mt-2">
                    <asp:Repeater ID="Repeater2" runat="server">
                        <ItemTemplate> 
                            <%#Eval("eğitim") %>
                        </ItemTemplate>
                    </asp:Repeater>
                </p>
            </div>
            <header>
                <div class="nav-top">
                    <nav class="mnu mx-auto">
                        <label for="drop" class="toggle">Menu</label>
                        <input type="checkbox" id="drop">
                        <ul class="menu">
                            <li class="active"><a href="#home" class="scroll">anasayfa</a></li>
                            <li class="mt-sm-3"><a href="#about" class="scroll">hakkımızda</a></li>
                            <li class="mt-sm-3"><a href="#services" class="scroll">yeteneklerimiz</a></li>
                            <li class="mt-sm-3"><a href="#news" class="scroll">çalışmalar</a></li>
                            <li class="mt-sm-3"><a href="#contact" class="scroll">iletişim</a></li>
                            <li class="mt-sm-3">
                                <asp:Button ID="Button3" runat="server" Text="Giriş Yap" CssClass="btn btn-border btn-outline-light" OnClick="Button3_Click" />
                            </li>
                        </ul>
                    </nav>
                </div>
            </header>
        </div>
        <div class="main">
            <div class="banner-text-w3ls" id="home">
                <div class="container">
                    <div class="mx-auto text-center">
                        <h3>BABASoft</h3>
                        <p class="banp mx-auto mt-3">web tasarım ekibi</p>
                        <a class="btn btn-primary mt-lg-5 mt-3 agile-link-bnr" href="#about" role="button">daha fazla</a>
                    </div>
                </div>
            </div>
            <section class="slide-wrapper" id="about">
                <h2 class="w3_head mb-4">hakkımızda</h2>
                <p class="iner mt-md-5"></p>
            </section>
            <section class="services" id="services">
                <div class="container">
                    <h3 class="w3_head mb-4 text-left">yeteneklerimiz</h3>
                    <ul class="list-unstyled mt-5">
                        <li>
                            <asp:Repeater ID="Repeater3" runat="server">
                                <ItemTemplate> 
                                    <div class="row">
                                        <div class="col-2 ic-lft">
                                            <span class="fa fa-code"></span>
                                        </div>
                                        <div class="col-10">
                                            <h6>
                                                <%#Eval("yetenek") %>
                                            </h6>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </li>
                    </ul>
                </div>
            </section>
            <div class="news" id="news">
                <h3 class="w3_head mb-4 text-left">çalışmalar</h3>
                <div class="col-lg-5 news_top">
                    <img src="web/images/g1.jpg" alt="news image" class="img-fluid">
                </div>
                <div class="col-lg-7 news_top1">
                    <p class="mt-3"></p>
                </div>
                <div class="row news-grids-middle">
                    <div class="col-lg-5 news_top">
                        <img src="web/images/g2.jpg" alt="news image" class="img-fluid">
                    </div>
                    <div class="col-lg-7 news_top1">
                        <p class="mt-3"></p>
                    </div>
                </div>
                <div class="row news-grids-right">
                    <div class="col-lg-5 news_top">
                        <img src="web/images/g3.jpg" alt="news image" class="img-fluid">
                    </div>
                    <div class="col-lg-7 news_top1">
                        <p class="mt-3"></p>
                    </div>
                </div>	
            </div>
            <section class="wedo" id="contact">
                <h3 class="w3_head mb-4 text-left">İletişim</h3>
                <div class="contact_grid_right mt-5 mx-auto text-left">
                    <div class="row contact_top">
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Adınız"></asp:TextBox>
                        </div>
                        <div class="col-sm-6">
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Mail Adresiniz"></asp:TextBox>
                        </div>
                    </div>	
                    <asp:TextBox ID="TextBox3" runat="server" placeholder="Konu"></asp:TextBox>
                    <asp:TextBox ID="TextBox4" runat="server" placeholder="Mesajınızı Buraya Yazınız" TextMode="MultiLine" Columns="5" Rows="10"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Gönder" CssClass="btn btn-info" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Temizle" CssClass="btn btn-warning" OnClick="Button2_Click" />
                    <div class="clearfix"></div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>
