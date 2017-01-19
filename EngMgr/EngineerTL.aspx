<%@ Page Title="" Language="C#" MasterPageFile="~/Engineer.Master" AutoEventWireup="true" CodeBehind="EngineerTL.aspx.cs" Inherits="EngMgr.EngineerTL" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" Width="50%">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ExcelExportButton" runat="server" BackColor="#009933" BorderColor="Lime" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="40px" OnClick="ExcelExportButton_Click" Text="Export To Excel" Width="200px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ExportToWordButton" runat="server" BackColor="Blue" BorderColor="#3399FF" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" ForeColor="White" Height="40px" OnClick="ExportToWordButton_Click" Text="Export To Word" Width="200px" Visible="False" />
    </asp:Panel>
    <asp:SqlDataSource ID="TLDS" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT [ID], [MECHNotes], [Company], [COnumber], [Item], [DateRecvd], [ShipDate], [GAReqdDate], [GACompDate], [FirstAppDate], [TACompDAte], [TARELtoPlanDate], [RA], [RG], [TL], [BW], [JT], [LW], [HC], [RC], [RW], [WW], [ELREQD] FROM [JobEngine] WHERE (([TL] = @TL) AND ([Status] = @Status) AND ([TARELtoPlanDate] IS NULL)) ORDER BY [ShipDate], [Company], [COnumber]" UpdateCommand="UPDATE JobEngine SET MECHNotes = @MECHNotes, RA = @RA, RG = @RG, TL = @TL, BW = @BW, JT = @JT, LW = @LW, HC = @HC, RC = @RC, RW = @RW, WW = @WW WHERE (ID = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="True" Name="TL" QueryStringField="True" />
            <asp:QueryStringParameter DefaultValue="Not Shipped" Name="Status" QueryStringField="Not Shipped" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="MECHNotes" Type="String" />
            <asp:Parameter Name="RA" Type="Boolean" />
            <asp:Parameter Name="RG" Type="Boolean" />
            <asp:Parameter Name="TL" Type="Boolean" />
            <asp:Parameter Name="BW" Type="Boolean" />
            <asp:Parameter Name="JT" Type="Boolean" />
            <asp:Parameter Name="LW" Type="Boolean" />
            <asp:Parameter Name="HC" Type="Boolean" />
            <asp:Parameter Name="RC" Type="Boolean" />
            <asp:Parameter Name="RW" Type="Boolean" />
            <asp:Parameter Name="WW" Type="Boolean" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
     <asp:GridView ID="TLGridView" runat="server" AutoGenerateColumns="False" CaptionAlign="Left" DataKeyNames="ID" DataSourceID="TLDS" CellPadding="4" ForeColor="#333333">
         <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:TemplateField HeaderText="MECH Notes" SortExpression="MECHNotes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="50px" Text='<%# Bind("MECHNotes") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("MECHNotes") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer" SortExpression="Company">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Company") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("COnumber", "{0}") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Company") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("COnumber", "{0}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" ReadOnly="True" />
            <asp:BoundField DataField="DateRecvd" DataFormatString="{0:d}" HeaderText="Date Recvd" ReadOnly="True" SortExpression="DateRecvd" />
            <asp:BoundField DataField="ShipDate" DataFormatString="{0:d}" HeaderText="Ship Date" ReadOnly="True" SortExpression="ShipDate" />
            <asp:BoundField DataField="GAReqdDate" DataFormatString="{0:d}" HeaderText="GA Reqd Date" ReadOnly="True" SortExpression="GAReqdDate" />
            <asp:BoundField DataField="GACompDate" DataFormatString="{0:d}" HeaderText="GA Comp Date" ReadOnly="True" SortExpression="GACompDate" />
            <asp:BoundField DataField="FirstAppDate" DataFormatString="{0:d}" HeaderText="#1 App" ReadOnly="True" SortExpression="FirstAppDate" />
            <asp:BoundField DataField="TACompDAte" DataFormatString="{0:d}" HeaderText="Mech Comp Date" ReadOnly="True" SortExpression="TACompDAte" />
            <asp:BoundField DataField="TARELtoPlanDate" DataFormatString="{0:d}" HeaderText="Mech REL to Plan Date" ReadOnly="True" SortExpression="TARELtoPlanDate" />
            <asp:CheckBoxField DataField="RA" HeaderText="RA" SortExpression="RA" />
            <asp:CheckBoxField DataField="RG" HeaderText="RG" SortExpression="RG" />
            <asp:CheckBoxField DataField="TL" HeaderText="TL" SortExpression="TL" />
            <asp:CheckBoxField DataField="BW" HeaderText="BW" SortExpression="BW" />
            <asp:CheckBoxField DataField="JT" HeaderText="JT" SortExpression="JT" />
            <asp:CheckBoxField DataField="LW" HeaderText="LW" SortExpression="LW" />
            <asp:CheckBoxField DataField="HC" HeaderText="HC" SortExpression="HC" />
            <asp:CheckBoxField DataField="RC" HeaderText="RC" SortExpression="RC" />
            <asp:CheckBoxField DataField="RW" HeaderText="RW" SortExpression="RW" />
            <asp:CheckBoxField DataField="WW" HeaderText="WW" SortExpression="WW" />
            <asp:CheckBoxField DataField="ELREQD" HeaderText="ELREQD" SortExpression="ELREQD" />
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
    
</asp:Content>
