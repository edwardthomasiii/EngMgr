<%@ Page Title="" Language="C#" MasterPageFile="~/ECR.Master" AutoEventWireup="true" CodeBehind="ECRDefault.aspx.cs" Inherits="EngMgr.ECRDefault" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:HyperLink ID="ECRHyperLink" runat="server" NavigateUrl="https://mtcworldwide.sharepoint.com/intranet/engineering/changes/Lists/ECR1/AllItems.aspx">ECR Site</asp:HyperLink>
    <br />
    <asp:HyperLink ID="ECOHyperLink" runat="server" NavigateUrl="https://mtcworldwide.sharepoint.com/intranet/engineering/changes/Lists/ECR/SummaryView.aspx">ECO Site</asp:HyperLink>
    <br />
    <br />
<br />
</asp:Content>



