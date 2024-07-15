using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace personalwebsite
{
    public partial class Login : System.Web.UI.Page
    {
        DBCVENTITYEntities1 db = new DBCVENTITYEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var sorgu = from x in db.TBLLOGIN where x.KULLANICIAD == TextBox1.Text && x.SIFRE == TextBox2.Text select x;
            if (sorgu.Any()) 
            {
                Response.Redirect("Yeteneklerimiz.aspx");
            }
            else 
            {
                Response.Write("Hatalı Kullanıcı adı veya şifre");
            }
        }
    }
}