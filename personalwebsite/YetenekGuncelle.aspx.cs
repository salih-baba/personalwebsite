using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace personalwebsite
{
    public partial class YetenekGuncelle : System.Web.UI.Page
    {
        DBCVENTITYEntities1 db = new DBCVENTITYEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false) 
            {
                var ytnk = db.TBLYETENEKLER.Find(x);
                TextBox1.Text = ytnk.yetenek;
                TextBox2.Text = ytnk.derece.ToString();
            }
            
            

        }

        
            

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int x = int.Parse(Request.QueryString["ID"]);
            var deger = db.TBLYETENEKLER.Find(x);
            deger.yetenek = TextBox1.Text;
            deger.derece = Convert.ToByte(TextBox2.Text);
            db.SaveChanges();
            Response.Redirect("Yeteneklerimiz.aspx");
        }
    }
}