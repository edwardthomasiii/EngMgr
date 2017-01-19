using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

namespace EngMgr
{
    public partial class SearchEngineBefore2015MTC : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void excelexporter_Click(object sender, EventArgs e)
        {
            Response.ClearContent();
            Response.AppendHeader("content-disposition", "attachment; filename=equipment orders search.xls");
            Response.ContentType = "application/excel";

            StringWriter stringwriter = new StringWriter();
            HtmlTextWriter htmtextwriter = new HtmlTextWriter(stringwriter);
            
            GridViewwade.RenderControl(htmtextwriter);
            Response.Write(stringwriter.ToString());
            Response.End();


        }
        public override void VerifyRenderingInServerForm(Control control)
        {
        }

     
    }
}