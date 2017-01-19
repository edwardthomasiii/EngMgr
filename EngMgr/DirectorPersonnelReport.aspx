<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="DirectorPersonnelReport.aspx.cs" Inherits="EngMgr.DirectorPersonnelReport" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="WTRBtn" runat="server" Text="Back To Master Reports" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" Width="300px" TabIndex="5" PostBackUrl="~/DirectorDefault.aspx" />
    &nbsp;&nbsp;&nbsp;
    <asp:Button ID="ALTBtn" runat="server" Text="Adjust Lead Times" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" Width="300px" PostBackUrl="~/DirectorAdjustLeadTimes.aspx" TabIndex="7" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Panel ID="SearchPnl" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        Date Range:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From:
        <asp:TextBox ID="FromDateTextBox" runat="server" onkeydown="return(event.KeyCode==13)" AutoCompleteType="Disabled"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="FromDateTextBox_CalendarExtender" runat="server" BehaviorID="FromDateTextBox_CalendarExtender" TargetControlID="FromDateTextBox"  />
        &nbsp; To:
        <asp:TextBox ID="ToDateTextBox" runat="server" AutoCompleteType="Disabled" onkeydown="return(event.KeyCode==13);"></asp:TextBox>
        <ajaxToolkit:CalendarExtender ID="ToDateTextBox_CalendarExtender" runat="server" BehaviorID="ToDateTextBox_CalendarExtender" TargetControlID="ToDateTextBox">
        </ajaxToolkit:CalendarExtender>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </asp:Panel>
    <strong><em>
    <asp:Panel ID="EngineerPnl" runat="server" Font-Names="Tahoma" Font-Size="X-Large" Width="100%">
        <div class="auto-style2">
            <strong><em>Engineers:&nbsp;
            <asp:Button ID="RAQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="RAQueryBtn_Click" Text="Reg A." />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="RGQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="RGQueryBtn_Click" Text="Rodney G." />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="TLQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="TLQueryBtn_Click" Text="Trae L." />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="BRQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="BRQueryBtn_Click" Text="Bob R." />
            &nbsp;&nbsp;&nbsp;&nbsp; All Jobs Report:&nbsp;
            <asp:Button ID="AJQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="AJQueryBtn_Click" Text="All Jobs" />
            </em></strong>
        </div>
    </asp:Panel>
&nbsp;</em></strong>&nbsp;&nbsp;&nbsp;
    <div class="auto-style2">
        <asp:Panel ID="DrafterPnl" runat="server" Font-Size="X-Large">
            <strong><em>Drafters:&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BWQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="BWQueryBtn_Click" Text="Bill W." />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="JTQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="JTQueryBtn_Click" Text="Joe T." Width="81px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="LWQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="LWQueryBtn_Click" Text="Lillian W." />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="HCQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="HCQueryBtn_Click" Text="Hector C." />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="RCQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="RCQueryBtn_Click" Text="Randy C." />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="RWQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="RWQueryBtn_Click" Text="Rick W." />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="JRQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="JRQueryBtn_Click" Text="Joe R." />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="WWQueryBtn" runat="server" BackColor="#FFCC00" BorderColor="#996600" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" OnClick="WWQueryBtn_Click" Text="Wayne W." />
            </em></strong>
        </asp:Panel>
    </div>
    <br />
    <rsweb:ReportViewer ID="PersonnelReportViewer" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="1000px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
        <LocalReport ReportPath="Report_AJ.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="AJ" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EngMgr.AJAssignmentsTableAdapters.AJAssignmentsTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="FromDateTextBox" Name="SD" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="ToDateTextBox" Name="ED" PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EngMgr.RAAssignmentsTableAdapters.RAAssignmentsTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="FromDateTextBox" Name="SD" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="ToDateTextBox" Name="ED" PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EngMgr.TLAssignmentsTableAdapters.TLAssignmentsTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="FromDateTextBox" Name="SD" PropertyName="Text" Type="DateTime" />
            <asp:ControlParameter ControlID="ToDateTextBox" Name="ED" PropertyName="Text" Type="DateTime" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
