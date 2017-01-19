<%@ Page Title="" Language="C#" MasterPageFile="~/ECR.Master" AutoEventWireup="true" CodeBehind="ECRDefault.aspx.cs" Inherits="EngMgr.ECRDefault" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<br />
<rsweb:ReportViewer ID="ReportViewer1" runat="server">
</rsweb:ReportViewer>
</asp:Content>



