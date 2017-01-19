<%@ Page Title="" Language="C#" MasterPageFile="~/Engineer.Master" AutoEventWireup="true" CodeBehind="EngineerMechanical.aspx.cs" Inherits="EngMgr.EngineerMechanical" EnableEventValidation="false" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManagermechanical" runat="server">
</asp:ScriptManager>
<asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" Width="54%">
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ExportToExcelBtn" runat="server" BackColor="#009933" BorderColor="Lime" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="40px" OnClick="ExportToExcelBtn_Click" Text="Export To Excel" Width="200px" />
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ExportToWordBtn" runat="server" BackColor="Blue" BorderColor="#3399FF" BorderStyle="Outset" BorderWidth="5px" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" ForeColor="White" Text="Export To Word" OnClick="ExportToWordBtn_Click" Height="40px" Width="200px" Visible="False" />
</asp:Panel>
<asp:GridView ID="EngineerMechanicalGridView" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" CellSpacing="1" DataKeyNames="ID" DataSourceID="emds" ForeColor="Black" HorizontalAlign="Center">
    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="auto-style3" Text="Update"></asp:LinkButton>
                <br />
                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="auto-style3" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" ShowHeader="False" SortExpression="ID" Visible="False" />
        <asp:TemplateField HeaderText="COnumber" SortExpression="COnumber">
            <ItemTemplate>
                <div class="auto-style2">
                    <asp:Label ID="Company" runat="server" Text='<%# Eval("Company", "{0}") %>' Width="400px"></asp:Label>
                    <br />
                    <asp:Label ID="CONumber" runat="server" Text='<%# Bind("COnumber") %>' Width="300px"></asp:Label>
                </div>
            </ItemTemplate>
            <ItemStyle Width="400px" />
        </asp:TemplateField>
        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" ReadOnly="True" />
        <asp:BoundField DataField="ShipDate" DataFormatString="{0:d}" HeaderText="Ship Date" SortExpression="ShipDate" ReadOnly="True" />
        <asp:BoundField DataField="GAReqdDate" DataFormatString="{0:d}" HeaderText="GA Required by" SortExpression="GAReqdDate" ReadOnly="True">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:TemplateField HeaderText="GA Est Release" SortExpression="GAESTRELDATE">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("GAESTRELDATE", "{0:d}") %>' Width="100px"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" BehaviorID="TextBox2_CalendarExtender" TargetControlID="TextBox2" />
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("GAESTRELDATE", "{0:d}") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle Width="150px" />
        </asp:TemplateField>
        <asp:BoundField DataField="GAdwg" HeaderText="GAdwg" SortExpression="GAdwg" ReadOnly="True" />
        <asp:BoundField DataField="GArev" HeaderText="GArev" SortExpression="GArev" ReadOnly="True" />
        <asp:BoundField DataField="GACompDate" DataFormatString="{0:d}" HeaderText="GA Completed" SortExpression="GACompDate" ReadOnly="True">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="FirstAppDate" DataFormatString="{0:d}" HeaderText="#1 APP" SortExpression="FirstAppDate" ReadOnly="True">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="TAESTRELDATE" DataFormatString="{0:d}" HeaderText="Due Date" SortExpression="TAESTRELDATE" ReadOnly="True">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:BoundField DataField="TAdwgnum" HeaderText="TAdwgnum" SortExpression="TAdwgnum" ReadOnly="True" />
        <asp:BoundField DataField="TARELtoPlanDate" DataFormatString="{0:d}" HeaderText="TA Release to Plan" SortExpression="TARELtoPlanDate" ReadOnly="True">
        <ItemStyle Width="150px" />
        </asp:BoundField>
        <asp:CheckBoxField DataField="RA" HeaderText="RA" SortExpression="RA" />
        <asp:CheckBoxField DataField="RG" HeaderText="RG" SortExpression="RG" />
        <asp:CheckBoxField DataField="TL" HeaderText="TL" SortExpression="TL" />
        <asp:CheckBoxField DataField="BW" HeaderText="BW" SortExpression="BW" />
        <asp:CheckBoxField DataField="JT" HeaderText="JT" SortExpression="JT" />
        <asp:CheckBoxField DataField="LW" HeaderText="LW" SortExpression="LW" />
        <asp:CheckBoxField DataField="HC" HeaderText="HC" SortExpression="HC" />
        <asp:CheckBoxField DataField="RC" HeaderText="RC" SortExpression="RC" />
        <asp:CheckBoxField DataField="RW" HeaderText="RW" SortExpression="RW" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" ForeColor="White" />
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
<asp:SqlDataSource ID="emds" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:maincs %>" InsertCommand="INSERT INTO JobEngine(GAESTRELDATE, RA, RG, TL, BW, JT, LW, HC, RC, RW) VALUES (@GAESTRELDATE, @RA, @RG, @TL, @BW, @JT, @LW, @HC, @RC, @RW)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [COnumber], [Company], [Item], [ShipDate], [GAReqdDate], [GAESTRELDATE], [GAdwg], [GArev], [GACompDate], [FirstAppDate], [TAESTRELDATE], [TAdwgnum], [TARELtoPlanDate], [RA], [RG], [TL], [BW], [JT], [LW], [HC], [RC], [RW] FROM [JobEngine] WHERE (([Status] = @Status) AND ([TARELtoPlanDate] IS NULL)) ORDER BY [ShipDate], [Company], [COnumber]" UpdateCommand="UPDATE JobEngine SET GAESTRELDATE = @GAESTRELDATE, RA = @RA, RG = @RG, TL = @TL, BW = @BW, JT = @JT, LW = @LW, HC = @HC, RC = @RC, RW = @RW WHERE (ID = @original_ID) AND (GAESTRELDATE = @original_GAESTRELDATE OR GAESTRELDATE IS NULL AND @original_GAESTRELDATE IS NULL) AND (RA = @original_RA) AND (RG = @original_RG) AND (TL = @original_TL) AND (BW = @original_BW) AND (JT = @original_JT) AND (LW = @original_LW) AND (HC = @original_HC) AND (RC = @original_RC) AND (RW = @original_RW)">
    <InsertParameters>
        <asp:Parameter DbType="Date" Name="GAESTRELDATE" />
        <asp:Parameter Name="RA" Type="Boolean" />
        <asp:Parameter Name="RG" Type="Boolean" />
        <asp:Parameter Name="TL" Type="Boolean" />
        <asp:Parameter Name="BW" Type="Boolean" />
        <asp:Parameter Name="JT" Type="Boolean" />
        <asp:Parameter Name="LW" Type="Boolean" />
        <asp:Parameter Name="HC" Type="Boolean" />
        <asp:Parameter Name="RC" Type="Boolean" />
        <asp:Parameter Name="RW" Type="Boolean" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="Not Shipped" Name="Status" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter DbType="Date" Name="GAESTRELDATE" />
        <asp:Parameter Name="RA" Type="Boolean" />
        <asp:Parameter Name="RG" Type="Boolean" />
        <asp:Parameter Name="TL" Type="Boolean" />
        <asp:Parameter Name="BW" Type="Boolean" />
        <asp:Parameter Name="JT" Type="Boolean" />
        <asp:Parameter Name="LW" Type="Boolean" />
        <asp:Parameter Name="HC" Type="Boolean" />
        <asp:Parameter Name="RC" Type="Boolean" />
        <asp:Parameter Name="RW" Type="Boolean" />
        <asp:Parameter Name="original_ID" Type="Int32" />
        <asp:Parameter DbType="Date" Name="original_GAESTRELDATE" />
        <asp:Parameter Name="original_RA" Type="Boolean" />
        <asp:Parameter Name="original_RG" Type="Boolean" />
        <asp:Parameter Name="original_TL" Type="Boolean" />
        <asp:Parameter Name="original_BW" Type="Boolean" />
        <asp:Parameter Name="original_JT" Type="Boolean" />
        <asp:Parameter Name="original_LW" Type="Boolean" />
        <asp:Parameter Name="original_HC" Type="Boolean" />
        <asp:Parameter Name="original_RC" Type="Boolean" />
        <asp:Parameter Name="original_RW" Type="Boolean" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
