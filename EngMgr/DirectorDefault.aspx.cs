using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Reporting.WebForms;
using System.Data;
using System.Data.SqlClient;

namespace EngMgr
{


    public partial class DirectorDefault : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //loads dates for the first time
                ToDateTextBox.Text = DateTime.Today.ToShortDateString();
                FromDateTextBox.Text = DateTime.Today.AddDays(-30).ToShortDateString();


            }

            else
            {
                //Loads Dates Selected on refresh
                ToDateTextBox.Text = ToDateTextBox.Text;
                FromDateTextBox.Text = FromDateTextBox.Text;

            }
        }
        private void ShowITE()
        {

            //reset
            DirectorReportViewer.Reset();
            //datasource
            DataTable ITEDT = ITEData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource ITERDS = new ReportDataSource("DataSet1", ITEDT);
            DirectorReportViewer.LocalReport.DataSources.Add(ITERDS);
            //path
            DirectorReportViewer.LocalReport.ReportPath = "Directordefault.rdlc";
            //parameters
            ReportParameter[] ITEPAR = new ReportParameter[]
            {
                new ReportParameter("FromDate",FromDateTextBox.Text),
                new ReportParameter("ToDate",ToDateTextBox.Text)
            };
            //refresh
            DirectorReportViewer.LocalReport.Refresh();
        }
        private void ShowWTR()
        {

            //reset
            DirectorReportViewer.Reset();
            //datasource
            DataTable WTRDT = WTRData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource WTRRDS = new ReportDataSource("DataSet1", WTRDT);
            DirectorReportViewer.LocalReport.DataSources.Add(WTRRDS);
            //path
            DirectorReportViewer.LocalReport.ReportPath = "Director_WorkTime_Report.rdlc";
            //parameters
            ReportParameter[] PARAM = new ReportParameter[]
            {
              
                new ReportParameter("FromDate",FromDateTextBox.Text),
                new ReportParameter("ToDate",FromDateTextBox.Text)
            };
            //refresh
            DirectorReportViewer.LocalReport.Refresh();
            
        }
        private DataTable ITEData(DateTime FromDate, DateTime ToDate)
        {
            /*Create ItemsThroughEngineering as Stored Procedure (@SD Datetime,@ED DateTime)
             SELECT COnumber, DateRecvd AS Date_Recieved, Item_category AS Item, TACompDAte AS TAComp, TAESTRELDATE AS TADue, lead_setter AS [Group], COUNT(ID) AS Counter, TARELtoPlanDate 
             FROM JobEngine 
             GROUP BY COnumber, DateRecvd, Status, Item_category, TACompDAte, TAESTRELDATE, lead_setter, TARELtoPlanDate 
             HAVING (TARELtoPlanDate BETWEEN @SD AND @ED)*/

            DataTable ITEDT = new DataTable();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("ItemsThroughEngineering", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ITEADP = new SqlDataAdapter(CM);
                ITEADP.Fill(ITEDT);
            }
            return ITEDT;
        }
        private DataTable WTRData(DateTime FromDate, DateTime ToDate)
        {
          

            DataTable WTRDT = new DataTable();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("FoodWorkTimeReport", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter WTRADP = new SqlDataAdapter(CM);
                WTRADP.Fill(WTRDT);
            }
            return WTRDT;
            
        }
        private void ShowCJS()
        {
            //reset
            DirectorReportViewer.Reset();
            //datasource
            DataTable BWDT = new DataTable();
            DataTable JTDT = new DataTable();
            DataTable LWDT = new DataTable();
            DataTable HCDT = new DataTable();
            DataTable RWDT = new DataTable();
            DataTable JRDT = new DataTable();
            DataTable RCDT = new DataTable();
            DataTable WWDT = new DataTable();
            DataTable RADT = new DataTable();
            DataTable RGDT = new DataTable();
            DataTable TLDT = new DataTable();
            DataTable BRDT = new DataTable();
            DataTable AJDT = new DataTable();
            DataTable UADT = new DataTable();
            DataTable GADODT = new DataTable();
            //connections string used to establish the connection to DB
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection CJSCN = new SqlConnection(cs))
            {
                //SQLCommands
                SqlCommand BWCMD = new SqlCommand("BWCurrentJobStatus", CJSCN);
                SqlCommand JTCMD = new SqlCommand("JTCurrentJobStatus", CJSCN);
                SqlCommand LWCMD = new SqlCommand("LWCurrentJobStatus", CJSCN);
                SqlCommand HCCMD = new SqlCommand("HCCurrentJobStatus", CJSCN);
                SqlCommand RWCMD = new SqlCommand("RWCurrentJobStatus", CJSCN);
                SqlCommand RCCMD = new SqlCommand("RCCurrentJobStatus", CJSCN);
                SqlCommand WWCMD = new SqlCommand("WWCurrentJobStatus", CJSCN);
                SqlCommand JRCMD = new SqlCommand("JRCurrentJobStatus", CJSCN);
                SqlCommand RACMD = new SqlCommand("RACurrentJobStatus", CJSCN);
                SqlCommand RGCMD = new SqlCommand("RGCurrentJobStatus", CJSCN);
                SqlCommand TLCMD = new SqlCommand("TLCurrentJobStatus", CJSCN);
                SqlCommand BRCMD = new SqlCommand("BRCurrentJobStatus", CJSCN);
                SqlCommand AJCMD = new SqlCommand("AJCurrentJobStatus", CJSCN);
                SqlCommand UACMD = new SqlCommand("UACurrentJobStatus", CJSCN);
                SqlCommand GADOCMD = new SqlCommand("GADOCurrentJobStatus", CJSCN);


                //SQLCommand Types
                BWCMD.CommandType = CommandType.StoredProcedure;
                JTCMD.CommandType = CommandType.StoredProcedure;
                LWCMD.CommandType = CommandType.StoredProcedure;
                HCCMD.CommandType = CommandType.StoredProcedure;
                RWCMD.CommandType = CommandType.StoredProcedure;
                RCCMD.CommandType = CommandType.StoredProcedure;
                WWCMD.CommandType = CommandType.StoredProcedure;
                JRCMD.CommandType = CommandType.StoredProcedure;
                RACMD.CommandType = CommandType.StoredProcedure;
                RGCMD.CommandType = CommandType.StoredProcedure;
                TLCMD.CommandType = CommandType.StoredProcedure;
                BRCMD.CommandType = CommandType.StoredProcedure;
                AJCMD.CommandType = CommandType.StoredProcedure;
                UACMD.CommandType = CommandType.StoredProcedure;
                GADOCMD.CommandType = CommandType.StoredProcedure;


                //Report DataSources
                ReportDataSource BW = new ReportDataSource("BW", BWDT);
                ReportDataSource JT = new ReportDataSource("JT", JTDT);
                ReportDataSource LW = new ReportDataSource("LW", LWDT);
                ReportDataSource HC = new ReportDataSource("HC", HCDT);
                ReportDataSource RW = new ReportDataSource("RW", RWDT);
                ReportDataSource RC = new ReportDataSource("RC", RCDT);
                ReportDataSource WW = new ReportDataSource("WW", WWDT);
                ReportDataSource JR = new ReportDataSource("JR", JRDT);
                ReportDataSource RA = new ReportDataSource("RA", RADT);
                ReportDataSource RG = new ReportDataSource("RG", RGDT);
                ReportDataSource TL = new ReportDataSource("TL", TLDT);
                ReportDataSource BR = new ReportDataSource("BR", BRDT);
                ReportDataSource AJ = new ReportDataSource("AJ", AJDT);
                ReportDataSource UA = new ReportDataSource("UA", UADT);
                ReportDataSource GADO = new ReportDataSource("GADO", GADODT);



                //DataAdapters
                SqlDataAdapter BWDA = new SqlDataAdapter(BWCMD);
                SqlDataAdapter JTDA = new SqlDataAdapter(JTCMD);
                SqlDataAdapter LWDA = new SqlDataAdapter(LWCMD);
                SqlDataAdapter HCDA = new SqlDataAdapter(HCCMD);
                SqlDataAdapter RWDA = new SqlDataAdapter(RWCMD);
                SqlDataAdapter RCDA = new SqlDataAdapter(RCCMD);
                SqlDataAdapter WWDA = new SqlDataAdapter(WWCMD);
                SqlDataAdapter JRDA = new SqlDataAdapter(JRCMD);
                SqlDataAdapter RADA = new SqlDataAdapter(RACMD);
                SqlDataAdapter RGDA = new SqlDataAdapter(RGCMD);
                SqlDataAdapter TLDA = new SqlDataAdapter(TLCMD);
                SqlDataAdapter BRDA = new SqlDataAdapter(BRCMD);
                SqlDataAdapter AJDA = new SqlDataAdapter(AJCMD);
                SqlDataAdapter UADA = new SqlDataAdapter(UACMD);
                SqlDataAdapter GADODA = new SqlDataAdapter(GADOCMD);


                //DataAdapters For Filling
                BWDA.Fill(BWDT);
                JTDA.Fill(JTDT);
                LWDA.Fill(LWDT);
                HCDA.Fill(HCDT);
                RWDA.Fill(RWDT);
                RCDA.Fill(RCDT);
                WWDA.Fill(WWDT);
                JRDA.Fill(JRDT);
                RADA.Fill(RADT);
                RGDA.Fill(RGDT);
                TLDA.Fill(TLDT);
                BRDA.Fill(BRDT);
                AJDA.Fill(AJDT);
                UADA.Fill(UADT);
                GADODA.Fill(GADODT);




                //Adding the DataSources to the Report
                DirectorReportViewer.LocalReport.DataSources.Add(BW);
                DirectorReportViewer.LocalReport.DataSources.Add(JT);
                DirectorReportViewer.LocalReport.DataSources.Add(LW);
                DirectorReportViewer.LocalReport.DataSources.Add(HC);
                DirectorReportViewer.LocalReport.DataSources.Add(RW);
                DirectorReportViewer.LocalReport.DataSources.Add(RC);
                DirectorReportViewer.LocalReport.DataSources.Add(WW);
                DirectorReportViewer.LocalReport.DataSources.Add(JR);
                DirectorReportViewer.LocalReport.DataSources.Add(RA);
                DirectorReportViewer.LocalReport.DataSources.Add(RG);
                DirectorReportViewer.LocalReport.DataSources.Add(TL);
                DirectorReportViewer.LocalReport.DataSources.Add(BR);
                DirectorReportViewer.LocalReport.DataSources.Add(AJ);
                DirectorReportViewer.LocalReport.DataSources.Add(UA);
                DirectorReportViewer.LocalReport.DataSources.Add(GADO);

            }
            //path
            DirectorReportViewer.LocalReport.ReportPath = "Director_Current_Job_Status.rdlc";
            //parameters none at this time
            //refresh
            DirectorReportViewer.LocalReport.Refresh();
        }
        protected void ITEBtn_Click(object sender, EventArgs e)
        {
            DirectorReportViewer.Visible = true;
            ShowITE();
        }
        protected void CJSBtn_Click(object sender, EventArgs e)
        {
          
                DirectorReportViewer.Visible = true;
                ShowCJS();

        }     
        protected void WTRBtn_Click(object sender, EventArgs e)
        {
           FromDateTextBox.Text = Convert.ToDateTime(ToDateTextBox.Text).AddYears(-1).ToShortDateString();
            
            DirectorReportViewer.Visible = true;
            ShowWTR();
        
        } 
    }
}