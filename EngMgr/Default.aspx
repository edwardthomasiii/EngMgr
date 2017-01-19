<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EngMgr.Default" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
<br />
Engineering Status Report (ESR)<br />
    </strong><br />
<rsweb:ReportViewer ID="ESRReportViewer" runat="server" Height="500px" PageCountMode="Actual" ViewStateMode="Enabled" Width="100%" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" ToolBarItemBorderStyle="Outset" ToolBarItemBorderWidth="5px">
    <LocalReport ReportPath="Engineering_Status_Report.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="JTDS" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EngMgr.JobTrackerDataSetTableAdapters.JobEngineTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_dbid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OSD" Type="DateTime" />
            <asp:Parameter Name="SHIPDATE" Type="DateTime" />
            <asp:Parameter Name="DATERECVD" Type="DateTime" />
            <asp:Parameter Name="CONUMBER" Type="String" />
            <asp:Parameter Name="CUSTOMER" Type="String" />
            <asp:Parameter Name="EQUIPMENT" Type="String" />
            <asp:Parameter Name="FIRSTAPPDATE" Type="DateTime" />
            <asp:Parameter Name="RELTOPLAN" Type="DateTime" />
            <asp:Parameter Name="ELHYRELTOPLAN" Type="DateTime" />
            <asp:Parameter Name="HPU" Type="String" />
            <asp:Parameter Name="CURRENTSTATUS" Type="String" />
            <asp:Parameter Name="NOTES" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="grp" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="OSD" Type="DateTime" />
            <asp:Parameter Name="SHIPDATE" Type="DateTime" />
            <asp:Parameter Name="DATERECVD" Type="DateTime" />
            <asp:Parameter Name="CONUMBER" Type="String" />
            <asp:Parameter Name="CUSTOMER" Type="String" />
            <asp:Parameter Name="EQUIPMENT" Type="String" />
            <asp:Parameter Name="FIRSTAPPDATE" Type="DateTime" />
            <asp:Parameter Name="RELTOPLAN" Type="DateTime" />
            <asp:Parameter Name="ELHYRELTOPLAN" Type="DateTime" />
            <asp:Parameter Name="HPU" Type="String" />
            <asp:Parameter Name="CURRENTSTATUS" Type="String" />
            <asp:Parameter Name="NOTES" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="grp" Type="String" />
            <asp:Parameter Name="Original_dbid" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
</asp:Content>
