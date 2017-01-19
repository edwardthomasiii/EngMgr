<%@ Page Title="" Language="C#" MasterPageFile="~/SearchEngine.master" AutoEventWireup="true" CodeBehind="SearchEngineDefault.aspx.cs" Inherits="EngMgr.SearchEngine" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Panel ID="Panel1" runat="server" Width="100%">
        <asp:Button ID="engine2wadebtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="Outset" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" Text="Orders BEFORE July 2015" PostBackUrl="~/SearchEngineBefore2015Equipment.aspx" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="jobenginebtn" runat="server" BackColor="Lime" BorderColor="Olive" BorderStyle="Outset" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="Larger" Text="Orders AFTER July 2015" PostBackUrl="~/SearchEngineAfter2015Equipment.aspx" />
    </asp:Panel>
    <br />
    </asp:Content>


