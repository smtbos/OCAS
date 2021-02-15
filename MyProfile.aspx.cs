using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		Configuration conf = WebConfigurationManager.OpenWebConfiguration(System.Web.Hosting.HostingEnvironment.ApplicationVirtualPath);
		SessionStateSection section = (SessionStateSection)conf.GetSection("system.web/sessionState");
		int timeout = (int)section.Timeout.TotalMinutes;
		Response.Write(timeout);
    }
}