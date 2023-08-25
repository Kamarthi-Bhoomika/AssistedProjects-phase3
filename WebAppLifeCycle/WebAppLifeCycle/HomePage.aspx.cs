using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppLifeCycle
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            LblMsg.Text += "<br>Pre Init Text";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LblMsg.Text += "<br>Page Load and page is not postback yet first time";
            }
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            LblMsg.Text += "<br>Page PreRender Text";
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            LblMsg.Text += "<br>I am Button click Event";
        }
    }
}