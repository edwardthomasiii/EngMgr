<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="EngMgr.AdminDefault" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        color: #FFFFFF;
        background-color: #416AE4;
    }
    .auto-style4 {
        color: #FFFFFF;
        background-color: #FF9933;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
<asp:Button ID="New_Orders_Btn" runat="server" BorderColor="#B6DFED" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style3" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" Height="50px" Text="New/Edit Orders" Width="200px" PostBackUrl="~/AdminNewOrder.aspx" />
</strong>&nbsp;&nbsp;&nbsp; <strong>
<asp:Button ID="Orders_Grid_View_Btn" runat="server" BorderColor="#B6DFED" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style3" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" Height="50px" Text="Orders Grid View" Width="200px" />
</strong>&nbsp;&nbsp;&nbsp; <strong>
<asp:Button ID="View_Orders_Btn" runat="server" BorderColor="#B6DFED" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style3" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" Height="50px" Text="View an Order" Width="200px" />
</strong>&nbsp;&nbsp;&nbsp; <strong>
<asp:Button ID="Grid_View_Btn" runat="server" BorderColor="#B6DFED" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style3" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" Height="50px" Text="Grid View Orders" Width="200px" />
</strong>&nbsp;&nbsp;&nbsp; <strong>
<asp:Button ID="Composite_report_Btn" runat="server" BorderColor="#B6DFED" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style3" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" Height="50px" Text="Composite report" Width="200px" PostBackUrl="~/AdminCompositeStatusReport.aspx" />
<br />
<br />
<asp:Button ID="Custom_manual_Orders_Btn" runat="server" BorderColor="#B6DFED" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style4" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" Height="50px" Text="Custom Manual Orders" Width="200px" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="Stock_Manual_Orders_Btn" runat="server" BorderColor="#B6DFED" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style4" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" Height="50px" Text="Stock Manual Orders" Width="200px" />
&nbsp;&nbsp;&nbsp;
<asp:Button ID="Label_Orders_Btn" runat="server" BorderColor="#B6DFED" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style4" Font-Bold="True" Font-Names="Tahoma" Font-Size="Medium" Height="50px" Text="Label Orders" Width="200px" />
    <br />
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
<br />
    <rsweb:ReportViewer ID="AdminDefaultReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Director_Current_Job_Status.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="BW" Name="BW" />
                <rsweb:ReportDataSource DataSourceId="JT" Name="JT" />
                <rsweb:ReportDataSource DataSourceId="LW" Name="LW" />
                <rsweb:ReportDataSource DataSourceId="HC" Name="HC" />
                <rsweb:ReportDataSource DataSourceId="RW" Name="RW" />
                <rsweb:ReportDataSource DataSourceId="JR" Name="JR" />
                <rsweb:ReportDataSource DataSourceId="RC" Name="RC" />
                <rsweb:ReportDataSource DataSourceId="WW" Name="WW" />
                <rsweb:ReportDataSource DataSourceId="RA" Name="RA" />
                <rsweb:ReportDataSource DataSourceId="RG" Name="RG" />
                <rsweb:ReportDataSource DataSourceId="TL" Name="TL" />
                <rsweb:ReportDataSource DataSourceId="BR" Name="BR" />
                <rsweb:ReportDataSource DataSourceId="AJ" Name="AJ" />
                <rsweb:ReportDataSource DataSourceId="UA" Name="UA" />
                <rsweb:ReportDataSource DataSourceId="GADO" Name="GADO" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:SqlDataSource ID="GADO" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="GADOCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="UA" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="UACurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="AJ" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="AJCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="BR" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="BRCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="TL" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="TLCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="RG" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="RGCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="RA" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="RACurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="WW" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="WWCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="RC" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="RCCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="JR" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="JRCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="RW" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="RWCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="HC" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="HCCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="LW" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="LWCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="JT" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="JTCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <asp:SqlDataSource ID="BW" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="BWCurrentJobStatus" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    <br />
</strong>
</asp:Content>
