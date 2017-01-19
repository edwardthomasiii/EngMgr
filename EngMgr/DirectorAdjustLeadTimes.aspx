<%@ Page Title="" Language="C#" MasterPageFile="~/Director.Master" AutoEventWireup="true" CodeBehind="DirectorAdjustLeadTimes.aspx.cs" Inherits="EngMgr.DirectorAdjustLeadTimes" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
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
    <asp:Button ID="WTRBtn" runat="server" Text="Back To Master Reports" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" Width="300px" TabIndex="5" PostBackUrl="~/DirectorDefault.aspx" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="WTRBtn0" runat="server" Text="Back To personnel Reports" BackColor="#FF6600" BorderColor="#FF9933" BorderStyle="Outset" Font-Bold="True" Font-Names="Tahoma" Font-Size="Large" Height="30px" Width="300px" TabIndex="5" PostBackUrl="~/DirectorPersonnelReport.aspx" />
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="auto-style3">
            <asp:SqlDataSource ID="LTFDS" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" InsertCommand="INSERT INTO item_type(category, Lead_Times, Lead_Setter, Control_Lead_Time, GA_Lead_Time) VALUES (@category, @Lead_Times, @Lead_Setter, @Control_Lead_Time, @GA_Lead_Time)" SelectCommand="SELECT * FROM [item_type]" UpdateCommand="UPDATE item_type SET category = @category, Lead_Times = @Lead_Times, Lead_Setter = @Lead_Setter, Control_Lead_Time = @Control_Lead_Time, GA_Lead_Time = @GA_Lead_Time WHERE (ID = @ID)">
                <InsertParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="Lead_Times" Type="String" />
                    <asp:Parameter Name="Lead_Setter" Type="String" />
                    <asp:Parameter Name="Control_Lead_Time" />
                    <asp:Parameter Name="GA_Lead_Time" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="Lead_Times" Type="String" />
                    <asp:Parameter Name="Lead_Setter" Type="String" />
                    <asp:Parameter Name="Control_Lead_Time" />
                    <asp:Parameter Name="GA_Lead_Time" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="LeadTimeADjusterForm" runat="server" DataKeyNames="ID" DataSourceID="LTFDS" Width="100%">
                <EditItemTemplate>
                    ID:
                    <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                    <br />
                    category:
                    <asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    Lead_Times:
                    <asp:TextBox ID="Lead_TimesTextBox" runat="server" Text='<%# Bind("Lead_Times") %>' />
                    <br />
                    Lead_Setter:
                    <asp:TextBox ID="Lead_SetterTextBox" runat="server" Text='<%# Bind("Lead_Setter") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:SqlDataSource ID="LTDDDS" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT DISTINCT [Lead_Setter] FROM [item_type] WHERE (([Lead_Setter] NOT LIKE '%' + @Lead_Setter + '%') AND ([Lead_Setter] NOT LIKE '%' + @Lead_Setter2 + '%'))">
                        <SelectParameters>
                            <asp:QueryStringParameter DefaultValue="NotSelected" Name="Lead_Setter" QueryStringField="NotSelected" Type="String" />
                            <asp:QueryStringParameter DefaultValue="rework" Name="Lead_Setter2" QueryStringField="rework" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    Item:<br /> &nbsp;<asp:TextBox ID="categoryTextBox" runat="server" Text='<%# Bind("category") %>' />
                    <br />
                    Group:<br />
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="LTDDDS" DataTextField="Lead_Setter" DataValueField="Lead_Setter" SelectedValue='<%# Bind("Lead_Setter", "{0}") %>'>
                    </asp:DropDownList>
                    <br />
                    Mechanical Lead Time:<br /> <asp:TextBox ID="Lead_TimesTextBox" runat="server" Text='<%# Bind("Lead_Times") %>' />
                    <br />
                    Control Lead Time:<br />
                    <asp:TextBox ID="Control_Lead_TimeTextBox" runat="server" Text='<%# Bind("Control_Lead_Time") %>' />
                    <br />
                    GA Lead Time:<br />&nbsp;<asp:TextBox ID="Control_Lead_TimeTextBox0" runat="server" Text='<%# Bind("GA_Lead_Time") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" BackColor="#33CC33" BorderColor="#336600" BorderStyle="Outset" BorderWidth="5px" CausesValidation="True" CommandName="Insert" Font-Bold="True" ForeColor="White" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" BackColor="Red" BorderColor="Maroon" BorderStyle="Solid" BorderWidth="5px" CausesValidation="False" CommandName="Cancel" Font-Bold="True" ForeColor="White" Text="Cancel" />
                    <br />
                </InsertItemTemplate>
                <ItemTemplate>
                    <br />
                    <asp:LinkButton ID="NewButton" runat="server" BackColor="#FFCC66" BorderColor="#FF9933" BorderStyle="Outset" BorderWidth="5px" CausesValidation="False" CommandName="New" Text="Add New Item" />
                    <br />
                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:GridView ID="GridView1" runat="server" BorderColor="Black" BorderStyle="Solid" CellPadding="4" ForeColor="Black" HorizontalAlign="Center" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="LTDS">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" Visible="False" />
                    <asp:BoundField DataField="Lead_Setter" HeaderText="Group" SortExpression="Lead_Setter" />
                    <asp:BoundField DataField="category" HeaderText="Item" SortExpression="category" />
                    <asp:BoundField DataField="Lead_Times" HeaderText="Mech Lead Time" SortExpression="Lead_Times" />
                    <asp:BoundField DataField="Control_Lead_Time" HeaderText="Control Lead Time" SortExpression="Control_Lead_Time" />
                    <asp:BoundField DataField="GA_Lead_Time" HeaderText="GA Lead Time" SortExpression="GA_Lead_Time" />
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
            <asp:SqlDataSource ID="LTDS" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" DeleteCommand="DELETE FROM [item_type] WHERE [ID] = @ID" InsertCommand="INSERT INTO item_type(category, Lead_Times, Lead_Setter, Control_Lead_Time, GA_Lead_Time) VALUES (@category, @Lead_Times, @Lead_Setter, @Control_Lead_Time, @GA_Lead_Time)" SelectCommand="SELECT ID, category, Lead_Times, Lead_Setter, Control_Lead_Time, GA_Lead_Time FROM item_type WHERE (category NOT LIKE '%' + @category + '%') ORDER BY Lead_Setter, Lead_Times" UpdateCommand="UPDATE item_type SET category = @category, Lead_Times = @Lead_Times, Lead_Setter = @Lead_Setter, Control_Lead_Time = @Control_Lead_Time, GA_Lead_Time = @GA_Lead_Time WHERE (ID = @ID)">
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="Lead_Times" Type="String" />
                    <asp:Parameter Name="Lead_Setter" Type="String" />
                    <asp:Parameter Name="Control_Lead_Time" />
                    <asp:Parameter Name="GA_Lead_Time" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="Select Item Type" Name="category" QueryStringField="Select Item Type" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="Lead_Times" Type="String" />
                    <asp:Parameter Name="Lead_Setter" Type="String" />
                    <asp:Parameter Name="Control_Lead_Time" />
                    <asp:Parameter Name="GA_Lead_Time" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        &nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    </asp:Content>
