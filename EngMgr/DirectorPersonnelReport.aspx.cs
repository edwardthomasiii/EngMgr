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
    public partial class DirectorPersonnelReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                //loads dates for the first time
                ToDateTextBox.Text = DateTime.Today.ToShortDateString();
                FromDateTextBox.Text = DateTime.Today.AddYears(-1).ToShortDateString();


            }

            else
            {
                //Loads Dates Selected on refresh
                ToDateTextBox.Text = ToDateTextBox.Text;
                FromDateTextBox.Text = FromDateTextBox.Text;

            }
        }
        private DataTable TLData(DateTime FromDate, DateTime ToDate)
        {
            DataTable TLDT = new DataTable();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("TLAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter TLADP = new SqlDataAdapter(CM);
                TLADP.Fill(TLDT);
            }
            return TLDT;
        }
        protected void TLQueryBtn_Click(object sender, EventArgs e)
        {
            PersonnelReportViewer.Reset();
            //datasource
            DataTable TLDT = TLData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource TLRDS = new ReportDataSource("TL", TLDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(TLRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_TL.rdlc"; ;
           
            //refresh
            PersonnelReportViewer.LocalReport.Refresh();
        }

        private DataTable RAData(DateTime FromDate, DateTime ToDate)
        {
            DataTable RADT = new DataTable();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("RAAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter TLADP = new SqlDataAdapter(CM);
                TLADP.Fill(RADT);
            }
            return RADT;
        }
        protected void RAQueryBtn_Click(object sender, EventArgs e)
        {
            PersonnelReportViewer.Reset();
            //datasource
            DataTable RADT = RAData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource RARDS = new ReportDataSource("RA", RADT);
            PersonnelReportViewer.LocalReport.DataSources.Add(RARDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_RA.rdlc";
          
            //refresh
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable RGData(DateTime FromDate, DateTime ToDate)
        {
            DataTable RGDT = new DataTable();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("RGAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter TLADP = new SqlDataAdapter(CM);
                TLADP.Fill(RGDT);
            }
            return RGDT;
        }
        protected void RGQueryBtn_Click(object sender, EventArgs e)
        {
            PersonnelReportViewer.Reset();
            //datasource
            DataTable RGDT = RGData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource RGRDS = new ReportDataSource("RG", RGDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(RGRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_RG.rdlc";
           
            //refresh
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable BRData(DateTime FromDate, DateTime ToDate)
        {
            DataTable BRDT = new DataTable();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("BRAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(BRDT);
            }
            return BRDT;
        }
        protected void BRQueryBtn_Click(object sender, EventArgs e)
        {
            PersonnelReportViewer.Reset();
            //datasource
            DataTable BRDT = BRData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource BRRDS = new ReportDataSource("BR", BRDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(BRRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_BR.rdlc";
          
            //refresh
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable AJData(DateTime FromDate, DateTime ToDate)
        {
            DataTable AJDT = new DataTable();
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("AJAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter TLADP = new SqlDataAdapter(CM);
                TLADP.Fill(AJDT);
            }
            return AJDT;
        }
        protected void AJQueryBtn_Click(object sender, EventArgs e)
        {
            PersonnelReportViewer.Reset();
            //datasource
            DataTable AJDT = AJData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource AJRDS = new ReportDataSource("AJ", AJDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(AJRDS);
            
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_AJ.rdlc";
          
            PersonnelReportViewer.LocalReport.Refresh();
        }

        private DataTable BWData(DateTime FromDate, DateTime ToDate)
        {
            DataTable BWDT = new DataTable();
            //connection string called from the web.config file
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("BWAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(BWDT);
            }
            return BWDT;
        }
        protected void BWQueryBtn_Click(object sender, EventArgs e)
        {
            //reset the Report
            PersonnelReportViewer.Reset();
            //datasource
            DataTable BWDT = BWData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource BWRDS = new ReportDataSource("BW", BWDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(BWRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_BW.rdlc";
            //refresh the report
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable JTData(DateTime FromDate, DateTime ToDate)
        {
            DataTable JTDT = new DataTable();
            //connection string called from the web.config file
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("JTAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(JTDT);
            }
            return JTDT;
        }
        protected void JTQueryBtn_Click(object sender, EventArgs e)
        {
            //reset the Report
            PersonnelReportViewer.Reset();
            //datasource
            DataTable JTDT = JTData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource JTRDS = new ReportDataSource("JT", JTDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(JTRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_JT.rdlc";
            //refresh the report
            PersonnelReportViewer.LocalReport.Refresh();
        }

        private DataTable LWData(DateTime FromDate, DateTime ToDate)
        {
            DataTable LWDT = new DataTable();
            //connection string called from the web.config file
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("LWAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(LWDT);
            }
            return LWDT;
        }

        protected void LWQueryBtn_Click(object sender, EventArgs e)
        {
            //reset the Report
            PersonnelReportViewer.Reset();
            //datasource
            DataTable LWDT = LWData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource LWRDS = new ReportDataSource("LW", LWDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(LWRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_LW.rdlc";
            //refresh the report
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable HCData(DateTime FromDate, DateTime ToDate)
        {
            DataTable HCDT = new DataTable();
            //connection string called from the web.config file
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("HCAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(HCDT);
            }
            return HCDT;
        }
        protected void HCQueryBtn_Click(object sender, EventArgs e)
        {
            //reset the Report
            PersonnelReportViewer.Reset();
            //datasource
            DataTable HCDT = HCData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource HCRDS = new ReportDataSource("HC", HCDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(HCRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_HC.rdlc";
            //refresh the report
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable RCData(DateTime FromDate, DateTime ToDate)
        {
            DataTable RCDT = new DataTable();
            //connection string called from the web.config file
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("RCAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(RCDT);
            }
            return RCDT;
        }
        protected void RCQueryBtn_Click(object sender, EventArgs e)
        {
            //reset the Report
            PersonnelReportViewer.Reset();
            //datasource
            DataTable RCDT = RCData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource RCRDS = new ReportDataSource("RC", RCDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(RCRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_RC.rdlc";
            //refresh the report
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable RWData(DateTime FromDate, DateTime ToDate)
        {
            DataTable RWDT = new DataTable();
            //connection string called from the web.config file
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("RWAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(RWDT);
            }
            return RWDT;
        }
        protected void RWQueryBtn_Click(object sender, EventArgs e)
        {
            //reset the Report
            PersonnelReportViewer.Reset();
            //datasource
            DataTable RWDT = RWData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource RWRDS = new ReportDataSource("RW", RWDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(RWRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_RW.rdlc";
            //refresh the report
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable JRData(DateTime FromDate, DateTime ToDate)
        {
            DataTable JRDT = new DataTable();
            //connection string called from the web.config file
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("JRAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(JRDT);
            }
            return JRDT;
        }
        protected void JRQueryBtn_Click(object sender, EventArgs e)
        {
            //reset the Report
            PersonnelReportViewer.Reset();
            //datasource
            DataTable JRDT = JRData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource JRRDS = new ReportDataSource("JR", JRDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(JRRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_JR.rdlc";
            //refresh the report
            PersonnelReportViewer.LocalReport.Refresh();
        }
        private DataTable WWData(DateTime FromDate, DateTime ToDate)
        {
            DataTable WWDT = new DataTable();
            //connection string called from the web.config file
            string cs = System.Configuration.ConfigurationManager.ConnectionStrings["maincs"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(cs))
            {
                SqlCommand CM = new SqlCommand("JRAssignments", cn);
                CM.CommandType = CommandType.StoredProcedure;
                CM.Parameters.Add("@SD", SqlDbType.DateTime).Value = FromDate;
                CM.Parameters.Add("@ED", SqlDbType.DateTime).Value = ToDate;
                SqlDataAdapter ADP = new SqlDataAdapter(CM);
                ADP.Fill(WWDT);
            }
            return WWDT;
        }
        protected void WWQueryBtn_Click(object sender, EventArgs e)
        {
            //reset the Report
            PersonnelReportViewer.Reset();
            //datasource
            DataTable WWDT = WWData(DateTime.Parse(FromDateTextBox.Text), DateTime.Parse(ToDateTextBox.Text));
            ReportDataSource WWRDS = new ReportDataSource("WW", WWDT);
            PersonnelReportViewer.LocalReport.DataSources.Add(WWRDS);
            //path
            PersonnelReportViewer.LocalReport.ReportPath = "Report_WW.rdlc";
            //refresh the report
            PersonnelReportViewer.LocalReport.Refresh();
        }
    }
}