using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace personalwebsite
{
    public partial class Yeteneklerimiz : System.Web.UI.Page
    {
        DBCVENTITYEntities1 db = new DBCVENTITYEntities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLYETENEKLER.ToList();
            Repeater1.DataBind();
        }
    }
}