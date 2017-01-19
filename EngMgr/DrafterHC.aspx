<%@ Page Title="" Language="C#" MasterPageFile="~/Drafter.Master" AutoEventWireup="true" CodeBehind="DrafterHC.aspx.cs" Inherits="EngMgr.DrafterHC" EnableEventvalidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" Width="54%">
        <asp:ScriptManager ID="ScriptManagerDrafterDefault" runat="server">
        </asp:ScriptManager>
        <asp:Button ID="ExportToExcelBtn" runat="server" Text="Export To Excel" BackColor="#009933" BorderColor="Lime" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="40px" Width="200px" OnClick="ExportToExcelBtn_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    <br />
    <asp:GridView ID="DrafterMechanicalGridView" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="BWds" ForeColor="Black">
        <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:TemplateField HeaderText="Company" SortExpression="Company">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Company") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="CompanyLabel" runat="server" Text='<%# Bind("Company") %>' Width="300px"></asp:Label>
                    <br />
                    <asp:Label ID="CONumberLabel" runat="server" Text='<%# Eval("COnumber") %>' Width="200px"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item">
            <ItemStyle Width="300px" />
            </asp:BoundField>
            <asp:BoundField DataField="DateRecvd" DataFormatString="{0:d}" HeaderText="Date Recvd" SortExpression="DateRecvd">
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="ShipDate" DataFormatString="{0:d}" HeaderText="Ship Date" SortExpression="ShipDate">
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="GAESTRELDATE" DataFormatString="{0:d}" HeaderText="GA EST REL DATE" SortExpression="GAESTRELDATE">
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="GAdwg" HeaderText="GA DWG #" SortExpression="GAdwg">
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="GACompDate" DataFormatString="{0:d}" HeaderText="GA Comp Date" SortExpression="GACompDate">
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="FirstAppDate" DataFormatString="{0:d}" HeaderText="#1 App Date" SortExpression="FirstAppDate">
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="TAESTRELDATE" DataFormatString="{0:d}" HeaderText="MECH EST REL DATE" SortExpression="TAESTRELDATE">
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="TAdwgnum" HeaderText="MECH DWG #" SortExpression="TAdwgnum">
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="TACompDAte" DataFormatString="{0:d}" HeaderText="MECH COMP DATE" SortExpression="TACompDAte">
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="TARELtoPlanDate" DataFormatString="{0:d}" HeaderText="MECH REL to Plan" SortExpression="TARELtoPlanDate">
            <ItemStyle Width="125px" />
            </asp:BoundField>
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
    <asp:SqlDataSource ID="BWds" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT ID, COnumber, Company, Item, DateRecvd, ShipDate, GAESTRELDATE, GAdwg, GACompDate, FirstAppDate, TAESTRELDATE, TAdwgnum, TACompDAte, TARELtoPlanDate FROM JobEngine WHERE (Status = N'Not Shipped') AND (TACompDAte IS NULL) AND (HC = 1) ORDER BY ShipDate, Company, COnumber"></asp:SqlDataSource>
</asp:Content>
