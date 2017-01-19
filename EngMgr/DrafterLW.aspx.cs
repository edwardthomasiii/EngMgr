﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EngMgr
{
    public partial class DrafterLW : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public override void VerifyRenderingInServerForm(Control control)
        {
        }
        protected void ExportToExcelBtn_Click(object sender, EventArgs e)
        {
            //clears the content from the metadata
            Response.ClearContent();
            //defines the function to apply i.e. download etc...
            Response.AppendHeader("content-disposition", "attachment; filename=LW_Assignment.xls");
            //defines the action type you are doing  i.e. downloading etc
            Response.ContentType = "application/excel";
            //using system IO we use the class for stringwriter and htmltextwriter to import the gridview
            System.IO.StringWriter stringwriter = new System.IO.StringWriter();
            HtmlTextWriter htmltextwriter = new HtmlTextWriter(stringwriter);
            //NOW we assign the CURRENT grid view to the html textwriter because the html has the content and the controls
            DrafterMechanicalGridView.RenderControl(htmltextwriter);
            Response.Write(stringwriter.ToString());
            Response.End();
        }
    }
}