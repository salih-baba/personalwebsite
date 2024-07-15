using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace personalwebsite
{
    public partial class anasayfa : System.Web.UI.Page
    {
        DBCVENTITYEntities1 db = new DBCVENTITYEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater1.DataBind();
            Repeater2.DataSource = db.TBLHAKKIMDA.ToList();
            Repeater2.DataBind();
            Repeater3.DataSource = db.TBLYETENEKLER.ToList();
            Repeater3.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLİLETİŞİM t = new TBLİLETİŞİM();
            t.ADSOYAD = TextBox1.Text;
            t.mail = TextBox2.Text;
            t.konu = TextBox3.Text;
            t.mesaj = TextBox4.Text;
            db.TBLİLETİŞİM.Add(t);
            db.SaveChanges();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
        }

        protected void Button3_Click(object sender,EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}