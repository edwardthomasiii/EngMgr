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
    public partial class SearchEngineBefore2015City : System.Web.UI.Page
    {
       // SqlConnection wadequery = new SqlConnection(@"Data Source=ENGINEERSERVER\ENGSQLSVR;Initial Catalog=JobTracker;Persist Security Info=True;User ID=sa;Password=***********");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void jobenginebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("jobengine.aspx");
        }

        protected void querybtn_Click(object sender, EventArgs e)
        {
/*
           

            string sqlchoose = ("SELECT [MTC Job No] AS MTC_Job_No, [Customer], [Ship Date] AS Ship_Date, [City/State] AS column1, [cust_ref_no], [cust_job_no], [G A  Dwg] AS G_A_Dwg, [TA Dwg] AS TA_Dwg, [Elec Dwg] AS Elec_Dwg, [Hy Dwg] AS Hy_Dwg, [Pn Dwg] AS Pn_Dwg, [Equipment Type] AS Equipment_Type, [EL_HY Dwg] AS EL_HY_Dwg, [HY_PN Dwg] AS HY_PN_Dwg FROM [oldjobs] WHERE (([Equipment Type] LIKE '%' + @Equipment_Type + '%') OR ([Customer] LIKE '%' + @Customer + '%') OR ([City/State] LIKE '%' + @column1 + '%') OR ([Serial Number] LIKE '%' + @Serial_Number + '%'))");

            SqlCommand getit = new SqlCommand(sqlchoose, wadequery);

            if(equipment == null)
            {
                equipment.Text = "%";
                getit.Parameters.Add("@Equipment_Type", SqlDbType.NVarChar).Value = equipment.Text;
            }
            else
            {
                getit.Parameters.Add("@Equipment_Type", SqlDbType.NVarChar).Value = equipment.Text;
            }
            if (city == null)
            {
                city.Text = "%";
            }
            if (customer == null)
            {
                customer.Text = "%";
            }
            if (serialnumber==null)
            {
                serialnumber.Text = "%";
            }

            wadequery.Open();
            getit.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = getit;
            DataSet ds = new DataSet();
            da.Fill(ds, "[Equipment Type]");

            */
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