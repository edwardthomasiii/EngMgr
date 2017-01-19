<%@ Page Title="" Language="C#" MasterPageFile="~/SearchEngine.Master" AutoEventWireup="true" CodeBehind="SearchEngineAfter2015MTC.aspx.cs" Inherits="EngMgr.SearchEngineAfter2015MTC" EnableEventValidation="false" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="SearchPnl" runat="server" Font-Bold="True" Font-Names="Tahoma" Font-Size="X-Large" Width="100%">
        <strong>Click on the Yellow button to search by that category</strong></asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="auto-style8">
            <table class="auto-style11">
                <tr>
                    <td>
                        <asp:Button ID="esearchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="Equipment Search" PostBackUrl="~/SearchEngineAfter2015Equipment.aspx" />
                    </td>
                    <td>
                        <asp:Button ID="csearchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="Company Search" PostBackUrl="~/SearchEngineAfter2015Company.aspx" />
                    </td>
                    <td>
                        <asp:Button ID="CityLocBtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="City/Location Search" PostBackUrl="~/SearchEngineAfter2015City.aspx" />
                    </td>
                    <td>
                        <asp:Button ID="snsrchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="Serial Number Search" PostBackUrl="~/SearchEngineAfter2015SN.aspx" />
                    </td>
                    <td>
                        <asp:Button ID="cosrchbtn" runat="server" BackColor="Yellow" BorderColor="Orange" BorderStyle="None" BorderWidth="10px" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large" Text="MTC Job # Search" PostBackUrl="~/SearchEngineAfter2015MTC.aspx" />
                    </td>
                </tr>
                <tr>
                    <td>Equipment<br />
                        <br />
                        <asp:SqlDataSource ID="itemds" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT DISTINCT [COnumber] FROM [JobEngine]"></asp:SqlDataSource>
                    </td>
                    <td>Company<br /> </td>
                    <td>City/Location</td>
                    <td>Serial Number<br /> </td>
                    <td>MTC #<br /> 
                        <ajaxToolkit:ComboBox ID="cityddl" runat="server" AutoPostBack="True" DataSourceID="itemds" DataTextField="COnumber" DataValueField="COnumber" MaxLength="0" style="display: inline;">
                        </ajaxToolkit:ComboBox>
                    </td>
                </tr>
            </table>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:Button ID="excelexporter" runat="server" BackColor="Orange" BorderColor="Brown" BorderStyle="Outset" BorderWidth="10px" OnClick="excelexporter_Click" Text="Export to Excel" />
            
        </div>
    </asp:Panel>
    <br />
    <asp:GridView ID="GridViewjobengine" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="jobenginesearcher" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="COnumber" HeaderText="CO number" SortExpression="COnumber" />
            <asp:BoundField DataField="Company" HeaderText="Company" SortExpression="Company" />
            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
            <asp:BoundField DataField="ItemDESCRIPTION" HeaderText="DESCRIPTION" SortExpression="ItemDESCRIPTION" />
            <asp:BoundField DataField="SN" HeaderText="Serial Number" SortExpression="SN" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="ShipDate" DataFormatString="{0:d}" HeaderText="Ship Date" SortExpression="ShipDate" />
            <asp:BoundField DataField="INSTALLdwgnum" HeaderText="INSTALL Dwg" SortExpression="INSTALLdwgnum" />
            <asp:BoundField DataField="SYSPROPdwgnum" HeaderText="SYS PROP Dwg" SortExpression="SYSPROPdwgnum" />
            <asp:BoundField DataField="GAdwg" HeaderText="GA Dwg" SortExpression="GAdwg" />
            <asp:BoundField DataField="TAdwgnum" HeaderText="TA Dwg" SortExpression="TAdwgnum" />
            <asp:BoundField DataField="ELdwgnum" HeaderText="EL Dwg" SortExpression="ELdwgnum" />
            <asp:BoundField DataField="HYdwgnum" HeaderText="HY Dwg" SortExpression="HYdwgnum" />
            <asp:BoundField DataField="PNdwgnum" HeaderText="PN Dwg" SortExpression="PNdwgnum" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="jobenginesearcher" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT COnumber, Company, Item, INSTALLdwgnum, ItemDESCRIPTION, ShipDate, SYSPROPdwgnum, SN, Address, GAdwg, TAdwgnum, ELdwgnum, HYdwgnum, PNdwgnum FROM JobEngine WHERE (COnumber LIKE '%' + @COnumber + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="cityddl" Name="COnumber" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    </asp:Content>
