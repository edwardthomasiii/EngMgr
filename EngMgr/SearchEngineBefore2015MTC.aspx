<%@ Page Title="" Language="C#" MasterPageFile="~/SearchEngine.Master" AutoEventWireup="true" CodeBehind="SearchEngineBefore2015MTC.aspx.cs" Inherits="EngMgr.SearchEngineBefore2015MTC" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="SearchPnl" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" Width="100%">
        <strong>Click on the Yellow button to search by that category</strong></asp:Panel>
    <table class="auto-style11">
        <tr>
            <td>
                <asp:Button ID="esearchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="Equipment Search" PostBackUrl="~/SearchEngineBefore2015Equipment.aspx" />
            </td>
            <td>
                <asp:Button ID="csearchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="Company Search" PostBackUrl="~/SearchEngineBefore2015Company.aspx" />
            </td>
            <td>
                <asp:Button ID="Citsrchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="City/Location Search" PostBackUrl="~/SearchEngineBefore2015City.aspx" />
            </td>
            <td>
                <asp:Button ID="snsrchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="Serial Number Search" PostBackUrl="~/SearchEngineBefore2015SN.aspx" />
            </td>
            <td>
                <asp:Button ID="cosrchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="MTC Job # Search" PostBackUrl="~/SearchEngineBefore2015MTC.aspx" />
            </td>
        </tr>
        <tr>
            <td>
                Equipment<br />
                <asp:SqlDataSource ID="mtcds" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT [MTC Job No] AS MTC_Job_No FROM [oldjobs]"></asp:SqlDataSource>
            </td>
            <td>
                Company<br />
            </td>
            <td>
                City/Location<br />
            </td>
            <td>
                Serial Number<br />
            </td>
            <td>MTC #<br />
                <ajaxToolkit:ComboBox ID="mtcddl" runat="server" AutoPostBack="True" DataSourceID="mtcds" DataTextField="MTC_Job_No" DataValueField="MTC_Job_No" MaxLength="0" style="display: inline;">
                </ajaxToolkit:ComboBox>
                <br />
            </td>
        </tr>
        </table>
    <asp:Button ID="excelexporter" runat="server" BackColor="Orange" BorderColor="Brown" BorderStyle="Outset" BorderWidth="10px" Text="Export to Excel" />
    <asp:ScriptManager ID="ScriptManagerecitywade" runat="server">
    </asp:ScriptManager>
    <br />
    <asp:GridView ID="GridViewwade" runat="server" AutoGenerateColumns="False" DataSourceID="eng2wadeds" CellPadding="4" HorizontalAlign="Center" ShowHeaderWhenEmpty="True" Width="100%" AllowSorting="True" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:BoundField DataField="MTC_Job_No" HeaderText="MTC_Job_No" SortExpression="MTC_Job_No" />
            <asp:BoundField DataField="Customer" HeaderText="Customer" SortExpression="Customer" />
            <asp:BoundField DataField="Equipment_Type" HeaderText="Equipment" SortExpression="Equipment_Type" />
            <asp:BoundField DataField="Serial_Number" HeaderText="Serial Number" SortExpression="Serial_Number" />
            <asp:BoundField DataField="column1" HeaderText="City/State" SortExpression="column1" />
            <asp:BoundField DataField="Ship_Date" HeaderText="Ship Date" SortExpression="Ship_Date" DataFormatString="{0:d}" />
            <asp:BoundField DataField="G_A_Dwg" HeaderText="GA Dwg" SortExpression="G_A_Dwg" />
            <asp:BoundField DataField="Install_Dwg" HeaderText="Install_Dwg" SortExpression="Install_Dwg" />
            <asp:BoundField DataField="Sales_Dwg" HeaderText="Sales Dwg" SortExpression="Sales_Dwg" />
            <asp:BoundField DataField="TA_Dwg" HeaderText="TA Dwg" SortExpression="TA_Dwg" />
            <asp:BoundField DataField="Elec_Dwg" HeaderText="El Dwg" SortExpression="Elec_Dwg" />
            <asp:BoundField DataField="EL_HY_Dwg" HeaderText="EL/HY Dwg" SortExpression="EL_HY_Dwg" />
            <asp:BoundField DataField="Hy_Dwg" HeaderText="Hy Dwg" SortExpression="Hy_Dwg" />
            <asp:BoundField DataField="HY_PN_Dwg" HeaderText="HY/PN Dwg" SortExpression="HY_PN_Dwg" />
            <asp:BoundField DataField="Pn_Dwg" HeaderText="Pn Dwg" SortExpression="Pn_Dwg" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="eng2wadeds" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT [MTC Job No] AS MTC_Job_No, [Customer], [Equipment Type] AS Equipment_Type, [Serial Number] AS Serial_Number, [City/State] AS column1, [Ship Date] AS Ship_Date, [G A  Dwg] AS G_A_Dwg, [Install Dwg] AS Install_Dwg, [Sales Dwg] AS Sales_Dwg, [TA Dwg] AS TA_Dwg, [Elec Dwg] AS Elec_Dwg, [EL_HY Dwg] AS EL_HY_Dwg, [Hy Dwg] AS Hy_Dwg, [HY_PN Dwg] AS HY_PN_Dwg, [Pn Dwg] AS Pn_Dwg FROM [oldjobs] WHERE ([MTC Job No] LIKE '%' + @MTC_Job_No + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="mtcddl" Name="MTC_Job_No" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
