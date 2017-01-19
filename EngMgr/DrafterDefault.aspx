<%@ Page Title="" Language="C#" MasterPageFile="~/Drafter.Master" AutoEventWireup="true" CodeBehind="DrafterDefault.aspx.cs" Inherits="EngMgr.DrafterDefault" EnableEventValidation="false"%>
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

    </asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" Width="54%">
    <asp:ScriptManager ID="ScriptManagerDrafterDefault" runat="server">
    </asp:ScriptManager>
    <asp:Button ID="ExportToExcelBtn" runat="server" Text="Export To Excel" BackColor="#009933" BorderColor="Lime" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" OnClick="ExportToExcelBtn_Click" Height="40px" Width="200px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ExportToWordBtn" runat="server" BackColor="Blue" BorderColor="#3399FF" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" ForeColor="White" Text="Export To Word" OnClick="ExportToWordBtn_Click" Height="40px" Width="200px" Visible="False" />
</asp:Panel>
<br />
<asp:GridView ID="DrafterDefaultGridView" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" CellPadding="4" DataKeyNames="ID" DataSourceID="ddds" ForeColor="Black">
    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" />
    <Columns>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
        <asp:TemplateField HeaderText="Customer" SortExpression="Company">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Company") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Company" runat="server" Text='<%# Bind("Company") %>' Width="300px"></asp:Label>
                <asp:Label ID="CONumber" runat="server" Text='<%# Eval("COnumber") %>' Width="200px"></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Left" />
        </asp:TemplateField>
        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
        <asp:BoundField DataField="DateRecvd" DataFormatString="{0:d}" HeaderText="Date Recvd" SortExpression="DateRecvd">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="ShipDate" DataFormatString="{0:d}" HeaderText="Ship Date" SortExpression="ShipDate">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="TACompDAte" DataFormatString="{0:d}" HeaderText="Mechanical Complete Date" SortExpression="TACompDAte">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="TARELtoPlanDate" DataFormatString="{0:d}" HeaderText="Mechanical Release to Plan Date" SortExpression="TARELtoPlanDate">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:CheckBoxField DataField="RA" HeaderText="RA" SortExpression="RA" />
        <asp:CheckBoxField DataField="RG" HeaderText="RG" SortExpression="RG" />
        <asp:CheckBoxField DataField="BR" HeaderText="BR" SortExpression="BR" />
        <asp:CheckBoxField DataField="TL" HeaderText="TL" SortExpression="TL" />
        <asp:CheckBoxField DataField="JW" HeaderText="JW" SortExpression="JW" />
        <asp:CheckBoxField DataField="BW" HeaderText="BW" SortExpression="BW" />
        <asp:CheckBoxField DataField="JT" HeaderText="JT" SortExpression="JT" />
        <asp:CheckBoxField DataField="LW" HeaderText="LW" SortExpression="LW" />
        <asp:CheckBoxField DataField="HC" HeaderText="HC" SortExpression="HC" />
        <asp:CheckBoxField DataField="JR" HeaderText="JR" SortExpression="JR" />
        <asp:CheckBoxField DataField="RC" HeaderText="RC" SortExpression="RC" />
        <asp:CheckBoxField DataField="RW" HeaderText="RW" SortExpression="RW" />
        <asp:CheckBoxField DataField="WW" HeaderText="WW" SortExpression="WW" />
        <asp:CheckBoxField DataField="ELREQD" HeaderText="ELREQD" SortExpression="ELREQD" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="ddds" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT ID, COnumber, Company, Item, DateRecvd, ShipDate, RA, TL, RG, BR, JW, BW, JT, LW, HC, JR, RC, RW, WW, ELREQD, TACompDAte, TARELtoPlanDate FROM JobEngine WHERE (Status = N'Not Shipped') AND (TACompDAte IS NULL) AND (TARELtoPlanDate IS NULL)"></asp:SqlDataSource>
</asp:Content>
