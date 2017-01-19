<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="DirectorDefault.aspx.cs" Inherits="EngMgr.DirectorDefault" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
    .auto-style3 {
        text-align: center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        From: <asp:TextBox ID="FromDateTextBox" runat="server" onkeydown="return(event.KeyCode==13)"   AutoCompleteType="Disabled" TabIndex="1" ValidateRequestMode="Disabled" ViewStateMode="Enabled" Wrap="False"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="FromDateTextBox_CalendarExtender" runat="server" BehaviorID="FromDateTextBox_CalendarExtender" TargetControlID="FromDateTextBox" PopupPosition="BottomRight" ValidateRequestMode="Disabled" ViewStateMode="Enabled">
        </ajaxToolkit:CalendarExtender>
        &nbsp; To: <asp:TextBox ID="ToDateTextBox" runat="server" OnKeyDown="return (event.KeyCode==13);" AutoCompleteType="Disabled" TabIndex="2"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="ToDateTextBox_CalendarExtender" runat="server" BehaviorID="ToDateTextBox_CalendarExtender" TargetControlID="ToDateTextBox">
        </ajaxToolkit:CalendarExtender>
    </asp:Panel>
    <br />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p class="auto-style3">
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="ITEBtn" runat="server" Text="Items Through Engineering Report" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" OnClick="ITEBtn_Click" Width="300px" TabIndex="3" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="CJSBtn" runat="server" Text="Current Job Status Report" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" OnClick="CJSBtn_Click" Width="300px" TabIndex="4" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="WTRBtn" runat="server" Text="Work Time Report" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" OnClick="WTRBtn_Click" Width="300px" TabIndex="5" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="PRBtn" runat="server" Text="Personnel Report" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" Width="300px" PostBackUrl="~/DirectorPersonnelReport.aspx" TabIndex="6" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="ALTBtn" runat="server" Text="Adjust Lead Times" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" Width="300px" PostBackUrl="~/DirectorAdjustLeadTimes.aspx" TabIndex="7" />
    </p>
    <rsweb:ReportViewer ID="DirectorReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%"  Visible="False" Height="1500px" PageCountMode="Actual" ToolBarItemBorderStyle="Outset">
        <LocalReport ReportPath="Current_Job_Status.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="BW" />
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="JT" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ScriptManager ID="ScriptManagerDirector" runat="server">
    </asp:ScriptManager>
    </asp:Content>
