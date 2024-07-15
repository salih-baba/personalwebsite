using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace personalwebsite
{
    public partial class YeniYetenek : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DBCVENTITYEntities1 db = new DBCVENTITYEntities1();
        protected void Button1_Click(object sender, EventArgs e)
        {
            TBLYETENEKLER t = new TBLYETENEKLER();
            t.yetenek = TextBox1.Text;
            t.derece = Convert.ToByte(TextBox2.Text);
            db.TBLYETENEKLER.Add(t);
            db.SaveChanges();
            Response.Redirect("Yeteneklerimiz.aspx");
        }
    }
}