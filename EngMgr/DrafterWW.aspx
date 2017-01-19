<%@ Page Title="" Language="C#" MasterPageFile="~/Drafter.Master" AutoEventWireup="true" CodeBehind="DrafterWW.aspx.cs" Inherits="EngMgr.DrafterWW" EnableEventValidation="False"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" Width="54%">
        <asp:ScriptManager ID="ScriptManagerDrafterControl" runat="server">
        </asp:ScriptManager>
        <asp:Button ID="ExportToExcelBtn" runat="server" Text="Export To Excel" BackColor="#009933" BorderColor="Lime" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="40px" Width="200px" OnClick="ExportToExcelBtn_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </asp:Panel>
    <br />
    <asp:GridView ID="DrafterControlGridView" runat="server" AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="dcds" ForeColor="Black">
        <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" ForeColor="Black" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:TemplateField HeaderText="CONTROLNotes" SortExpression="CONTROLNotes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Height="60px" Text='<%# Bind("CONTROLNotes") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("CONTROLNotes") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer" SortExpression="Company">
                <EditItemTemplate>
                    <div class="auto-style2">
                        <asp:Label ID="Company" runat="server" Text='<%# Bind("Company") %>' Width="300px"></asp:Label>
                        <asp:Label ID="CONumber" runat="server" Text='<%# Bind("COnumber") %>' Width="200px"></asp:Label>
                    </div>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Company0" runat="server" Text='<%# Bind("Company") %>' Width="300px"></asp:Label>
                    <br />
                    <asp:Label ID="CONumber0" runat="server" Text='<%# Bind("COnumber") %>' Width="200px"></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Left" />
            </asp:TemplateField>
            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" ReadOnly="True" />
            <asp:BoundField DataField="DateRecvd" HeaderText="Date Recvd" SortExpression="DateRecvd" DataFormatString="{0:d}" ReadOnly="True" >
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:BoundField DataField="ShipDate" HeaderText="Ship Date" SortExpression="ShipDate" DataFormatString="{0:d}" ReadOnly="True" >
            <ItemStyle Width="125px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Est Control Rel Date" SortExpression="control_est_rel_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("control_est_rel_date", "{0:d}") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox5_CalendarExtender" runat="server" BehaviorID="TextBox5_CalendarExtender" TargetControlID="TextBox5" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("control_est_rel_date", "{0:d}") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="125px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Controls Comp date" SortExpression="control_comp_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("control_comp_date", "{0:d}") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" BehaviorID="TextBox4_CalendarExtender" TargetControlID="TextBox4" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("control_comp_date", "{0:d}") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="125px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Controls to Plan" SortExpression="control_to_plan_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("control_to_plan_date", "{0:d}") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" BehaviorID="TextBox3_CalendarExtender" TargetControlID="TextBox3" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("control_to_plan_date", "{0:d}") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="125px" />
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="dcds" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT ID, COnumber, Company, Item, DateRecvd, ShipDate, control_est_rel_date, control_comp_date, control_to_plan_date, CONTROLNotes, WW FROM JobEngine WHERE (Status = N'Not Shipped') AND (control_comp_date IS NULL) AND (ELREQD = 1) AND (WW = 1) ORDER BY ShipDate, Company, COnumber"></asp:SqlDataSource>
</asp:Content>
