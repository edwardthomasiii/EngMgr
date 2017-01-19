<%@ Page Title="" Language="C#" MasterPageFile="~/Engineer.Master" AutoEventWireup="true" CodeBehind="EngineerDefault.aspx.cs" Inherits="EngMgr.EngineerDefault" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style2 {
        color: #FFFFFF;
    }
    .auto-style3 {
        text-align: left;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManagerEngDefault" runat="server">
</asp:ScriptManager>
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" Width="50%">
        <br />
        <asp:Button ID="ExportExcelButton" runat="server" OnClick="ExportExcelButton_Click" Text="Export To Excel" BackColor="#009933" BorderColor="Lime" BorderStyle="Outset" BorderWidth="5px" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Width="200px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ExportWordButton" runat="server" BackColor="Blue" BorderColor="#3399FF" BorderStyle="Outset" BorderWidth="5px" CssClass="auto-style2" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" OnClick="ExportWordButton_Click" Text="Export To Word" Width="200px" Visible="False" />
</asp:Panel>
&nbsp;&nbsp;&nbsp;
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CaptionAlign="Left" CellPadding="4" DataKeyNames="ID" DataSourceID="edds" ForeColor="Black" HorizontalAlign="Center" Width="100%" CellSpacing="1">
    <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <Columns>
        <asp:BoundField DataField="MECHNotes" HeaderText="Mechanical Notes" SortExpression="MECHNotes" />
        <asp:TemplateField HeaderText="Customer" SortExpression="Company">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Company") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Company" runat="server" BorderStyle="None" Text='<%# Bind("Company") %>'></asp:Label>
                <br />
                <asp:Label ID="CONumber" runat="server" BorderStyle="None" Text='<%# Eval("COnumber", "{0}") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Left" />
        </asp:TemplateField>
        <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
        <asp:BoundField DataField="ShipDate" DataFormatString="{0:d}" HeaderText="Ship Date" SortExpression="ShipDate" />
        <asp:BoundField DataField="GAReqdDate" DataFormatString="{0:d}" HeaderText="GA Reqd Date" SortExpression="GAReqdDate" />
        <asp:CheckBoxField DataField="ELREQD" HeaderText="Controls Required?" SortExpression="ELREQD" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <EmptyDataRowStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalAlign="Center" VerticalAlign="Middle" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="edds" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" DeleteCommand="DELETE FROM [JobEngine] WHERE [ID] = @ID" InsertCommand="INSERT INTO [JobEngine] ([MECHNotes], [Company], [COnumber], [Item], [ShipDate], [GAReqdDate], [ELREQD]) VALUES (@MECHNotes, @Company, @COnumber, @Item, @ShipDate, @GAReqdDate, @ELREQD)" SelectCommand="SELECT [ID], [MECHNotes], [Company], [COnumber], [Item], [ShipDate], [GAReqdDate], [ELREQD] FROM [JobEngine] WHERE (([Status] = @Status) AND ([TACompDAte] IS NULL)) ORDER BY [ShipDate], [Company], [COnumber]" UpdateCommand="UPDATE [JobEngine] SET [MECHNotes] = @MECHNotes, [Company] = @Company, [COnumber] = @COnumber, [Item] = @Item, [ShipDate] = @ShipDate, [GAReqdDate] = @GAReqdDate, [ELREQD] = @ELREQD WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="MECHNotes" Type="String" />
        <asp:Parameter Name="Company" Type="String" />
        <asp:Parameter Name="COnumber" Type="String" />
        <asp:Parameter Name="Item" Type="String" />
        <asp:Parameter DbType="Date" Name="ShipDate" />
        <asp:Parameter DbType="Date" Name="GAReqdDate" />
        <asp:Parameter Name="ELREQD" Type="Boolean" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="Not Shipped" Name="Status" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="MECHNotes" Type="String" />
        <asp:Parameter Name="Company" Type="String" />
        <asp:Parameter Name="COnumber" Type="String" />
        <asp:Parameter Name="Item" Type="String" />
        <asp:Parameter DbType="Date" Name="ShipDate" />
        <asp:Parameter DbType="Date" Name="GAReqdDate" />
        <asp:Parameter Name="ELREQD" Type="Boolean" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
