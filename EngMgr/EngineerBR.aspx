<%@ Page Title="" Language="C#" MasterPageFile="~/Engineer.Master" AutoEventWireup="true" CodeBehind="EngineerBR.aspx.cs" Inherits="EngMgr.EngineerBR" EnableEventValidation="false"%>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            text-align: left;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Left" Width="50%">
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ExcelExportButton" runat="server" BackColor="#009933" BorderColor="Lime" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="40px" OnClick="ExcelExportButton_Click" Text="Export To Excel" Width="200px" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="ExportToWordButton" runat="server" BackColor="Blue" BorderColor="#3399FF" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" ForeColor="White" Height="40px" Text="Export To Word" Width="200px" OnClick="ExportToWordButton_Click" Visible="False" />
    </asp:Panel>
         <asp:ScriptManager ID="ScriptManager1" runat="server">
         </asp:ScriptManager>
    <asp:SqlDataSource ID="BRds" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" InsertCommand="INSERT INTO JobEngine(control_est_rel_date, control_comp_date, control_to_plan_date, BR, JR, WW, CONTROLNotes, ELREQD) VALUES (@control_est_rel_date, @control_comp_date, @control_to_plan_date, @BR, @JR, @WW, @CONTROLNotes, @ELREQD)" SelectCommand="SELECT [ID], [Company], [COnumber], [Item], [ShipDate], [FirstAppDate], [control_est_rel_date], [control_comp_date], [control_to_plan_date], [BR], [JR], [WW], [CONTROLNotes], [ELREQD] FROM [JobEngine] WHERE (([Status] = @Status) AND ([ELREQD] = @ELREQD) AND ([control_to_plan_date] IS NULL)) ORDER BY [ShipDate], [Company], [COnumber]" UpdateCommand="UPDATE JobEngine SET control_est_rel_date = @control_est_rel_date, control_comp_date = @control_comp_date, control_to_plan_date = @control_to_plan_date, BR = @BR, JR = @JR, WW = @WW, CONTROLNotes = @CONTROLNotes, ELREQD = @ELREQD WHERE (ID = @ID)">
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="control_est_rel_date" />
            <asp:Parameter DbType="Date" Name="control_comp_date" />
            <asp:Parameter DbType="Date" Name="control_to_plan_date" />
            <asp:Parameter Name="BR" Type="Boolean" />
            <asp:Parameter Name="JR" Type="Boolean" />
            <asp:Parameter Name="WW" Type="Boolean" />
            <asp:Parameter Name="CONTROLNotes" Type="String" />
            <asp:Parameter Name="ELREQD" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="Not Shipped" Name="Status" Type="String" />
            <asp:Parameter DefaultValue="1" Name="ELREQD" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="control_est_rel_date" />
            <asp:Parameter DbType="Date" Name="control_comp_date" />
            <asp:Parameter DbType="Date" Name="control_to_plan_date" />
            <asp:Parameter Name="BR" Type="Boolean" />
            <asp:Parameter Name="JR" Type="Boolean" />
            <asp:Parameter Name="WW" Type="Boolean" />
            <asp:Parameter Name="CONTROLNotes" Type="String" />
            <asp:Parameter Name="ELREQD" Type="Boolean" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="BRGridView" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" DataSourceID="BRds" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="ID" Width="100%">
        <AlternatingRowStyle BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" CssClass="auto-style4" Text="Update" BackColor="#00CC00" BorderColor="#009933" BorderStyle="Outset" BorderWidth="5px" ForeColor="White"></asp:LinkButton>
                    &nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="auto-style4" Text="Cancel" BackColor="Red" BorderColor="Maroon" BorderStyle="Outset" BorderWidth="5px" ForeColor="White"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
            <asp:TemplateField HeaderText="CONTROL Notes" SortExpression="CONTROLNotes">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Height="60px" Text='<%# Bind("CONTROLNotes") %>' TextMode="MultiLine" Width="200px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("CONTROLNotes") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="200px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Company" SortExpression="Company">
                <EditItemTemplate>
                    <div class="auto-style3">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Bind("Company") %>' Width="300px"></asp:Label>
                        <span class="auto-style4">
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("COnumber", "{0}") %>' Width="200px"></asp:Label>
                        </span>
                    </div>
                </EditItemTemplate>
                <ItemTemplate>
                    <div class="auto-style3">
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("Company") %>' Width="300px"></asp:Label>
                        <br />
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("COnumber", "{0}") %>' Width="200px"></asp:Label>
                    </div>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" ReadOnly="True" />
            <asp:BoundField DataField="ShipDate" DataFormatString="{0:d}" HeaderText="Ship Date" SortExpression="ShipDate" ReadOnly="True">
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="FirstAppDate" DataFormatString="{0:d}" HeaderText="#1 Approval Date" SortExpression="FirstAppDate" ReadOnly="True">
            <ItemStyle Width="150px" />
            </asp:BoundField>
            <asp:TemplateField HeaderText="Est Control Rel" SortExpression="control_est_rel_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("control_est_rel_date", "{0:d}") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" BehaviorID="TextBox2_CalendarExtender" TargetControlID="TextBox2" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("control_est_rel_date", "{0:d}") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="150px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="controls Completed" SortExpression="control_comp_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("control_comp_date", "{0:d}") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" BehaviorID="TextBox3_CalendarExtender" TargetControlID="TextBox3" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("control_comp_date", "{0:d}") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="150px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="contro Rel To Plan" SortExpression="control_to_plan_date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("control_to_plan_date", "{0:d}") %>'></asp:TextBox>
                    <ajaxToolkit:CalendarExtender ID="TextBox4_CalendarExtender" runat="server" BehaviorID="TextBox4_CalendarExtender" TargetControlID="TextBox4" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("control_to_plan_date", "{0:d}") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="150px" />
            </asp:TemplateField>
            <asp:CheckBoxField DataField="BR" HeaderText="BR" SortExpression="BR" />
            <asp:CheckBoxField DataField="JR" HeaderText="JR" SortExpression="JR" />
            <asp:CheckBoxField DataField="WW" HeaderText="WW" SortExpression="WW" />
            <asp:CheckBoxField DataField="ELREQD" HeaderText="ELREQD" SortExpression="ELREQD" />
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
    </p>
</asp:Content>
