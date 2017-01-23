<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeBehind="AdminOrder.aspx.cs" Inherits="EngMgr.AdminOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            border: 5px solid #ffffff;
            background-color: #ffffff;
        }
        .auto-style5 {
            color: #CC33FF;
        }
        .auto-style6 {
            text-align: left;
        }
        .auto-style7 {
            margin-right: 525px;
        }
        .auto-style8 {
            color: #FF3300;
            text-decoration: underline;
        }
        .auto-style9 {
            background-color: #EFF3FB;
        }
        .auto-style10 {
            text-align: left;
            background-color: #EFF3FB;
        }
        .auto-style11 {
            text-align: left;
            background-color: #507CD1;
        }
        .auto-style12 {
            color: #FFFFFF;
        }
        .auto-style14 {
            text-align: left;
            height: 103px;
        }
        .auto-style15 {
            width: 505px;
            visibility: visible;
            overflow: auto;
            position: fixed;
            height: auto;
        }
        .auto-style16 {
            position: static;
            float: inherit;
            width: 254px;
        }
        .auto-style17 {
            width: 505px;
        }
        .auto-style20 {
            height: 33px;
            width: 52px;
            background-color: #FFDCB9;
        }
        .auto-style21 {
            height: 104px;
            background-color: #FFBA75;
        }
        .auto-style22 {
            width: 52px;
            height: 104px;
            background-color: #FFBA75;
        }
        .auto-style24 {
            height: 33px;
            background-color: #FFDCB9;
        }
        .auto-style25 {
            height: 104px;
            width: 134px;
            background-color: #FFBA75;
        }
        .auto-style26 {
            height: 33px;
            width: 134px;
            background-color: #FFDCB9;
        }
        .auto-style28 {
            height: 56px;
        }
        .auto-style29 {
            width: 52px;
            height: 56px;
            background-color: #FFDCB9;
        }
        .auto-style30 {
            width: 134px;
            height: 56px;
            background-color: #FFDCB9;
        }
        .auto-style31 {
            text-align: center;
        }
        .auto-style32 {
            background-color: #FFDCB9;
        }
        .auto-style33 {
            background-color: #FFFFFF;
        }
        .auto-style34 {
            width: 134px;
            background-color: #FFDCB9;
        }
        .auto-style35 {
            width: 52px;
            background-color: #FFDCB9;
        }
        .auto-style36 {
            height: 56px;
            background-color: #FFDCB9;
        }
        .auto-style37 {
            width: 134px;
            background-color: #FFBA75;
        }
        .auto-style38 {
            width: 52px;
            background-color: #FFBA75;
        }
        .auto-style39 {
            background-color: #FFBA75;
        }
        .auto-style41 {
            background-color: #CCE6FF;
        }
        .auto-style42 {
            background-color: #D7F2FF;
        }
        .auto-style43 {
            background-color: #2EA9D1;
        }
        .auto-style44 {
            background-color: #97D3E8;
        }
        .auto-style45 {
            color: #6699FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style16">
        <tr>
            <td aria-orientation="vertical" class="auto-style17">
                <asp:Panel ID="PlaceHolderPanel" runat="server" Width="325px">
                </asp:Panel>
                <br />
            </td>
            <td class="auto-style14">Shipping Status&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; CO Number<br />
                <asp:DropDownList ID="statuspicker" runat="server" AutoPostBack="True" Font-Size="Large">
                    <asp:ListItem>Not Shipped</asp:ListItem>
                    <asp:ListItem>Shipped</asp:ListItem>
                    <asp:ListItem>Cancelled</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="Company" runat="server" AutoPostBack="True" DataSourceID="CustomerDSSearcher" DataTextField="Company" DataValueField="Company" Font-Bold="False" Font-Size="Large" ForeColor="Red" style="color: #000000" Width="400px">
                    <asp:ListItem Value="%">ANY</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <asp:TextBox ID="COnumberright" runat="server" AutoPostBack="True" Font-Size="Large" Width="300px">%</asp:TextBox>
                <asp:SqlDataSource ID="CustomerDSSearcher" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT DISTINCT [Company] FROM [JobEngine] WHERE ([Status] = @Status) ORDER BY [Company]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="statuspicker" DefaultValue="Not Shipped" Name="Status" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td aria-live="off" aria-orientation="vertical" class="auto-style15">
                <asp:GridView ID="OrderGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="UpdateGridViewSQLDS" ForeColor="#333333" GridLines="None" HorizontalAlign="Left" OnSelectedIndexChanged="OrderGridView_SelectedIndexChanged" Width="200px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:TemplateField HeaderText="Company" SortExpression="Company">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Company") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Bind("ID") %>'></asp:Label>
                                //<asp:Label ID="Label2" runat="server" Text='<%# Bind("COnumber", "{0}") %>'></asp:Label>
                                -<asp:Label ID="Label3" runat="server" Text='<%# Bind("Item_category") %>'></asp:Label>
                                <br />
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Company") %>' Width="250px"></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Right" VerticalAlign="Top" Wrap="False" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
            <td>&nbsp;&nbsp;
                <br />
                <asp:FormView ID="OrderFormView" runat="server" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CaptionAlign="Left" CellPadding="4" CssClass="auto-style7" DataKeyNames="ID" DataSourceID="FormSQLDS" GridLines="Both" Width="1300px">
                    <EditItemTemplate>
                        ID:
                        <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
                        <br />
                        POnumber:
                        <asp:TextBox ID="POnumberTextBox" runat="server" Text='<%# Bind("POnumber") %>' />
                        <br />
                        COnumber:
                        <asp:TextBox ID="COnumberTextBox" runat="server" Text='<%# Bind("COnumber") %>' />
                        <br />
                        ShipDate:
                        <asp:TextBox ID="ShipDateTextBox" runat="server" Text='<%# Bind("ShipDate") %>' />
                        <br />
                        Notes:
                        <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                        <br />
                        DateRecvd:
                        <asp:TextBox ID="DateRecvdTextBox" runat="server" Text='<%# Bind("DateRecvd") %>' />
                        <br />
                        Company:
                        <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        Phone:
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                        <br />
                        POC:
                        <asp:TextBox ID="POCTextBox" runat="server" Text='<%# Bind("POC") %>' />
                        <br />
                        Status:
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        <br />
                        GAdwg:
                        <asp:TextBox ID="GAdwgTextBox" runat="server" Text='<%# Bind("GAdwg") %>' />
                        <br />
                        GArev:
                        <asp:TextBox ID="GArevTextBox" runat="server" Text='<%# Bind("GArev") %>' />
                        <br />
                        Dwg1:
                        <asp:TextBox ID="Dwg1TextBox" runat="server" Text='<%# Bind("Dwg1") %>' />
                        <br />
                        Dwg2:
                        <asp:TextBox ID="Dwg2TextBox" runat="server" Text='<%# Bind("Dwg2") %>' />
                        <br />
                        Dwg3:
                        <asp:TextBox ID="Dwg3TextBox" runat="server" Text='<%# Bind("Dwg3") %>' />
                        <br />
                        Dwg4:
                        <asp:TextBox ID="Dwg4TextBox" runat="server" Text='<%# Bind("Dwg4") %>' />
                        <br />
                        Dwg5:
                        <asp:TextBox ID="Dwg5TextBox" runat="server" Text='<%# Bind("Dwg5") %>' />
                        <br />
                        Dwg6:
                        <asp:TextBox ID="Dwg6TextBox" runat="server" Text='<%# Bind("Dwg6") %>' />
                        <br />
                        Dwg7:
                        <asp:TextBox ID="Dwg7TextBox" runat="server" Text='<%# Bind("Dwg7") %>' />
                        <br />
                        Dwg8:
                        <asp:TextBox ID="Dwg8TextBox" runat="server" Text='<%# Bind("Dwg8") %>' />
                        <br />
                        Dwg9:
                        <asp:TextBox ID="Dwg9TextBox" runat="server" Text='<%# Bind("Dwg9") %>' />
                        <br />
                        Dwg10:
                        <asp:TextBox ID="Dwg10TextBox" runat="server" Text='<%# Bind("Dwg10") %>' />
                        <br />
                        Dwg11:
                        <asp:TextBox ID="Dwg11TextBox" runat="server" Text='<%# Bind("Dwg11") %>' />
                        <br />
                        Dwg12:
                        <asp:TextBox ID="Dwg12TextBox" runat="server" Text='<%# Bind("Dwg12") %>' />
                        <br />
                        Dwgdatecomp1:
                        <asp:TextBox ID="Dwgdatecomp1TextBox" runat="server" Text='<%# Bind("Dwgdatecomp1") %>' />
                        <br />
                        Dwgdatecomp2:
                        <asp:TextBox ID="Dwgdatecomp2TextBox" runat="server" Text='<%# Bind("Dwgdatecomp2") %>' />
                        <br />
                        Dwgdatecomp3:
                        <asp:TextBox ID="Dwgdatecomp3TextBox" runat="server" Text='<%# Bind("Dwgdatecomp3") %>' />
                        <br />
                        Dwgdatecomp4:
                        <asp:TextBox ID="Dwgdatecomp4TextBox" runat="server" Text='<%# Bind("Dwgdatecomp4") %>' />
                        <br />
                        Dwgdatecomp5:
                        <asp:TextBox ID="Dwgdatecomp5TextBox" runat="server" Text='<%# Bind("Dwgdatecomp5") %>' />
                        <br />
                        Dwgdatecomp6:
                        <asp:TextBox ID="Dwgdatecomp6TextBox" runat="server" Text='<%# Bind("Dwgdatecomp6") %>' />
                        <br />
                        Dwgdatecomp7:
                        <asp:TextBox ID="Dwgdatecomp7TextBox" runat="server" Text='<%# Bind("Dwgdatecomp7") %>' />
                        <br />
                        Dwgdatecomp8:
                        <asp:TextBox ID="Dwgdatecomp8TextBox" runat="server" Text='<%# Bind("Dwgdatecomp8") %>' />
                        <br />
                        Dwgdatecomp9:
                        <asp:TextBox ID="Dwgdatecomp9TextBox" runat="server" Text='<%# Bind("Dwgdatecomp9") %>' />
                        <br />
                        Dwgdatecomp10:
                        <asp:TextBox ID="Dwgdatecomp10TextBox" runat="server" Text='<%# Bind("Dwgdatecomp10") %>' />
                        <br />
                        Dwgdatecomp11:
                        <asp:TextBox ID="Dwgdatecomp11TextBox" runat="server" Text='<%# Bind("Dwgdatecomp11") %>' />
                        <br />
                        Dwgdatecomp12:
                        <asp:TextBox ID="Dwgdatecomp12TextBox" runat="server" Text='<%# Bind("Dwgdatecomp12") %>' />
                        <br />
                        ItemQty:
                        <asp:TextBox ID="ItemQtyTextBox" runat="server" Text='<%# Bind("ItemQty") %>' />
                        <br />
                        Item:
                        <asp:TextBox ID="ItemTextBox" runat="server" Text='<%# Bind("Item") %>' />
                        <br />
                        AssnTo:
                        <asp:TextBox ID="AssnToTextBox" runat="server" Text='<%# Bind("AssnTo") %>' />
                        <br />
                        GAReqdDate:
                        <asp:TextBox ID="GAReqdDateTextBox" runat="server" Text='<%# Bind("GAReqdDate") %>' />
                        <br />
                        GACompDate:
                        <asp:TextBox ID="GACompDateTextBox" runat="server" Text='<%# Bind("GACompDate") %>' />
                        <br />
                        GAtoSalesDate:
                        <asp:TextBox ID="GAtoSalesDateTextBox" runat="server" Text='<%# Bind("GAtoSalesDate") %>' />
                        <br />
                        GAtoCustDate:
                        <asp:TextBox ID="GAtoCustDateTextBox" runat="server" Text='<%# Bind("GAtoCustDate") %>' />
                        <br />
                        FirstAppDate:
                        <asp:TextBox ID="FirstAppDateTextBox" runat="server" Text='<%# Bind("FirstAppDate") %>' />
                        <br />
                        TAdwgnum:
                        <asp:TextBox ID="TAdwgnumTextBox" runat="server" Text='<%# Bind("TAdwgnum") %>' />
                        <br />
                        TACompDAte:
                        <asp:TextBox ID="TACompDAteTextBox" runat="server" Text='<%# Bind("TACompDAte") %>' />
                        <br />
                        TABOMEntereddate:
                        <asp:TextBox ID="TABOMEntereddateTextBox" runat="server" Text='<%# Bind("TABOMEntereddate") %>' />
                        <br />
                        TARELtoPlanDate:
                        <asp:TextBox ID="TARELtoPlanDateTextBox" runat="server" Text='<%# Bind("TARELtoPlanDate") %>' />
                        <br />
                        ELdwgnum:
                        <asp:TextBox ID="ELdwgnumTextBox" runat="server" Text='<%# Bind("ELdwgnum") %>' />
                        <br />
                        ELCompDate:
                        <asp:TextBox ID="ELCompDateTextBox" runat="server" Text='<%# Bind("ELCompDate") %>' />
                        <br />
                        ELBOMentereddate:
                        <asp:TextBox ID="ELBOMentereddateTextBox" runat="server" Text='<%# Bind("ELBOMentereddate") %>' />
                        <br />
                        ELRELtoPlanDate:
                        <asp:TextBox ID="ELRELtoPlanDateTextBox" runat="server" Text='<%# Bind("ELRELtoPlanDate") %>' />
                        <br />
                        HYdwgnum:
                        <asp:TextBox ID="HYdwgnumTextBox" runat="server" Text='<%# Bind("HYdwgnum") %>' />
                        <br />
                        HYcompDate:
                        <asp:TextBox ID="HYcompDateTextBox" runat="server" Text='<%# Bind("HYcompDate") %>' />
                        <br />
                        HYbomentereddate:
                        <asp:TextBox ID="HYbomentereddateTextBox" runat="server" Text='<%# Bind("HYbomentereddate") %>' />
                        <br />
                        HYRELtoplandate:
                        <asp:TextBox ID="HYRELtoplandateTextBox" runat="server" Text='<%# Bind("HYRELtoplandate") %>' />
                        <br />
                        PNdwgnum:
                        <asp:TextBox ID="PNdwgnumTextBox" runat="server" Text='<%# Bind("PNdwgnum") %>' />
                        <br />
                        PNcompdate:
                        <asp:TextBox ID="PNcompdateTextBox" runat="server" Text='<%# Bind("PNcompdate") %>' />
                        <br />
                        PNBOMentereddate:
                        <asp:TextBox ID="PNBOMentereddateTextBox" runat="server" Text='<%# Bind("PNBOMentereddate") %>' />
                        <br />
                        PNRELtoplan:
                        <asp:TextBox ID="PNRELtoplanTextBox" runat="server" Text='<%# Bind("PNRELtoplan") %>' />
                        <br />
                        Reqdcustmanual:
                        <asp:CheckBox ID="ReqdcustmanualCheckBox" runat="server" Checked='<%# Bind("Reqdcustmanual") %>' />
                        <br />
                        PrevCOnum:
                        <asp:TextBox ID="PrevCOnumTextBox" runat="server" Text='<%# Bind("PrevCOnum") %>' />
                        <br />
                        SYSPROPdwgnum:
                        <asp:TextBox ID="SYSPROPdwgnumTextBox" runat="server" Text='<%# Bind("SYSPROPdwgnum") %>' />
                        <br />
                        SYSPROPcompdate:
                        <asp:TextBox ID="SYSPROPcompdateTextBox" runat="server" Text='<%# Bind("SYSPROPcompdate") %>' />
                        <br />
                        SYSPROPtosalesdate:
                        <asp:TextBox ID="SYSPROPtosalesdateTextBox" runat="server" Text='<%# Bind("SYSPROPtosalesdate") %>' />
                        <br />
                        INSTALLdwgnum:
                        <asp:TextBox ID="INSTALLdwgnumTextBox" runat="server" Text='<%# Bind("INSTALLdwgnum") %>' />
                        <br />
                        INSTALLcompdate:
                        <asp:TextBox ID="INSTALLcompdateTextBox" runat="server" Text='<%# Bind("INSTALLcompdate") %>' />
                        <br />
                        INSTALLtosalesdate:
                        <asp:TextBox ID="INSTALLtosalesdateTextBox" runat="server" Text='<%# Bind("INSTALLtosalesdate") %>' />
                        <br />
                        Seizmicin:
                        <asp:TextBox ID="SeizmicinTextBox" runat="server" Text='<%# Bind("Seizmicin") %>' />
                        <br />
                        Seizmicout:
                        <asp:TextBox ID="SeizmicoutTextBox" runat="server" Text='<%# Bind("Seizmicout") %>' />
                        <br />
                        SN:
                        <asp:TextBox ID="SNTextBox" runat="server" Text='<%# Bind("SN") %>' />
                        <br />
                        Salesdwgref:
                        <asp:TextBox ID="SalesdwgrefTextBox" runat="server" Text='<%# Bind("Salesdwgref") %>' />
                        <br />
                        TARELFROMplan:
                        <asp:TextBox ID="TARELFROMplanTextBox" runat="server" Text='<%# Bind("TARELFROMplan") %>' />
                        <br />
                        HYRELFROMplan:
                        <asp:TextBox ID="HYRELFROMplanTextBox" runat="server" Text='<%# Bind("HYRELFROMplan") %>' />
                        <br />
                        ELRELFROMplan:
                        <asp:TextBox ID="ELRELFROMplanTextBox" runat="server" Text='<%# Bind("ELRELFROMplan") %>' />
                        <br />
                        PNRELFROMplan:
                        <asp:TextBox ID="PNRELFROMplanTextBox" runat="server" Text='<%# Bind("PNRELFROMplan") %>' />
                        <br />
                        ShippedWithEquipment:
                        <asp:CheckBox ID="ShippedWithEquipmentCheckBox" runat="server" Checked='<%# Bind("ShippedWithEquipment") %>' />
                        <br />
                        Mailedtocustomer:
                        <asp:CheckBox ID="MailedtocustomerCheckBox" runat="server" Checked='<%# Bind("Mailedtocustomer") %>' />
                        <br />
                        twocdsmailedtocustomer:
                        <asp:CheckBox ID="twocdsmailedtocustomerCheckBox" runat="server" Checked='<%# Bind("twocdsmailedtocustomer") %>' />
                        <br />
                        mancompdate:
                        <asp:TextBox ID="mancompdateTextBox" runat="server" Text='<%# Bind("mancompdate") %>' />
                        <br />
                        manualmaileddate:
                        <asp:TextBox ID="manualmaileddateTextBox" runat="server" Text='<%# Bind("manualmaileddate") %>' />
                        <br />
                        cdsmaileddate:
                        <asp:TextBox ID="cdsmaileddateTextBox" runat="server" Text='<%# Bind("cdsmaileddate") %>' />
                        <br />
                        SVCmanualcompdate:
                        <asp:TextBox ID="SVCmanualcompdateTextBox" runat="server" Text='<%# Bind("SVCmanualcompdate") %>' />
                        <br />
                        SVCmansenttosvcdept:
                        <asp:TextBox ID="SVCmansenttosvcdeptTextBox" runat="server" Text='<%# Bind("SVCmansenttosvcdept") %>' />
                        <br />
                        ManualComments:
                        <asp:TextBox ID="ManualCommentsTextBox" runat="server" Text='<%# Bind("ManualComments") %>' />
                        <br />
                        ItemDESCRIPTION:
                        <asp:TextBox ID="ItemDESCRIPTIONTextBox" runat="server" Text='<%# Bind("ItemDESCRIPTION") %>' />
                        <br />
                        refSN:
                        <asp:TextBox ID="refSNTextBox" runat="server" Text='<%# Bind("refSN") %>' />
                        <br />
                        refJOBnum:
                        <asp:TextBox ID="refJOBnumTextBox" runat="server" Text='<%# Bind("refJOBnum") %>' />
                        <br />
                        dwnby1:
                        <asp:TextBox ID="dwnby1TextBox" runat="server" Text='<%# Bind("dwnby1") %>' />
                        <br />
                        dwnby2:
                        <asp:TextBox ID="dwnby2TextBox" runat="server" Text='<%# Bind("dwnby2") %>' />
                        <br />
                        dwnby3:
                        <asp:TextBox ID="dwnby3TextBox" runat="server" Text='<%# Bind("dwnby3") %>' />
                        <br />
                        dwnby4:
                        <asp:TextBox ID="dwnby4TextBox" runat="server" Text='<%# Bind("dwnby4") %>' />
                        <br />
                        dwnby5:
                        <asp:TextBox ID="dwnby5TextBox" runat="server" Text='<%# Bind("dwnby5") %>' />
                        <br />
                        dwnby6:
                        <asp:TextBox ID="dwnby6TextBox" runat="server" Text='<%# Bind("dwnby6") %>' />
                        <br />
                        dwnby7:
                        <asp:TextBox ID="dwnby7TextBox" runat="server" Text='<%# Bind("dwnby7") %>' />
                        <br />
                        dwnby8:
                        <asp:TextBox ID="dwnby8TextBox" runat="server" Text='<%# Bind("dwnby8") %>' />
                        <br />
                        dwnby9:
                        <asp:TextBox ID="dwnby9TextBox" runat="server" Text='<%# Bind("dwnby9") %>' />
                        <br />
                        dwnby10:
                        <asp:TextBox ID="dwnby10TextBox" runat="server" Text='<%# Bind("dwnby10") %>' />
                        <br />
                        dwnby11:
                        <asp:TextBox ID="dwnby11TextBox" runat="server" Text='<%# Bind("dwnby11") %>' />
                        <br />
                        dwnby12:
                        <asp:TextBox ID="dwnby12TextBox" runat="server" Text='<%# Bind("dwnby12") %>' />
                        <br />
                        BOMentereddate1:
                        <asp:TextBox ID="BOMentereddate1TextBox" runat="server" Text='<%# Bind("BOMentereddate1") %>' />
                        <br />
                        DwgrelTOPLAN1:
                        <asp:TextBox ID="DwgrelTOPLAN1TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN1") %>' />
                        <br />
                        DwgrelFROMPLAN1:
                        <asp:TextBox ID="DwgrelFROMPLAN1TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN1") %>' />
                        <br />
                        BOMentereddate2:
                        <asp:TextBox ID="BOMentereddate2TextBox" runat="server" Text='<%# Bind("BOMentereddate2") %>' />
                        <br />
                        DwgrelTOPLAN2:
                        <asp:TextBox ID="DwgrelTOPLAN2TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN2") %>' />
                        <br />
                        DwgrelFROMPLAN2:
                        <asp:TextBox ID="DwgrelFROMPLAN2TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN2") %>' />
                        <br />
                        BOMentereddate3:
                        <asp:TextBox ID="BOMentereddate3TextBox" runat="server" Text='<%# Bind("BOMentereddate3") %>' />
                        <br />
                        DwgrelTOPLAN3:
                        <asp:TextBox ID="DwgrelTOPLAN3TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN3") %>' />
                        <br />
                        DwgrelFROMPLAN3:
                        <asp:TextBox ID="DwgrelFROMPLAN3TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN3") %>' />
                        <br />
                        BOMentereddate4:
                        <asp:TextBox ID="BOMentereddate4TextBox" runat="server" Text='<%# Bind("BOMentereddate4") %>' />
                        <br />
                        DwgrelTOPLAN4:
                        <asp:TextBox ID="DwgrelTOPLAN4TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN4") %>' />
                        <br />
                        DwgrelFROMPLAN4:
                        <asp:TextBox ID="DwgrelFROMPLAN4TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN4") %>' />
                        <br />
                        BOMentereddate5:
                        <asp:TextBox ID="BOMentereddate5TextBox" runat="server" Text='<%# Bind("BOMentereddate5") %>' />
                        <br />
                        DwgrelTOPLAN5:
                        <asp:TextBox ID="DwgrelTOPLAN5TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN5") %>' />
                        <br />
                        DwgrelFROMPLAN5:
                        <asp:TextBox ID="DwgrelFROMPLAN5TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN5") %>' />
                        <br />
                        BOMentereddate6:
                        <asp:TextBox ID="BOMentereddate6TextBox" runat="server" Text='<%# Bind("BOMentereddate6") %>' />
                        <br />
                        DwgrelTOPLAN6:
                        <asp:TextBox ID="DwgrelTOPLAN6TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN6") %>' />
                        <br />
                        DwgrelFROMPLAN6:
                        <asp:TextBox ID="DwgrelFROMPLAN6TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN6") %>' />
                        <br />
                        BOMentereddate7:
                        <asp:TextBox ID="BOMentereddate7TextBox" runat="server" Text='<%# Bind("BOMentereddate7") %>' />
                        <br />
                        DwgrelTOPLAN7:
                        <asp:TextBox ID="DwgrelTOPLAN7TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN7") %>' />
                        <br />
                        DwgrelFROMPLAN7:
                        <asp:TextBox ID="DwgrelFROMPLAN7TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN7") %>' />
                        <br />
                        BOMentereddate8:
                        <asp:TextBox ID="BOMentereddate8TextBox" runat="server" Text='<%# Bind("BOMentereddate8") %>' />
                        <br />
                        DwgrelTOPLAN8:
                        <asp:TextBox ID="DwgrelTOPLAN8TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN8") %>' />
                        <br />
                        DwgrelFROMPLAN8:
                        <asp:TextBox ID="DwgrelFROMPLAN8TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN8") %>' />
                        <br />
                        BOMentereddate9:
                        <asp:TextBox ID="BOMentereddate9TextBox" runat="server" Text='<%# Bind("BOMentereddate9") %>' />
                        <br />
                        DwgrelTOPLAN9:
                        <asp:TextBox ID="DwgrelTOPLAN9TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN9") %>' />
                        <br />
                        DwgrelFROMPLAN9:
                        <asp:TextBox ID="DwgrelFROMPLAN9TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN9") %>' />
                        <br />
                        BOMentereddate10:
                        <asp:TextBox ID="BOMentereddate10TextBox" runat="server" Text='<%# Bind("BOMentereddate10") %>' />
                        <br />
                        DwgrelTOPLAN10:
                        <asp:TextBox ID="DwgrelTOPLAN10TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN10") %>' />
                        <br />
                        DwgrelFROMPLAN10:
                        <asp:TextBox ID="DwgrelFROMPLAN10TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN10") %>' />
                        <br />
                        BOMentereddate11:
                        <asp:TextBox ID="BOMentereddate11TextBox" runat="server" Text='<%# Bind("BOMentereddate11") %>' />
                        <br />
                        DwgrelTOPLAN11:
                        <asp:TextBox ID="DwgrelTOPLAN11TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN11") %>' />
                        <br />
                        DwgrelFROMPLAN11:
                        <asp:TextBox ID="DwgrelFROMPLAN11TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN11") %>' />
                        <br />
                        BOMentereddate12:
                        <asp:TextBox ID="BOMentereddate12TextBox" runat="server" Text='<%# Bind("BOMentereddate12") %>' />
                        <br />
                        DwgrelTOPLAN12:
                        <asp:TextBox ID="DwgrelTOPLAN12TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN12") %>' />
                        <br />
                        DwgrelFROMPLAN12:
                        <asp:TextBox ID="DwgrelFROMPLAN12TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN12") %>' />
                        <br />
                        RushBlock:
                        <asp:TextBox ID="RushBlockTextBox" runat="server" Text='<%# Bind("RushBlock") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        BOMENTEREDTA:
                        <asp:TextBox ID="BOMENTEREDTATextBox" runat="server" Text='<%# Bind("BOMENTEREDTA") %>' />
                        <br />
                        BOMENTEREDEL:
                        <asp:TextBox ID="BOMENTEREDELTextBox" runat="server" Text='<%# Bind("BOMENTEREDEL") %>' />
                        <br />
                        BOMENTEREDHY:
                        <asp:TextBox ID="BOMENTEREDHYTextBox" runat="server" Text='<%# Bind("BOMENTEREDHY") %>' />
                        <br />
                        BOMENTEREDPN:
                        <asp:TextBox ID="BOMENTEREDPNTextBox" runat="server" Text='<%# Bind("BOMENTEREDPN") %>' />
                        <br />
                        GAdwnby:
                        <asp:TextBox ID="GAdwnbyTextBox" runat="server" Text='<%# Bind("GAdwnby") %>' />
                        <br />
                        GAREVdate2:
                        <asp:TextBox ID="GAREVdate2TextBox" runat="server" Text='<%# Bind("GAREVdate2") %>' />
                        <br />
                        GAREVdate3:
                        <asp:TextBox ID="GAREVdate3TextBox" runat="server" Text='<%# Bind("GAREVdate3") %>' />
                        <br />
                        GAREVdate4:
                        <asp:TextBox ID="GAREVdate4TextBox" runat="server" Text='<%# Bind("GAREVdate4") %>' />
                        <br />
                        GAREVdate1:
                        <asp:TextBox ID="GAREVdate1TextBox" runat="server" Text='<%# Bind("GAREVdate1") %>' />
                        <br />
                        GAREVtoSALES1:
                        <asp:TextBox ID="GAREVtoSALES1TextBox" runat="server" Text='<%# Bind("GAREVtoSALES1") %>' />
                        <br />
                        GAREVtoSALES2:
                        <asp:TextBox ID="GAREVtoSALES2TextBox" runat="server" Text='<%# Bind("GAREVtoSALES2") %>' />
                        <br />
                        GAREVtoSALES3:
                        <asp:TextBox ID="GAREVtoSALES3TextBox" runat="server" Text='<%# Bind("GAREVtoSALES3") %>' />
                        <br />
                        GAREVtoSALES4:
                        <asp:TextBox ID="GAREVtoSALES4TextBox" runat="server" Text='<%# Bind("GAREVtoSALES4") %>' />
                        <br />
                        GAREVtoCUST1:
                        <asp:TextBox ID="GAREVtoCUST1TextBox" runat="server" Text='<%# Bind("GAREVtoCUST1") %>' />
                        <br />
                        GAREVtoCUST2:
                        <asp:TextBox ID="GAREVtoCUST2TextBox" runat="server" Text='<%# Bind("GAREVtoCUST2") %>' />
                        <br />
                        GAREVtoCUST3:
                        <asp:TextBox ID="GAREVtoCUST3TextBox" runat="server" Text='<%# Bind("GAREVtoCUST3") %>' />
                        <br />
                        GAREVtoCUST4:
                        <asp:TextBox ID="GAREVtoCUST4TextBox" runat="server" Text='<%# Bind("GAREVtoCUST4") %>' />
                        <br />
                        StockConfirmedby:
                        <asp:TextBox ID="StockConfirmedbyTextBox" runat="server" Text='<%# Bind("StockConfirmedby") %>' />
                        <br />
                        SotckConfirmedbydate:
                        <asp:TextBox ID="SotckConfirmedbydateTextBox" runat="server" Text='<%# Bind("SotckConfirmedbydate") %>' />
                        <br />
                        CurrentStatus:
                        <asp:TextBox ID="CurrentStatusTextBox" runat="server" Text='<%# Bind("CurrentStatus") %>' />
                        <br />
                        PrimaryVoltage:
                        <asp:TextBox ID="PrimaryVoltageTextBox" runat="server" Text='<%# Bind("PrimaryVoltage") %>' />
                        <br />
                        JOnum:
                        <asp:TextBox ID="JOnumTextBox" runat="server" Text='<%# Bind("JOnum") %>' />
                        <br />
                        Quoterefnum:
                        <asp:TextBox ID="QuoterefnumTextBox" runat="server" Text='<%# Bind("Quoterefnum") %>' />
                        <br />
                        TONP:
                        <asp:TextBox ID="TONPTextBox" runat="server" Text='<%# Bind("TONP") %>' />
                        <br />
                        ECNREV1:
                        <asp:TextBox ID="ECNREV1TextBox" runat="server" Text='<%# Bind("ECNREV1") %>' />
                        <br />
                        ECNREV2:
                        <asp:TextBox ID="ECNREV2TextBox" runat="server" Text='<%# Bind("ECNREV2") %>' />
                        <br />
                        ECNREV3:
                        <asp:TextBox ID="ECNREV3TextBox" runat="server" Text='<%# Bind("ECNREV3") %>' />
                        <br />
                        ECNREV4:
                        <asp:TextBox ID="ECNREV4TextBox" runat="server" Text='<%# Bind("ECNREV4") %>' />
                        <br />
                        HPU:
                        <asp:TextBox ID="HPUTextBox" runat="server" Text='<%# Bind("HPU") %>' />
                        <br />
                        Vahle:
                        <asp:TextBox ID="VahleTextBox" runat="server" Text='<%# Bind("Vahle") %>' />
                        <br />
                        GAREVdate5:
                        <asp:TextBox ID="GAREVdate5TextBox" runat="server" Text='<%# Bind("GAREVdate5") %>' />
                        <br />
                        GAREVtoCUST5:
                        <asp:TextBox ID="GAREVtoCUST5TextBox" runat="server" Text='<%# Bind("GAREVtoCUST5") %>' />
                        <br />
                        GAREVtoSALES5:
                        <asp:TextBox ID="GAREVtoSALES5TextBox" runat="server" Text='<%# Bind("GAREVtoSALES5") %>' />
                        <br />
                        ECNREV5:
                        <asp:TextBox ID="ECNREV5TextBox" runat="server" Text='<%# Bind("ECNREV5") %>' />
                        <br />
                        OSD:
                        <asp:TextBox ID="OSDTextBox" runat="server" Text='<%# Bind("OSD") %>' />
                        <br />
                        MultiECN:
                        <asp:TextBox ID="MultiECNTextBox" runat="server" Text='<%# Bind("MultiECN") %>' />
                        <br />
                        MultiECNDate:
                        <asp:TextBox ID="MultiECNDateTextBox" runat="server" Text='<%# Bind("MultiECNDate") %>' />
                        <br />
                        RA:
                        <asp:CheckBox ID="RACheckBox" runat="server" Checked='<%# Bind("RA") %>' />
                        <br />
                        TL:
                        <asp:CheckBox ID="TLCheckBox" runat="server" Checked='<%# Bind("TL") %>' />
                        <br />
                        RG:
                        <asp:CheckBox ID="RGCheckBox" runat="server" Checked='<%# Bind("RG") %>' />
                        <br />
                        LT:
                        <asp:CheckBox ID="LTCheckBox" runat="server" Checked='<%# Bind("LT") %>' />
                        <br />
                        BR:
                        <asp:CheckBox ID="BRCheckBox" runat="server" Checked='<%# Bind("BR") %>' />
                        <br />
                        JW:
                        <asp:CheckBox ID="JWCheckBox" runat="server" Checked='<%# Bind("JW") %>' />
                        <br />
                        BW:
                        <asp:CheckBox ID="BWCheckBox" runat="server" Checked='<%# Bind("BW") %>' />
                        <br />
                        HC:
                        <asp:CheckBox ID="HCCheckBox" runat="server" Checked='<%# Bind("HC") %>' />
                        <br />
                        JR:
                        <asp:CheckBox ID="JRCheckBox" runat="server" Checked='<%# Bind("JR") %>' />
                        <br />
                        LW:
                        <asp:CheckBox ID="LWCheckBox" runat="server" Checked='<%# Bind("LW") %>' />
                        <br />
                        RC:
                        <asp:CheckBox ID="RCCheckBox" runat="server" Checked='<%# Bind("RC") %>' />
                        <br />
                        JT:
                        <asp:CheckBox ID="JTCheckBox" runat="server" Checked='<%# Bind("JT") %>' />
                        <br />
                        ECN1:
                        <asp:TextBox ID="ECN1TextBox" runat="server" Text='<%# Bind("ECN1") %>' />
                        <br />
                        ECN2:
                        <asp:TextBox ID="ECN2TextBox" runat="server" Text='<%# Bind("ECN2") %>' />
                        <br />
                        ECN3:
                        <asp:TextBox ID="ECN3TextBox" runat="server" Text='<%# Bind("ECN3") %>' />
                        <br />
                        ECN4:
                        <asp:TextBox ID="ECN4TextBox" runat="server" Text='<%# Bind("ECN4") %>' />
                        <br />
                        ECN5:
                        <asp:TextBox ID="ECN5TextBox" runat="server" Text='<%# Bind("ECN5") %>' />
                        <br />
                        ECN6:
                        <asp:TextBox ID="ECN6TextBox" runat="server" Text='<%# Bind("ECN6") %>' />
                        <br />
                        ECNDate1:
                        <asp:TextBox ID="ECNDate1TextBox" runat="server" Text='<%# Bind("ECNDate1") %>' />
                        <br />
                        ECNDate2:
                        <asp:TextBox ID="ECNDate2TextBox" runat="server" Text='<%# Bind("ECNDate2") %>' />
                        <br />
                        ECNDate3:
                        <asp:TextBox ID="ECNDate3TextBox" runat="server" Text='<%# Bind("ECNDate3") %>' />
                        <br />
                        ECNDate4:
                        <asp:TextBox ID="ECNDate4TextBox" runat="server" Text='<%# Bind("ECNDate4") %>' />
                        <br />
                        ECNDate5:
                        <asp:TextBox ID="ECNDate5TextBox" runat="server" Text='<%# Bind("ECNDate5") %>' />
                        <br />
                        ECNDate6:
                        <asp:TextBox ID="ECNDate6TextBox" runat="server" Text='<%# Bind("ECNDate6") %>' />
                        <br />
                        ECN1Text:
                        <asp:TextBox ID="ECN1TextTextBox" runat="server" Text='<%# Bind("ECN1Text") %>' />
                        <br />
                        ECN2Text:
                        <asp:TextBox ID="ECN2TextTextBox" runat="server" Text='<%# Bind("ECN2Text") %>' />
                        <br />
                        ECN3Text:
                        <asp:TextBox ID="ECN3TextTextBox" runat="server" Text='<%# Bind("ECN3Text") %>' />
                        <br />
                        ECN4Text:
                        <asp:TextBox ID="ECN4TextTextBox" runat="server" Text='<%# Bind("ECN4Text") %>' />
                        <br />
                        ECN5Text:
                        <asp:TextBox ID="ECN5TextTextBox" runat="server" Text='<%# Bind("ECN5Text") %>' />
                        <br />
                        ECN6Text:
                        <asp:TextBox ID="ECN6TextTextBox" runat="server" Text='<%# Bind("ECN6Text") %>' />
                        <br />
                        GAESTRELDATE:
                        <asp:TextBox ID="GAESTRELDATETextBox" runat="server" Text='<%# Bind("GAESTRELDATE") %>' />
                        <br />
                        ELESTRELDATE:
                        <asp:TextBox ID="ELESTRELDATETextBox" runat="server" Text='<%# Bind("ELESTRELDATE") %>' />
                        <br />
                        TAESTRELDATE:
                        <asp:TextBox ID="TAESTRELDATETextBox" runat="server" Text='<%# Bind("TAESTRELDATE") %>' />
                        <br />
                        ELREQD:
                        <asp:CheckBox ID="ELREQDCheckBox" runat="server" Checked='<%# Bind("ELREQD") %>' />
                        <br />
                        OrdernotesESR:
                        <asp:TextBox ID="OrdernotesESRTextBox" runat="server" Text='<%# Bind("OrdernotesESR") %>' />
                        <br />
                        SYSPROPESTRELDATE:
                        <asp:TextBox ID="SYSPROPESTRELDATETextBox" runat="server" Text='<%# Bind("SYSPROPESTRELDATE") %>' />
                        <br />
                        HYESTRELDATE:
                        <asp:TextBox ID="HYESTRELDATETextBox" runat="server" Text='<%# Bind("HYESTRELDATE") %>' />
                        <br />
                        PNESTRELDATE:
                        <asp:TextBox ID="PNESTRELDATETextBox" runat="server" Text='<%# Bind("PNESTRELDATE") %>' />
                        <br />
                        INSTALLESTRELDATE:
                        <asp:TextBox ID="INSTALLESTRELDATETextBox" runat="server" Text='<%# Bind("INSTALLESTRELDATE") %>' />
                        <br />
                        SOnum:
                        <asp:TextBox ID="SOnumTextBox" runat="server" Text='<%# Bind("SOnum") %>' />
                        <br />
                        RW:
                        <asp:CheckBox ID="RWCheckBox" runat="server" Checked='<%# Bind("RW") %>' />
                        <br />
                        LabelType:
                        <asp:TextBox ID="LabelTypeTextBox" runat="server" Text='<%# Bind("LabelType") %>' />
                        <br />
                        LabelDateComp:
                        <asp:TextBox ID="LabelDateCompTextBox" runat="server" Text='<%# Bind("LabelDateComp") %>' />
                        <br />
                        LabelDateSent:
                        <asp:TextBox ID="LabelDateSentTextBox" runat="server" Text='<%# Bind("LabelDateSent") %>' />
                        <br />
                        LabelMethod:
                        <asp:TextBox ID="LabelMethodTextBox" runat="server" Text='<%# Bind("LabelMethod") %>' />
                        <br />
                        LabelRecvd:
                        <asp:TextBox ID="LabelRecvdTextBox" runat="server" Text='<%# Bind("LabelRecvd") %>' />
                        <br />
                        LabelRecvdBy:
                        <asp:TextBox ID="LabelRecvdByTextBox" runat="server" Text='<%# Bind("LabelRecvdBy") %>' />
                        <br />
                        ECNDate7:
                        <asp:TextBox ID="ECNDate7TextBox" runat="server" Text='<%# Bind("ECNDate7") %>' />
                        <br />
                        ECN7:
                        <asp:TextBox ID="ECN7TextBox" runat="server" Text='<%# Bind("ECN7") %>' />
                        <br />
                        ECN7Text:
                        <asp:TextBox ID="ECN7TextTextBox" runat="server" Text='<%# Bind("ECN7Text") %>' />
                        <br />
                        ECNDate8:
                        <asp:TextBox ID="ECNDate8TextBox" runat="server" Text='<%# Bind("ECNDate8") %>' />
                        <br />
                        ECN8:
                        <asp:TextBox ID="ECN8TextBox" runat="server" Text='<%# Bind("ECN8") %>' />
                        <br />
                        ECN8Text:
                        <asp:TextBox ID="ECN8TextTextBox" runat="server" Text='<%# Bind("ECN8Text") %>' />
                        <br />
                        Drafter7:
                        <asp:TextBox ID="Drafter7TextBox" runat="server" Text='<%# Bind("Drafter7") %>' />
                        <br />
                        lead_setter:
                        <asp:TextBox ID="lead_setterTextBox" runat="server" Text='<%# Bind("lead_setter") %>' />
                        <br />
                        WW:
                        <asp:CheckBox ID="WWCheckBox" runat="server" Checked='<%# Bind("WW") %>' />
                        <br />
                        manMOD:
                        <asp:TextBox ID="manMODTextBox" runat="server" Text='<%# Bind("manMOD") %>' />
                        <br />
                        Date_to_Check:
                        <asp:TextBox ID="Date_to_CheckTextBox" runat="server" Text='<%# Bind("Date_to_Check") %>' />
                        <br />
                        Job_Date_Check_Complete:
                        <asp:TextBox ID="Job_Date_Check_CompleteTextBox" runat="server" Text='<%# Bind("Job_Date_Check_Complete") %>' />
                        <br />
                        Job_Date_to_BOM:
                        <asp:TextBox ID="Job_Date_to_BOMTextBox" runat="server" Text='<%# Bind("Job_Date_to_BOM") %>' />
                        <br />
                        Job_Date_Rel_To_Plan:
                        <asp:TextBox ID="Job_Date_Rel_To_PlanTextBox" runat="server" Text='<%# Bind("Job_Date_Rel_To_Plan") %>' />
                        <br />
                        control_est_rel_date:
                        <asp:TextBox ID="control_est_rel_dateTextBox" runat="server" Text='<%# Bind("control_est_rel_date") %>' />
                        <br />
                        control_comp_date:
                        <asp:TextBox ID="control_comp_dateTextBox" runat="server" Text='<%# Bind("control_comp_date") %>' />
                        <br />
                        control_to_plan_date:
                        <asp:TextBox ID="control_to_plan_dateTextBox" runat="server" Text='<%# Bind("control_to_plan_date") %>' />
                        <br />
                        Item_category:
                        <asp:TextBox ID="Item_categoryTextBox" runat="server" Text='<%# Bind("Item_category") %>' />
                        <br />
                        LeadTime:
                        <asp:TextBox ID="LeadTimeTextBox" runat="server" Text='<%# Bind("LeadTime") %>' />
                        <br />
                        ECNDate9:
                        <asp:TextBox ID="ECNDate9TextBox" runat="server" Text='<%# Bind("ECNDate9") %>' />
                        <br />
                        ECN9:
                        <asp:TextBox ID="ECN9TextBox" runat="server" Text='<%# Bind("ECN9") %>' />
                        <br />
                        ECN9Text:
                        <asp:TextBox ID="ECN9TextTextBox" runat="server" Text='<%# Bind("ECN9Text") %>' />
                        <br />
                        ECNDate10:
                        <asp:TextBox ID="ECNDate10TextBox" runat="server" Text='<%# Bind("ECNDate10") %>' />
                        <br />
                        ECN10:
                        <asp:TextBox ID="ECN10TextBox" runat="server" Text='<%# Bind("ECN10") %>' />
                        <br />
                        ECN10Text:
                        <asp:TextBox ID="ECN10TextTextBox" runat="server" Text='<%# Bind("ECN10Text") %>' />
                        <br />
                        ECNDate11:
                        <asp:TextBox ID="ECNDate11TextBox" runat="server" Text='<%# Bind("ECNDate11") %>' />
                        <br />
                        ECN11:
                        <asp:TextBox ID="ECN11TextBox" runat="server" Text='<%# Bind("ECN11") %>' />
                        <br />
                        ECN11Text:
                        <asp:TextBox ID="ECN11TextTextBox" runat="server" Text='<%# Bind("ECN11Text") %>' />
                        <br />
                        ECNDate12:
                        <asp:TextBox ID="ECNDate12TextBox" runat="server" Text='<%# Bind("ECNDate12") %>' />
                        <br />
                        ECN12:
                        <asp:TextBox ID="ECN12TextBox" runat="server" Text='<%# Bind("ECN12") %>' />
                        <br />
                        ECN12Text:
                        <asp:TextBox ID="ECN12TextTextBox" runat="server" Text='<%# Bind("ECN12Text") %>' />
                        <br />
                        Labels_Reqd:
                        <asp:CheckBox ID="Labels_ReqdCheckBox" runat="server" Checked='<%# Bind("Labels_Reqd") %>' />
                        <br />
                        TimeCreated:
                        <asp:TextBox ID="TimeCreatedTextBox" runat="server" Text='<%# Bind("TimeCreated") %>' />
                        <br />
                        DateCreated:
                        <asp:TextBox ID="DateCreatedTextBox" runat="server" Text='<%# Bind("DateCreated") %>' />
                        <br />
                        Label_ID:
                        <asp:TextBox ID="Label_IDTextBox" runat="server" Text='<%# Bind("Label_ID") %>' />
                        <br />
                        Date_Modified:
                        <asp:TextBox ID="Date_ModifiedTextBox" runat="server" Text='<%# Bind("Date_Modified") %>' />
                        <br />
                        MECHNotes:
                        <asp:TextBox ID="MECHNotesTextBox" runat="server" Text='<%# Bind("MECHNotes") %>' />
                        <br />
                        CONTROLNotes:
                        <asp:TextBox ID="CONTROLNotesTextBox" runat="server" Text='<%# Bind("CONTROLNotes") %>' />
                        <br />
                        Control_Lead_Time:
                        <asp:TextBox ID="Control_Lead_TimeTextBox" runat="server" Text='<%# Bind("Control_Lead_Time") %>' />
                        <br />
                        GA_Lead_Time:
                        <asp:TextBox ID="GA_Lead_TimeTextBox" runat="server" Text='<%# Bind("GA_Lead_Time") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <EditRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <InsertItemTemplate>
                        POnumber:
                        <asp:TextBox ID="POnumberTextBox" runat="server" Text='<%# Bind("POnumber") %>' />
                        <br />
                        COnumber:
                        <asp:TextBox ID="COnumberTextBox" runat="server" Text='<%# Bind("COnumber") %>' />
                        <br />
                        ShipDate:
                        <asp:TextBox ID="ShipDateTextBox" runat="server" Text='<%# Bind("ShipDate") %>' />
                        <br />
                        Notes:
                        <asp:TextBox ID="NotesTextBox" runat="server" Text='<%# Bind("Notes") %>' />
                        <br />
                        DateRecvd:
                        <asp:TextBox ID="DateRecvdTextBox" runat="server" Text='<%# Bind("DateRecvd") %>' />
                        <br />
                        Company:
                        <asp:TextBox ID="CompanyTextBox" runat="server" Text='<%# Bind("Company") %>' />
                        <br />
                        Address:
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                        <br />
                        Phone:
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                        <br />
                        POC:
                        <asp:TextBox ID="POCTextBox" runat="server" Text='<%# Bind("POC") %>' />
                        <br />
                        Status:
                        <asp:TextBox ID="StatusTextBox" runat="server" Text='<%# Bind("Status") %>' />
                        <br />
                        GAdwg:
                        <asp:TextBox ID="GAdwgTextBox" runat="server" Text='<%# Bind("GAdwg") %>' />
                        <br />
                        GArev:
                        <asp:TextBox ID="GArevTextBox" runat="server" Text='<%# Bind("GArev") %>' />
                        <br />
                        Dwg1:
                        <asp:TextBox ID="Dwg1TextBox" runat="server" Text='<%# Bind("Dwg1") %>' />
                        <br />
                        Dwg2:
                        <asp:TextBox ID="Dwg2TextBox" runat="server" Text='<%# Bind("Dwg2") %>' />
                        <br />
                        Dwg3:
                        <asp:TextBox ID="Dwg3TextBox" runat="server" Text='<%# Bind("Dwg3") %>' />
                        <br />
                        Dwg4:
                        <asp:TextBox ID="Dwg4TextBox" runat="server" Text='<%# Bind("Dwg4") %>' />
                        <br />
                        Dwg5:
                        <asp:TextBox ID="Dwg5TextBox" runat="server" Text='<%# Bind("Dwg5") %>' />
                        <br />
                        Dwg6:
                        <asp:TextBox ID="Dwg6TextBox" runat="server" Text='<%# Bind("Dwg6") %>' />
                        <br />
                        Dwg7:
                        <asp:TextBox ID="Dwg7TextBox" runat="server" Text='<%# Bind("Dwg7") %>' />
                        <br />
                        Dwg8:
                        <asp:TextBox ID="Dwg8TextBox" runat="server" Text='<%# Bind("Dwg8") %>' />
                        <br />
                        Dwg9:
                        <asp:TextBox ID="Dwg9TextBox" runat="server" Text='<%# Bind("Dwg9") %>' />
                        <br />
                        Dwg10:
                        <asp:TextBox ID="Dwg10TextBox" runat="server" Text='<%# Bind("Dwg10") %>' />
                        <br />
                        Dwg11:
                        <asp:TextBox ID="Dwg11TextBox" runat="server" Text='<%# Bind("Dwg11") %>' />
                        <br />
                        Dwg12:
                        <asp:TextBox ID="Dwg12TextBox" runat="server" Text='<%# Bind("Dwg12") %>' />
                        <br />
                        Dwgdatecomp1:
                        <asp:TextBox ID="Dwgdatecomp1TextBox" runat="server" Text='<%# Bind("Dwgdatecomp1") %>' />
                        <br />
                        Dwgdatecomp2:
                        <asp:TextBox ID="Dwgdatecomp2TextBox" runat="server" Text='<%# Bind("Dwgdatecomp2") %>' />
                        <br />
                        Dwgdatecomp3:
                        <asp:TextBox ID="Dwgdatecomp3TextBox" runat="server" Text='<%# Bind("Dwgdatecomp3") %>' />
                        <br />
                        Dwgdatecomp4:
                        <asp:TextBox ID="Dwgdatecomp4TextBox" runat="server" Text='<%# Bind("Dwgdatecomp4") %>' />
                        <br />
                        Dwgdatecomp5:
                        <asp:TextBox ID="Dwgdatecomp5TextBox" runat="server" Text='<%# Bind("Dwgdatecomp5") %>' />
                        <br />
                        Dwgdatecomp6:
                        <asp:TextBox ID="Dwgdatecomp6TextBox" runat="server" Text='<%# Bind("Dwgdatecomp6") %>' />
                        <br />
                        Dwgdatecomp7:
                        <asp:TextBox ID="Dwgdatecomp7TextBox" runat="server" Text='<%# Bind("Dwgdatecomp7") %>' />
                        <br />
                        Dwgdatecomp8:
                        <asp:TextBox ID="Dwgdatecomp8TextBox" runat="server" Text='<%# Bind("Dwgdatecomp8") %>' />
                        <br />
                        Dwgdatecomp9:
                        <asp:TextBox ID="Dwgdatecomp9TextBox" runat="server" Text='<%# Bind("Dwgdatecomp9") %>' />
                        <br />
                        Dwgdatecomp10:
                        <asp:TextBox ID="Dwgdatecomp10TextBox" runat="server" Text='<%# Bind("Dwgdatecomp10") %>' />
                        <br />
                        Dwgdatecomp11:
                        <asp:TextBox ID="Dwgdatecomp11TextBox" runat="server" Text='<%# Bind("Dwgdatecomp11") %>' />
                        <br />
                        Dwgdatecomp12:
                        <asp:TextBox ID="Dwgdatecomp12TextBox" runat="server" Text='<%# Bind("Dwgdatecomp12") %>' />
                        <br />
                        ItemQty:
                        <asp:TextBox ID="ItemQtyTextBox" runat="server" Text='<%# Bind("ItemQty") %>' />
                        <br />
                        Item:
                        <asp:TextBox ID="ItemTextBox" runat="server" Text='<%# Bind("Item") %>' />
                        <br />
                        AssnTo:
                        <asp:TextBox ID="AssnToTextBox" runat="server" Text='<%# Bind("AssnTo") %>' />
                        <br />
                        GAReqdDate:
                        <asp:TextBox ID="GAReqdDateTextBox" runat="server" Text='<%# Bind("GAReqdDate") %>' />
                        <br />
                        GACompDate:
                        <asp:TextBox ID="GACompDateTextBox" runat="server" Text='<%# Bind("GACompDate") %>' />
                        <br />
                        GAtoSalesDate:
                        <asp:TextBox ID="GAtoSalesDateTextBox" runat="server" Text='<%# Bind("GAtoSalesDate") %>' />
                        <br />
                        GAtoCustDate:
                        <asp:TextBox ID="GAtoCustDateTextBox" runat="server" Text='<%# Bind("GAtoCustDate") %>' />
                        <br />
                        FirstAppDate:
                        <asp:TextBox ID="FirstAppDateTextBox" runat="server" Text='<%# Bind("FirstAppDate") %>' />
                        <br />
                        TAdwgnum:
                        <asp:TextBox ID="TAdwgnumTextBox" runat="server" Text='<%# Bind("TAdwgnum") %>' />
                        <br />
                        TACompDAte:
                        <asp:TextBox ID="TACompDAteTextBox" runat="server" Text='<%# Bind("TACompDAte") %>' />
                        <br />
                        TABOMEntereddate:
                        <asp:TextBox ID="TABOMEntereddateTextBox" runat="server" Text='<%# Bind("TABOMEntereddate") %>' />
                        <br />
                        TARELtoPlanDate:
                        <asp:TextBox ID="TARELtoPlanDateTextBox" runat="server" Text='<%# Bind("TARELtoPlanDate") %>' />
                        <br />
                        ELdwgnum:
                        <asp:TextBox ID="ELdwgnumTextBox" runat="server" Text='<%# Bind("ELdwgnum") %>' />
                        <br />
                        ELCompDate:
                        <asp:TextBox ID="ELCompDateTextBox" runat="server" Text='<%# Bind("ELCompDate") %>' />
                        <br />
                        ELBOMentereddate:
                        <asp:TextBox ID="ELBOMentereddateTextBox" runat="server" Text='<%# Bind("ELBOMentereddate") %>' />
                        <br />
                        ELRELtoPlanDate:
                        <asp:TextBox ID="ELRELtoPlanDateTextBox" runat="server" Text='<%# Bind("ELRELtoPlanDate") %>' />
                        <br />
                        HYdwgnum:
                        <asp:TextBox ID="HYdwgnumTextBox" runat="server" Text='<%# Bind("HYdwgnum") %>' />
                        <br />
                        HYcompDate:
                        <asp:TextBox ID="HYcompDateTextBox" runat="server" Text='<%# Bind("HYcompDate") %>' />
                        <br />
                        HYbomentereddate:
                        <asp:TextBox ID="HYbomentereddateTextBox" runat="server" Text='<%# Bind("HYbomentereddate") %>' />
                        <br />
                        HYRELtoplandate:
                        <asp:TextBox ID="HYRELtoplandateTextBox" runat="server" Text='<%# Bind("HYRELtoplandate") %>' />
                        <br />
                        PNdwgnum:
                        <asp:TextBox ID="PNdwgnumTextBox" runat="server" Text='<%# Bind("PNdwgnum") %>' />
                        <br />
                        PNcompdate:
                        <asp:TextBox ID="PNcompdateTextBox" runat="server" Text='<%# Bind("PNcompdate") %>' />
                        <br />
                        PNBOMentereddate:
                        <asp:TextBox ID="PNBOMentereddateTextBox" runat="server" Text='<%# Bind("PNBOMentereddate") %>' />
                        <br />
                        PNRELtoplan:
                        <asp:TextBox ID="PNRELtoplanTextBox" runat="server" Text='<%# Bind("PNRELtoplan") %>' />
                        <br />
                        Reqdcustmanual:
                        <asp:CheckBox ID="ReqdcustmanualCheckBox" runat="server" Checked='<%# Bind("Reqdcustmanual") %>' />
                        <br />
                        PrevCOnum:
                        <asp:TextBox ID="PrevCOnumTextBox" runat="server" Text='<%# Bind("PrevCOnum") %>' />
                        <br />
                        SYSPROPdwgnum:
                        <asp:TextBox ID="SYSPROPdwgnumTextBox" runat="server" Text='<%# Bind("SYSPROPdwgnum") %>' />
                        <br />
                        SYSPROPcompdate:
                        <asp:TextBox ID="SYSPROPcompdateTextBox" runat="server" Text='<%# Bind("SYSPROPcompdate") %>' />
                        <br />
                        SYSPROPtosalesdate:
                        <asp:TextBox ID="SYSPROPtosalesdateTextBox" runat="server" Text='<%# Bind("SYSPROPtosalesdate") %>' />
                        <br />
                        INSTALLdwgnum:
                        <asp:TextBox ID="INSTALLdwgnumTextBox" runat="server" Text='<%# Bind("INSTALLdwgnum") %>' />
                        <br />
                        INSTALLcompdate:
                        <asp:TextBox ID="INSTALLcompdateTextBox" runat="server" Text='<%# Bind("INSTALLcompdate") %>' />
                        <br />
                        INSTALLtosalesdate:
                        <asp:TextBox ID="INSTALLtosalesdateTextBox" runat="server" Text='<%# Bind("INSTALLtosalesdate") %>' />
                        <br />
                        Seizmicin:
                        <asp:TextBox ID="SeizmicinTextBox" runat="server" Text='<%# Bind("Seizmicin") %>' />
                        <br />
                        Seizmicout:
                        <asp:TextBox ID="SeizmicoutTextBox" runat="server" Text='<%# Bind("Seizmicout") %>' />
                        <br />
                        SN:
                        <asp:TextBox ID="SNTextBox" runat="server" Text='<%# Bind("SN") %>' />
                        <br />
                        Salesdwgref:
                        <asp:TextBox ID="SalesdwgrefTextBox" runat="server" Text='<%# Bind("Salesdwgref") %>' />
                        <br />
                        TARELFROMplan:
                        <asp:TextBox ID="TARELFROMplanTextBox" runat="server" Text='<%# Bind("TARELFROMplan") %>' />
                        <br />
                        HYRELFROMplan:
                        <asp:TextBox ID="HYRELFROMplanTextBox" runat="server" Text='<%# Bind("HYRELFROMplan") %>' />
                        <br />
                        ELRELFROMplan:
                        <asp:TextBox ID="ELRELFROMplanTextBox" runat="server" Text='<%# Bind("ELRELFROMplan") %>' />
                        <br />
                        PNRELFROMplan:
                        <asp:TextBox ID="PNRELFROMplanTextBox" runat="server" Text='<%# Bind("PNRELFROMplan") %>' />
                        <br />
                        ShippedWithEquipment:
                        <asp:CheckBox ID="ShippedWithEquipmentCheckBox" runat="server" Checked='<%# Bind("ShippedWithEquipment") %>' />
                        <br />
                        Mailedtocustomer:
                        <asp:CheckBox ID="MailedtocustomerCheckBox" runat="server" Checked='<%# Bind("Mailedtocustomer") %>' />
                        <br />
                        twocdsmailedtocustomer:
                        <asp:CheckBox ID="twocdsmailedtocustomerCheckBox" runat="server" Checked='<%# Bind("twocdsmailedtocustomer") %>' />
                        <br />
                        mancompdate:
                        <asp:TextBox ID="mancompdateTextBox" runat="server" Text='<%# Bind("mancompdate") %>' />
                        <br />
                        manualmaileddate:
                        <asp:TextBox ID="manualmaileddateTextBox" runat="server" Text='<%# Bind("manualmaileddate") %>' />
                        <br />
                        cdsmaileddate:
                        <asp:TextBox ID="cdsmaileddateTextBox" runat="server" Text='<%# Bind("cdsmaileddate") %>' />
                        <br />
                        SVCmanualcompdate:
                        <asp:TextBox ID="SVCmanualcompdateTextBox" runat="server" Text='<%# Bind("SVCmanualcompdate") %>' />
                        <br />
                        SVCmansenttosvcdept:
                        <asp:TextBox ID="SVCmansenttosvcdeptTextBox" runat="server" Text='<%# Bind("SVCmansenttosvcdept") %>' />
                        <br />
                        ManualComments:
                        <asp:TextBox ID="ManualCommentsTextBox" runat="server" Text='<%# Bind("ManualComments") %>' />
                        <br />
                        ItemDESCRIPTION:
                        <asp:TextBox ID="ItemDESCRIPTIONTextBox" runat="server" Text='<%# Bind("ItemDESCRIPTION") %>' />
                        <br />
                        refSN:
                        <asp:TextBox ID="refSNTextBox" runat="server" Text='<%# Bind("refSN") %>' />
                        <br />
                        refJOBnum:
                        <asp:TextBox ID="refJOBnumTextBox" runat="server" Text='<%# Bind("refJOBnum") %>' />
                        <br />
                        dwnby1:
                        <asp:TextBox ID="dwnby1TextBox" runat="server" Text='<%# Bind("dwnby1") %>' />
                        <br />
                        dwnby2:
                        <asp:TextBox ID="dwnby2TextBox" runat="server" Text='<%# Bind("dwnby2") %>' />
                        <br />
                        dwnby3:
                        <asp:TextBox ID="dwnby3TextBox" runat="server" Text='<%# Bind("dwnby3") %>' />
                        <br />
                        dwnby4:
                        <asp:TextBox ID="dwnby4TextBox" runat="server" Text='<%# Bind("dwnby4") %>' />
                        <br />
                        dwnby5:
                        <asp:TextBox ID="dwnby5TextBox" runat="server" Text='<%# Bind("dwnby5") %>' />
                        <br />
                        dwnby6:
                        <asp:TextBox ID="dwnby6TextBox" runat="server" Text='<%# Bind("dwnby6") %>' />
                        <br />
                        dwnby7:
                        <asp:TextBox ID="dwnby7TextBox" runat="server" Text='<%# Bind("dwnby7") %>' />
                        <br />
                        dwnby8:
                        <asp:TextBox ID="dwnby8TextBox" runat="server" Text='<%# Bind("dwnby8") %>' />
                        <br />
                        dwnby9:
                        <asp:TextBox ID="dwnby9TextBox" runat="server" Text='<%# Bind("dwnby9") %>' />
                        <br />
                        dwnby10:
                        <asp:TextBox ID="dwnby10TextBox" runat="server" Text='<%# Bind("dwnby10") %>' />
                        <br />
                        dwnby11:
                        <asp:TextBox ID="dwnby11TextBox" runat="server" Text='<%# Bind("dwnby11") %>' />
                        <br />
                        dwnby12:
                        <asp:TextBox ID="dwnby12TextBox" runat="server" Text='<%# Bind("dwnby12") %>' />
                        <br />
                        BOMentereddate1:
                        <asp:TextBox ID="BOMentereddate1TextBox" runat="server" Text='<%# Bind("BOMentereddate1") %>' />
                        <br />
                        DwgrelTOPLAN1:
                        <asp:TextBox ID="DwgrelTOPLAN1TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN1") %>' />
                        <br />
                        DwgrelFROMPLAN1:
                        <asp:TextBox ID="DwgrelFROMPLAN1TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN1") %>' />
                        <br />
                        BOMentereddate2:
                        <asp:TextBox ID="BOMentereddate2TextBox" runat="server" Text='<%# Bind("BOMentereddate2") %>' />
                        <br />
                        DwgrelTOPLAN2:
                        <asp:TextBox ID="DwgrelTOPLAN2TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN2") %>' />
                        <br />
                        DwgrelFROMPLAN2:
                        <asp:TextBox ID="DwgrelFROMPLAN2TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN2") %>' />
                        <br />
                        BOMentereddate3:
                        <asp:TextBox ID="BOMentereddate3TextBox" runat="server" Text='<%# Bind("BOMentereddate3") %>' />
                        <br />
                        DwgrelTOPLAN3:
                        <asp:TextBox ID="DwgrelTOPLAN3TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN3") %>' />
                        <br />
                        DwgrelFROMPLAN3:
                        <asp:TextBox ID="DwgrelFROMPLAN3TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN3") %>' />
                        <br />
                        BOMentereddate4:
                        <asp:TextBox ID="BOMentereddate4TextBox" runat="server" Text='<%# Bind("BOMentereddate4") %>' />
                        <br />
                        DwgrelTOPLAN4:
                        <asp:TextBox ID="DwgrelTOPLAN4TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN4") %>' />
                        <br />
                        DwgrelFROMPLAN4:
                        <asp:TextBox ID="DwgrelFROMPLAN4TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN4") %>' />
                        <br />
                        BOMentereddate5:
                        <asp:TextBox ID="BOMentereddate5TextBox" runat="server" Text='<%# Bind("BOMentereddate5") %>' />
                        <br />
                        DwgrelTOPLAN5:
                        <asp:TextBox ID="DwgrelTOPLAN5TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN5") %>' />
                        <br />
                        DwgrelFROMPLAN5:
                        <asp:TextBox ID="DwgrelFROMPLAN5TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN5") %>' />
                        <br />
                        BOMentereddate6:
                        <asp:TextBox ID="BOMentereddate6TextBox" runat="server" Text='<%# Bind("BOMentereddate6") %>' />
                        <br />
                        DwgrelTOPLAN6:
                        <asp:TextBox ID="DwgrelTOPLAN6TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN6") %>' />
                        <br />
                        DwgrelFROMPLAN6:
                        <asp:TextBox ID="DwgrelFROMPLAN6TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN6") %>' />
                        <br />
                        BOMentereddate7:
                        <asp:TextBox ID="BOMentereddate7TextBox" runat="server" Text='<%# Bind("BOMentereddate7") %>' />
                        <br />
                        DwgrelTOPLAN7:
                        <asp:TextBox ID="DwgrelTOPLAN7TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN7") %>' />
                        <br />
                        DwgrelFROMPLAN7:
                        <asp:TextBox ID="DwgrelFROMPLAN7TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN7") %>' />
                        <br />
                        BOMentereddate8:
                        <asp:TextBox ID="BOMentereddate8TextBox" runat="server" Text='<%# Bind("BOMentereddate8") %>' />
                        <br />
                        DwgrelTOPLAN8:
                        <asp:TextBox ID="DwgrelTOPLAN8TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN8") %>' />
                        <br />
                        DwgrelFROMPLAN8:
                        <asp:TextBox ID="DwgrelFROMPLAN8TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN8") %>' />
                        <br />
                        BOMentereddate9:
                        <asp:TextBox ID="BOMentereddate9TextBox" runat="server" Text='<%# Bind("BOMentereddate9") %>' />
                        <br />
                        DwgrelTOPLAN9:
                        <asp:TextBox ID="DwgrelTOPLAN9TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN9") %>' />
                        <br />
                        DwgrelFROMPLAN9:
                        <asp:TextBox ID="DwgrelFROMPLAN9TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN9") %>' />
                        <br />
                        BOMentereddate10:
                        <asp:TextBox ID="BOMentereddate10TextBox" runat="server" Text='<%# Bind("BOMentereddate10") %>' />
                        <br />
                        DwgrelTOPLAN10:
                        <asp:TextBox ID="DwgrelTOPLAN10TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN10") %>' />
                        <br />
                        DwgrelFROMPLAN10:
                        <asp:TextBox ID="DwgrelFROMPLAN10TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN10") %>' />
                        <br />
                        BOMentereddate11:
                        <asp:TextBox ID="BOMentereddate11TextBox" runat="server" Text='<%# Bind("BOMentereddate11") %>' />
                        <br />
                        DwgrelTOPLAN11:
                        <asp:TextBox ID="DwgrelTOPLAN11TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN11") %>' />
                        <br />
                        DwgrelFROMPLAN11:
                        <asp:TextBox ID="DwgrelFROMPLAN11TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN11") %>' />
                        <br />
                        BOMentereddate12:
                        <asp:TextBox ID="BOMentereddate12TextBox" runat="server" Text='<%# Bind("BOMentereddate12") %>' />
                        <br />
                        DwgrelTOPLAN12:
                        <asp:TextBox ID="DwgrelTOPLAN12TextBox" runat="server" Text='<%# Bind("DwgrelTOPLAN12") %>' />
                        <br />
                        DwgrelFROMPLAN12:
                        <asp:TextBox ID="DwgrelFROMPLAN12TextBox" runat="server" Text='<%# Bind("DwgrelFROMPLAN12") %>' />
                        <br />
                        RushBlock:
                        <asp:TextBox ID="RushBlockTextBox" runat="server" Text='<%# Bind("RushBlock") %>' />
                        <br />
                        email:
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        <br />
                        BOMENTEREDTA:
                        <asp:TextBox ID="BOMENTEREDTATextBox" runat="server" Text='<%# Bind("BOMENTEREDTA") %>' />
                        <br />
                        BOMENTEREDEL:
                        <asp:TextBox ID="BOMENTEREDELTextBox" runat="server" Text='<%# Bind("BOMENTEREDEL") %>' />
                        <br />
                        BOMENTEREDHY:
                        <asp:TextBox ID="BOMENTEREDHYTextBox" runat="server" Text='<%# Bind("BOMENTEREDHY") %>' />
                        <br />
                        BOMENTEREDPN:
                        <asp:TextBox ID="BOMENTEREDPNTextBox" runat="server" Text='<%# Bind("BOMENTEREDPN") %>' />
                        <br />
                        GAdwnby:
                        <asp:TextBox ID="GAdwnbyTextBox" runat="server" Text='<%# Bind("GAdwnby") %>' />
                        <br />
                        GAREVdate2:
                        <asp:TextBox ID="GAREVdate2TextBox" runat="server" Text='<%# Bind("GAREVdate2") %>' />
                        <br />
                        GAREVdate3:
                        <asp:TextBox ID="GAREVdate3TextBox" runat="server" Text='<%# Bind("GAREVdate3") %>' />
                        <br />
                        GAREVdate4:
                        <asp:TextBox ID="GAREVdate4TextBox" runat="server" Text='<%# Bind("GAREVdate4") %>' />
                        <br />
                        GAREVdate1:
                        <asp:TextBox ID="GAREVdate1TextBox" runat="server" Text='<%# Bind("GAREVdate1") %>' />
                        <br />
                        GAREVtoSALES1:
                        <asp:TextBox ID="GAREVtoSALES1TextBox" runat="server" Text='<%# Bind("GAREVtoSALES1") %>' />
                        <br />
                        GAREVtoSALES2:
                        <asp:TextBox ID="GAREVtoSALES2TextBox" runat="server" Text='<%# Bind("GAREVtoSALES2") %>' />
                        <br />
                        GAREVtoSALES3:
                        <asp:TextBox ID="GAREVtoSALES3TextBox" runat="server" Text='<%# Bind("GAREVtoSALES3") %>' />
                        <br />
                        GAREVtoSALES4:
                        <asp:TextBox ID="GAREVtoSALES4TextBox" runat="server" Text='<%# Bind("GAREVtoSALES4") %>' />
                        <br />
                        GAREVtoCUST1:
                        <asp:TextBox ID="GAREVtoCUST1TextBox" runat="server" Text='<%# Bind("GAREVtoCUST1") %>' />
                        <br />
                        GAREVtoCUST2:
                        <asp:TextBox ID="GAREVtoCUST2TextBox" runat="server" Text='<%# Bind("GAREVtoCUST2") %>' />
                        <br />
                        GAREVtoCUST3:
                        <asp:TextBox ID="GAREVtoCUST3TextBox" runat="server" Text='<%# Bind("GAREVtoCUST3") %>' />
                        <br />
                        GAREVtoCUST4:
                        <asp:TextBox ID="GAREVtoCUST4TextBox" runat="server" Text='<%# Bind("GAREVtoCUST4") %>' />
                        <br />
                        StockConfirmedby:
                        <asp:TextBox ID="StockConfirmedbyTextBox" runat="server" Text='<%# Bind("StockConfirmedby") %>' />
                        <br />
                        SotckConfirmedbydate:
                        <asp:TextBox ID="SotckConfirmedbydateTextBox" runat="server" Text='<%# Bind("SotckConfirmedbydate") %>' />
                        <br />
                        CurrentStatus:
                        <asp:TextBox ID="CurrentStatusTextBox" runat="server" Text='<%# Bind("CurrentStatus") %>' />
                        <br />
                        PrimaryVoltage:
                        <asp:TextBox ID="PrimaryVoltageTextBox" runat="server" Text='<%# Bind("PrimaryVoltage") %>' />
                        <br />
                        JOnum:
                        <asp:TextBox ID="JOnumTextBox" runat="server" Text='<%# Bind("JOnum") %>' />
                        <br />
                        Quoterefnum:
                        <asp:TextBox ID="QuoterefnumTextBox" runat="server" Text='<%# Bind("Quoterefnum") %>' />
                        <br />
                        TONP:
                        <asp:TextBox ID="TONPTextBox" runat="server" Text='<%# Bind("TONP") %>' />
                        <br />
                        ECNREV1:
                        <asp:TextBox ID="ECNREV1TextBox" runat="server" Text='<%# Bind("ECNREV1") %>' />
                        <br />
                        ECNREV2:
                        <asp:TextBox ID="ECNREV2TextBox" runat="server" Text='<%# Bind("ECNREV2") %>' />
                        <br />
                        ECNREV3:
                        <asp:TextBox ID="ECNREV3TextBox" runat="server" Text='<%# Bind("ECNREV3") %>' />
                        <br />
                        ECNREV4:
                        <asp:TextBox ID="ECNREV4TextBox" runat="server" Text='<%# Bind("ECNREV4") %>' />
                        <br />
                        HPU:
                        <asp:TextBox ID="HPUTextBox" runat="server" Text='<%# Bind("HPU") %>' />
                        <br />
                        Vahle:
                        <asp:TextBox ID="VahleTextBox" runat="server" Text='<%# Bind("Vahle") %>' />
                        <br />
                        GAREVdate5:
                        <asp:TextBox ID="GAREVdate5TextBox" runat="server" Text='<%# Bind("GAREVdate5") %>' />
                        <br />
                        GAREVtoCUST5:
                        <asp:TextBox ID="GAREVtoCUST5TextBox" runat="server" Text='<%# Bind("GAREVtoCUST5") %>' />
                        <br />
                        GAREVtoSALES5:
                        <asp:TextBox ID="GAREVtoSALES5TextBox" runat="server" Text='<%# Bind("GAREVtoSALES5") %>' />
                        <br />
                        ECNREV5:
                        <asp:TextBox ID="ECNREV5TextBox" runat="server" Text='<%# Bind("ECNREV5") %>' />
                        <br />
                        OSD:
                        <asp:TextBox ID="OSDTextBox" runat="server" Text='<%# Bind("OSD") %>' />
                        <br />
                        MultiECN:
                        <asp:TextBox ID="MultiECNTextBox" runat="server" Text='<%# Bind("MultiECN") %>' />
                        <br />
                        MultiECNDate:
                        <asp:TextBox ID="MultiECNDateTextBox" runat="server" Text='<%# Bind("MultiECNDate") %>' />
                        <br />
                        RA:
                        <asp:CheckBox ID="RACheckBox" runat="server" Checked='<%# Bind("RA") %>' />
                        <br />
                        TL:
                        <asp:CheckBox ID="TLCheckBox" runat="server" Checked='<%# Bind("TL") %>' />
                        <br />
                        RG:
                        <asp:CheckBox ID="RGCheckBox" runat="server" Checked='<%# Bind("RG") %>' />
                        <br />
                        LT:
                        <asp:CheckBox ID="LTCheckBox" runat="server" Checked='<%# Bind("LT") %>' />
                        <br />
                        BR:
                        <asp:CheckBox ID="BRCheckBox" runat="server" Checked='<%# Bind("BR") %>' />
                        <br />
                        JW:
                        <asp:CheckBox ID="JWCheckBox" runat="server" Checked='<%# Bind("JW") %>' />
                        <br />
                        BW:
                        <asp:CheckBox ID="BWCheckBox" runat="server" Checked='<%# Bind("BW") %>' />
                        <br />
                        HC:
                        <asp:CheckBox ID="HCCheckBox" runat="server" Checked='<%# Bind("HC") %>' />
                        <br />
                        JR:
                        <asp:CheckBox ID="JRCheckBox" runat="server" Checked='<%# Bind("JR") %>' />
                        <br />
                        LW:
                        <asp:CheckBox ID="LWCheckBox" runat="server" Checked='<%# Bind("LW") %>' />
                        <br />
                        RC:
                        <asp:CheckBox ID="RCCheckBox" runat="server" Checked='<%# Bind("RC") %>' />
                        <br />
                        JT:
                        <asp:CheckBox ID="JTCheckBox" runat="server" Checked='<%# Bind("JT") %>' />
                        <br />
                        ECN1:
                        <asp:TextBox ID="ECN1TextBox" runat="server" Text='<%# Bind("ECN1") %>' />
                        <br />
                        ECN2:
                        <asp:TextBox ID="ECN2TextBox" runat="server" Text='<%# Bind("ECN2") %>' />
                        <br />
                        ECN3:
                        <asp:TextBox ID="ECN3TextBox" runat="server" Text='<%# Bind("ECN3") %>' />
                        <br />
                        ECN4:
                        <asp:TextBox ID="ECN4TextBox" runat="server" Text='<%# Bind("ECN4") %>' />
                        <br />
                        ECN5:
                        <asp:TextBox ID="ECN5TextBox" runat="server" Text='<%# Bind("ECN5") %>' />
                        <br />
                        ECN6:
                        <asp:TextBox ID="ECN6TextBox" runat="server" Text='<%# Bind("ECN6") %>' />
                        <br />
                        ECNDate1:
                        <asp:TextBox ID="ECNDate1TextBox" runat="server" Text='<%# Bind("ECNDate1") %>' />
                        <br />
                        ECNDate2:
                        <asp:TextBox ID="ECNDate2TextBox" runat="server" Text='<%# Bind("ECNDate2") %>' />
                        <br />
                        ECNDate3:
                        <asp:TextBox ID="ECNDate3TextBox" runat="server" Text='<%# Bind("ECNDate3") %>' />
                        <br />
                        ECNDate4:
                        <asp:TextBox ID="ECNDate4TextBox" runat="server" Text='<%# Bind("ECNDate4") %>' />
                        <br />
                        ECNDate5:
                        <asp:TextBox ID="ECNDate5TextBox" runat="server" Text='<%# Bind("ECNDate5") %>' />
                        <br />
                        ECNDate6:
                        <asp:TextBox ID="ECNDate6TextBox" runat="server" Text='<%# Bind("ECNDate6") %>' />
                        <br />
                        ECN1Text:
                        <asp:TextBox ID="ECN1TextTextBox" runat="server" Text='<%# Bind("ECN1Text") %>' />
                        <br />
                        ECN2Text:
                        <asp:TextBox ID="ECN2TextTextBox" runat="server" Text='<%# Bind("ECN2Text") %>' />
                        <br />
                        ECN3Text:
                        <asp:TextBox ID="ECN3TextTextBox" runat="server" Text='<%# Bind("ECN3Text") %>' />
                        <br />
                        ECN4Text:
                        <asp:TextBox ID="ECN4TextTextBox" runat="server" Text='<%# Bind("ECN4Text") %>' />
                        <br />
                        ECN5Text:
                        <asp:TextBox ID="ECN5TextTextBox" runat="server" Text='<%# Bind("ECN5Text") %>' />
                        <br />
                        ECN6Text:
                        <asp:TextBox ID="ECN6TextTextBox" runat="server" Text='<%# Bind("ECN6Text") %>' />
                        <br />
                        GAESTRELDATE:
                        <asp:TextBox ID="GAESTRELDATETextBox" runat="server" Text='<%# Bind("GAESTRELDATE") %>' />
                        <br />
                        ELESTRELDATE:
                        <asp:TextBox ID="ELESTRELDATETextBox" runat="server" Text='<%# Bind("ELESTRELDATE") %>' />
                        <br />
                        TAESTRELDATE:
                        <asp:TextBox ID="TAESTRELDATETextBox" runat="server" Text='<%# Bind("TAESTRELDATE") %>' />
                        <br />
                        ELREQD:
                        <asp:CheckBox ID="ELREQDCheckBox" runat="server" Checked='<%# Bind("ELREQD") %>' />
                        <br />
                        OrdernotesESR:
                        <asp:TextBox ID="OrdernotesESRTextBox" runat="server" Text='<%# Bind("OrdernotesESR") %>' />
                        <br />
                        SYSPROPESTRELDATE:
                        <asp:TextBox ID="SYSPROPESTRELDATETextBox" runat="server" Text='<%# Bind("SYSPROPESTRELDATE") %>' />
                        <br />
                        HYESTRELDATE:
                        <asp:TextBox ID="HYESTRELDATETextBox" runat="server" Text='<%# Bind("HYESTRELDATE") %>' />
                        <br />
                        PNESTRELDATE:
                        <asp:TextBox ID="PNESTRELDATETextBox" runat="server" Text='<%# Bind("PNESTRELDATE") %>' />
                        <br />
                        INSTALLESTRELDATE:
                        <asp:TextBox ID="INSTALLESTRELDATETextBox" runat="server" Text='<%# Bind("INSTALLESTRELDATE") %>' />
                        <br />
                        SOnum:
                        <asp:TextBox ID="SOnumTextBox" runat="server" Text='<%# Bind("SOnum") %>' />
                        <br />
                        RW:
                        <asp:CheckBox ID="RWCheckBox" runat="server" Checked='<%# Bind("RW") %>' />
                        <br />
                        LabelType:
                        <asp:TextBox ID="LabelTypeTextBox" runat="server" Text='<%# Bind("LabelType") %>' />
                        <br />
                        LabelDateComp:
                        <asp:TextBox ID="LabelDateCompTextBox" runat="server" Text='<%# Bind("LabelDateComp") %>' />
                        <br />
                        LabelDateSent:
                        <asp:TextBox ID="LabelDateSentTextBox" runat="server" Text='<%# Bind("LabelDateSent") %>' />
                        <br />
                        LabelMethod:
                        <asp:TextBox ID="LabelMethodTextBox" runat="server" Text='<%# Bind("LabelMethod") %>' />
                        <br />
                        LabelRecvd:
                        <asp:TextBox ID="LabelRecvdTextBox" runat="server" Text='<%# Bind("LabelRecvd") %>' />
                        <br />
                        LabelRecvdBy:
                        <asp:TextBox ID="LabelRecvdByTextBox" runat="server" Text='<%# Bind("LabelRecvdBy") %>' />
                        <br />
                        ECNDate7:
                        <asp:TextBox ID="ECNDate7TextBox" runat="server" Text='<%# Bind("ECNDate7") %>' />
                        <br />
                        ECN7:
                        <asp:TextBox ID="ECN7TextBox" runat="server" Text='<%# Bind("ECN7") %>' />
                        <br />
                        ECN7Text:
                        <asp:TextBox ID="ECN7TextTextBox" runat="server" Text='<%# Bind("ECN7Text") %>' />
                        <br />
                        ECNDate8:
                        <asp:TextBox ID="ECNDate8TextBox" runat="server" Text='<%# Bind("ECNDate8") %>' />
                        <br />
                        ECN8:
                        <asp:TextBox ID="ECN8TextBox" runat="server" Text='<%# Bind("ECN8") %>' />
                        <br />
                        ECN8Text:
                        <asp:TextBox ID="ECN8TextTextBox" runat="server" Text='<%# Bind("ECN8Text") %>' />
                        <br />
                        Drafter7:
                        <asp:TextBox ID="Drafter7TextBox" runat="server" Text='<%# Bind("Drafter7") %>' />
                        <br />
                        lead_setter:
                        <asp:TextBox ID="lead_setterTextBox" runat="server" Text='<%# Bind("lead_setter") %>' />
                        <br />
                        WW:
                        <asp:CheckBox ID="WWCheckBox" runat="server" Checked='<%# Bind("WW") %>' />
                        <br />
                        manMOD:
                        <asp:TextBox ID="manMODTextBox" runat="server" Text='<%# Bind("manMOD") %>' />
                        <br />
                        Date_to_Check:
                        <asp:TextBox ID="Date_to_CheckTextBox" runat="server" Text='<%# Bind("Date_to_Check") %>' />
                        <br />
                        Job_Date_Check_Complete:
                        <asp:TextBox ID="Job_Date_Check_CompleteTextBox" runat="server" Text='<%# Bind("Job_Date_Check_Complete") %>' />
                        <br />
                        Job_Date_to_BOM:
                        <asp:TextBox ID="Job_Date_to_BOMTextBox" runat="server" Text='<%# Bind("Job_Date_to_BOM") %>' />
                        <br />
                        Job_Date_Rel_To_Plan:
                        <asp:TextBox ID="Job_Date_Rel_To_PlanTextBox" runat="server" Text='<%# Bind("Job_Date_Rel_To_Plan") %>' />
                        <br />
                        control_est_rel_date:
                        <asp:TextBox ID="control_est_rel_dateTextBox" runat="server" Text='<%# Bind("control_est_rel_date") %>' />
                        <br />
                        control_comp_date:
                        <asp:TextBox ID="control_comp_dateTextBox" runat="server" Text='<%# Bind("control_comp_date") %>' />
                        <br />
                        control_to_plan_date:
                        <asp:TextBox ID="control_to_plan_dateTextBox" runat="server" Text='<%# Bind("control_to_plan_date") %>' />
                        <br />
                        Item_category:
                        <asp:TextBox ID="Item_categoryTextBox" runat="server" Text='<%# Bind("Item_category") %>' />
                        <br />
                        LeadTime:
                        <asp:TextBox ID="LeadTimeTextBox" runat="server" Text='<%# Bind("LeadTime") %>' />
                        <br />
                        ECNDate9:
                        <asp:TextBox ID="ECNDate9TextBox" runat="server" Text='<%# Bind("ECNDate9") %>' />
                        <br />
                        ECN9:
                        <asp:TextBox ID="ECN9TextBox" runat="server" Text='<%# Bind("ECN9") %>' />
                        <br />
                        ECN9Text:
                        <asp:TextBox ID="ECN9TextTextBox" runat="server" Text='<%# Bind("ECN9Text") %>' />
                        <br />
                        ECNDate10:
                        <asp:TextBox ID="ECNDate10TextBox" runat="server" Text='<%# Bind("ECNDate10") %>' />
                        <br />
                        ECN10:
                        <asp:TextBox ID="ECN10TextBox" runat="server" Text='<%# Bind("ECN10") %>' />
                        <br />
                        ECN10Text:
                        <asp:TextBox ID="ECN10TextTextBox" runat="server" Text='<%# Bind("ECN10Text") %>' />
                        <br />
                        ECNDate11:
                        <asp:TextBox ID="ECNDate11TextBox" runat="server" Text='<%# Bind("ECNDate11") %>' />
                        <br />
                        ECN11:
                        <asp:TextBox ID="ECN11TextBox" runat="server" Text='<%# Bind("ECN11") %>' />
                        <br />
                        ECN11Text:
                        <asp:TextBox ID="ECN11TextTextBox" runat="server" Text='<%# Bind("ECN11Text") %>' />
                        <br />
                        ECNDate12:
                        <asp:TextBox ID="ECNDate12TextBox" runat="server" Text='<%# Bind("ECNDate12") %>' />
                        <br />
                        ECN12:
                        <asp:TextBox ID="ECN12TextBox" runat="server" Text='<%# Bind("ECN12") %>' />
                        <br />
                        ECN12Text:
                        <asp:TextBox ID="ECN12TextTextBox" runat="server" Text='<%# Bind("ECN12Text") %>' />
                        <br />
                        Labels_Reqd:
                        <asp:CheckBox ID="Labels_ReqdCheckBox" runat="server" Checked='<%# Bind("Labels_Reqd") %>' />
                        <br />
                        TimeCreated:
                        <asp:TextBox ID="TimeCreatedTextBox" runat="server" Text='<%# Bind("TimeCreated") %>' />
                        <br />
                        DateCreated:
                        <asp:TextBox ID="DateCreatedTextBox" runat="server" Text='<%# Bind("DateCreated") %>' />
                        <br />
                        Label_ID:
                        <asp:TextBox ID="Label_IDTextBox" runat="server" Text='<%# Bind("Label_ID") %>' />
                        <br />
                        Date_Modified:
                        <asp:TextBox ID="Date_ModifiedTextBox" runat="server" Text='<%# Bind("Date_Modified") %>' />
                        <br />
                        MECHNotes:
                        <asp:TextBox ID="MECHNotesTextBox" runat="server" Text='<%# Bind("MECHNotes") %>' />
                        <br />
                        CONTROLNotes:
                        <asp:TextBox ID="CONTROLNotesTextBox" runat="server" Text='<%# Bind("CONTROLNotes") %>' />
                        <br />
                        Control_Lead_Time:
                        <asp:TextBox ID="Control_Lead_TimeTextBox" runat="server" Text='<%# Bind("Control_Lead_Time") %>' />
                        <br />
                        GA_Lead_Time:
                        <asp:TextBox ID="GA_Lead_TimeTextBox" runat="server" Text='<%# Bind("GA_Lead_Time") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div class="auto-style11" style="font-size: larger">
                            <span class="auto-style12">&nbsp;ID: </span><strong><em>
                            <asp:Label ID="IDLabel" runat="server" CssClass="auto-style12" Text='<%# Eval("ID") %>' />
                            </em></strong>
                            <br />
                        </div>
                        <div class="auto-style6">
                            &nbsp;&nbsp;<asp:LinkButton ID="NewButton0" runat="server" BackColor="#33CC33" BorderColor="Gray" BorderStyle="Outset" CausesValidation="False" CommandName="New" Text="New" />
                            &nbsp;&nbsp;
                            <asp:LinkButton ID="EditButton0" runat="server" BackColor="Yellow" BorderColor="Gray" BorderStyle="Outset" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="DeleteButton0" runat="server" BackColor="Red" BorderColor="Gray" BorderStyle="Outset" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;
                        <strong>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style45"><em>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp; Special Needs:</em></span>&nbsp; custom manual Required:
                            <asp:CheckBox ID="ReqdcustmanualCheckBox" runat="server" Checked='<%# Bind("Reqdcustmanual") %>' Enabled="false" />
                            &nbsp;Controls Required:
                            <asp:CheckBox ID="ELREQDCheckBox" runat="server" Checked='<%# Bind("ELREQD") %>' Enabled="false" />
                            &nbsp; Labels Required:
                            <asp:CheckBox ID="Labels_ReqdCheckBox" runat="server" Checked='<%# Bind("Labels_Reqd") %>' Enabled="false" />
                            <br />
                            &nbsp;&nbsp;&nbsp; <span class="auto-style45"><em>Engineers Assigned: </em></span>RA:
                            <asp:CheckBox ID="RACheckBox" runat="server" Checked='<%# Bind("RA") %>' Enabled="false" />
                            TL:
                            <asp:CheckBox ID="TLCheckBox" runat="server" Checked='<%# Bind("TL") %>' Enabled="false" />
                            RG:
                            <asp:CheckBox ID="RGCheckBox" runat="server" Checked='<%# Bind("RG") %>' Enabled="false" />
                            LT:
                            <asp:CheckBox ID="LTCheckBox" runat="server" Checked='<%# Bind("LT") %>' Enabled="false" />
                            BR:
                            <asp:CheckBox ID="BRCheckBox" runat="server" Checked='<%# Bind("BR") %>' Enabled="false" />
                            JW:
                            <asp:CheckBox ID="JWCheckBox" runat="server" Checked='<%# Bind("JW") %>' Enabled="false" />
                            <br />
                            &nbsp;&nbsp;&nbsp; <span class="auto-style45"><em>Drafters Assigned:</em> </span>&nbsp;BW:
                            <asp:CheckBox ID="BWCheckBox" runat="server" Checked='<%# Bind("BW") %>' Enabled="false" />
                            HC:
                            <asp:CheckBox ID="HCCheckBox" runat="server" Checked='<%# Bind("HC") %>' Enabled="false" />
                            JR:
                            <asp:CheckBox ID="JRCheckBox" runat="server" Checked='<%# Bind("JR") %>' Enabled="false" />
                            LW:
                            <asp:CheckBox ID="LWCheckBox" runat="server" Checked='<%# Bind("LW") %>' Enabled="false" />
                            RC:
                            <asp:CheckBox ID="RCCheckBox" runat="server" Checked='<%# Bind("RC") %>' Enabled="false" />
                            JT:
                            <asp:CheckBox ID="JTCheckBox" runat="server" Checked='<%# Bind("JT") %>' Enabled="false" />
                            RW:
                            <asp:CheckBox ID="RWCheckBox" runat="server" Checked='<%# Bind("RW") %>' Enabled="false" />
                            <br />
                            &nbsp;&nbsp;&nbsp; <span class="auto-style45"><em>Additional Personnel Assignments</em></span>
                            <asp:Label ID="AssnToLabel" runat="server" Text='<%# Bind("AssnTo") %>' />
                            </strong>
                        </div>
                        <table align="center" cellpadding="2" class="auto-style3" style="border-style: none; border-width: 0px">
                            <tr>
                                <td class="auto-style10"><strong>COnumber: </strong>
                                    <asp:Label ID="COnumberLabel" runat="server" Text='<%# Bind("COnumber") %>' />
                                </td>
                                <td class="auto-style9"><strong>CurrentStatus: </strong>
                                    <asp:Label ID="CurrentStatusLabel" runat="server" Text='<%# Bind("CurrentStatus") %>' />
                                </td>
                                <td class="auto-style9" colspan="2"><strong>Item: </strong>
                                    <asp:Label ID="ItemLabel" runat="server" Text='<%# Bind("Item") %>' />
                                    <strong>
                                    <br />
                                    Item Type: </strong>
                                    <asp:Label ID="Item_categoryLabel" runat="server" Text='<%# Bind("Item_category") %>' />
                                </td>
                                <td class="auto-style9"><strong>Group: </strong>
                                    <asp:Label ID="lead_setterLabel" runat="server" Text='<%# Bind("lead_setter") %>' />
                                    <strong>
                                    <br />
                                    GA Lead Time: </strong>
                                    <asp:Label ID="GA_Lead_TimeLabel" runat="server" Text='<%# Bind("GA_Lead_Time") %>' />
                                    <strong>
                                    <br />
                                    Mech Lead Time: </strong>
                                    <asp:Label ID="LeadTimeLabel" runat="server" Text='<%# Bind("LeadTime") %>' />
                                    <strong>
                                    <br />
                                    Control Lead Time: </strong>
                                    <asp:Label ID="Control_Lead_TimeLabel" runat="server" Text='<%# Bind("Control_Lead_Time") %>' />
                                </td>
                                <td aria-multiline="True" colspan="4" class="auto-style32" >Estimated GA Release Date:
                                    <asp:Label ID="GAESTRELDATELabel" runat="server" Text='<%# Bind("GAESTRELDATE") %>' />
                                    <br />
                                    GA Drawing #:
                                    <asp:Label ID="GAdwgLabel" runat="server" Text='<%# Bind("GAdwg") %>' BackColor="#FFDCB9" CssClass="auto-style33" />
                                    <br />
                                </td>
                                <td aria-multiline="True" colspan="2" class="auto-style32">GA dwn by:<br /> <asp:Label ID="GAdwnbyLabel" runat="server" Text='<%# Bind("GAdwnby") %>' />
                                    <br />
                                    Completed:<br />
                                    <asp:Label ID="GACompDateLabel" runat="server" Text='<%# Bind("GACompDate", "{0:d}") %>' />
                                    <br />
                                    First GA To Sales:<br />
                                    <asp:Label ID="GAtoSalesDateLabel" runat="server" Text='<%# Bind("GAtoSalesDate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" colspan="3" class="auto-style32">#1 AppDate:
                                    <br />
                                    <asp:Label ID="FirstAppDateLabel" runat="server" Text='<%# Bind("FirstAppDate", "{0:d}") %>' />
                                    <br />
                                    Approved Revision:<br />
                                    <asp:Label ID="GArevLabel" runat="server" Text='<%# Bind("GArev", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True">
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style6" colspan="2" rowspan="3"><strong>Company:<br /></strong>&nbsp;<asp:Label ID="CompanyLabel" runat="server" Text='<%# Bind("Company") %>' Width="300px" />
                                </td>
                                <td colspan="2" rowspan="3" style="border-width: 5px; border-color: #85C0FD;" class="auto-style31"><strong>Item Desc:<br /> </strong>
                                    <asp:Label ID="ItemDESCRIPTIONLabel" runat="server" Text='<%# Bind("ItemDESCRIPTION") %>' Width="300px" />
                                </td>
                                <td rowspan="6"><strong>Address:
                                    <br />
                                    </strong>
                                    <asp:Label ID="AddressLabel" runat="server" BorderStyle="None" Height="75px" Text='<%# Bind("Address") %>' Width="300px" />
                                </td>
                                <td aria-multiline="True" class="auto-style21" colspan="5" style="border-width: 1px; border-color: #8CB6E0">
                                    <br />
                                    GA ECN/Revision:</td>
                                <td aria-multiline="True" class="auto-style22" colspan="3">GA Revision Completed Date</td>
                                <td aria-multiline="True" class="auto-style25" style="border-width: 3px; border-color: #8CB6E0">GA Revision To Sales:</td>
                                <td aria-multiline="True" rowspan="6">&nbsp;</td>
                                <td rowspan="6">&nbsp;</td>
                                <td rowspan="6">&nbsp;</td>
                                <td rowspan="6">&nbsp;</td>
                                <td rowspan="6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style24" style="border-width: 1px; border-color: #8CB6E0">Rev1</td>
                                <td aria-multiline="True" class="auto-style24" colspan="4" style="border-width: 1px; border-color: #8CB6E0">&nbsp;<asp:Label ID="ECNREV1Label" runat="server" Text='<%# Bind("ECNREV1") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style20" colspan="3" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVdate1Label" runat="server" Text='<%# Bind("GAREVdate1", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style26" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVtoSALES1Label" runat="server" Text='<%# Bind("GAREVtoSALES1", "{0:d}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style39" style="border-width: 1px; border-color: #8CB6E0">Rev2</td>
                                <td aria-multiline="True" colspan="4" class="auto-style39" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="ECNREV2Label" runat="server" Text='<%# Bind("ECNREV2") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style38" colspan="3" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVdate2Label" runat="server" Text='<%# Bind("GAREVdate2", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style37" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVtoSALES2Label" runat="server" Text='<%# Bind("GAREVtoSALES2", "{0:d}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9" rowspan="2"><strong>DateRecvd:<br /></strong>
                                    <asp:Label ID="DateRecvdLabel" runat="server" Text='<%# Bind("DateRecvd", "{0:d}") %>' />
                                </td>
                                <td class="auto-style9" rowspan="2" style="border-width: 5px; border-color: #85C0FD;"><strong>ShipDate:
                                    <asp:Label ID="ShipDateLabel" runat="server" CssClass="auto-style8" Text='<%# Bind("ShipDate", "{0:d}") %>' />
                                    </strong></td>
                                <td class="auto-style9" rowspan="2" style="border-width: 5px; border-color: #85C0FD;"><strong>Original Ship Date:</strong>
                                    <asp:Label ID="OSDLabel" runat="server" Text='<%# Bind("OSD") %>' />
                                </td>
                                <td rowspan="2" style="border-width: 5px; border-color: #85C0FD;" class="auto-style9">SN:
                                    <asp:Label ID="SNLabel" runat="server" Text='<%# Bind("SN") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style32" style="border-width: 1px; border-color: #8CB6E0">Rev3</td>
                                <td aria-multiline="True" class="auto-style32" colspan="4" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="ECNREV3Label" runat="server" Text='<%# Bind("ECNREV3") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style35" colspan="3" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVdate3Label" runat="server" Text='<%# Bind("GAREVdate3", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style34" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVtoSALES3Label" runat="server" Text='<%# Bind("GAREVtoSALES3", "{0:d}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style39" style="border-width: 1px; border-color: #8CB6E0">Rev4</td>
                                <td aria-multiline="True" class="auto-style39" colspan="4" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="ECNREV4Label" runat="server" Text='<%# Bind("ECNREV4") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style38" colspan="3" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVdate4Label" runat="server" Text='<%# Bind("GAREVdate4", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style37" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVtoSALES4Label" runat="server" Text='<%# Bind("GAREVtoSALES4", "{0:d}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style28"><strong>GAReqdDate: </strong>
                                    <asp:Label ID="GAReqdDateLabel" runat="server" Text='<%# Bind("GAReqdDate", "{0:d}") %>' />
                                </td>
                                <td class="auto-style28"><strong>Status:<br /></strong>
                                    <asp:Label ID="StatusLabel" runat="server" Text='<%# Bind("Status") %>' />
                                </td>
                                <td class="auto-style28">&nbsp;</td>
                                <td class="auto-style28"></td>
                                <td aria-multiline="True" class="auto-style36" style="border-width: 1px; border-color: #8CB6E0">Rev5</td>
                                <td aria-multiline="True" class="auto-style36" colspan="4" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="ECNREV5Label" runat="server" Text='<%# Bind("ECNREV5") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style29" colspan="3" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVdate5Label" runat="server" Text='<%# Bind("GAREVdate5", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style30" style="border-width: 1px; border-color: #8CB6E0">
                                    <asp:Label ID="GAREVtoSALES5Label" runat="server" Text='<%# Bind("GAREVtoSALES5", "{0:d}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9" rowspan="10"><strong>POnumber: </strong>
                                    <asp:Label ID="POnumberLabel" runat="server" Text='<%# Bind("POnumber") %>' />
                                    &nbsp;<strong><br /></strong></td>
                                <td class="auto-style9" style="border-width: 5px; border-color: #85C0FD;" rowspan="10">&nbsp;</td>
                                <td class="auto-style9" style="border-width: 5px; border-color: #85C0FD;" rowspan="10"><strong>refSN: </strong>
                                    <asp:Label ID="refSNLabel" runat="server" Text='<%# Bind("refSN") %>' />
                                    <strong>
                                    <br />
                                    refJOBnum: </strong>
                                    <asp:Label ID="refJOBnumLabel" runat="server" Text='<%# Bind("refJOBnum") %>' />
                                    <br />
                                    <strong>PrevCOnum:</strong>
                                    <asp:Label ID="PrevCOnumLabel" runat="server" Text='<%# Bind("PrevCOnum") %>' />
                                </td>
                                <td class="auto-style9" style="border-width: 5px; border-color: #85C0FD;" rowspan="10"><strong>Salesdwgref:<br /> </strong>
                                    <asp:Label ID="SalesdwgrefLabel" runat="server" Text='<%# Bind("Salesdwgref") %>' />
                                    <strong>&nbsp;Quoterefnum: </strong>
                                    <asp:Label ID="QuoterefnumLabel" runat="server" Text='<%# Bind("Quoterefnum") %>' />
                                    <strong>
                                    <br />
                                    </strong></td>
                                <td class="auto-style9" rowspan="10"><strong>POC: </strong>
                                    <asp:Label ID="POCLabel" runat="server" Text='<%# Bind("POC") %>' />
                                    <strong>
                                    <br />
                                    Phone: </strong>
                                    <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>' />
                                    <strong>
                                    <br />
                                    email: </strong>
                                    <asp:Label ID="emailLabel" runat="server" Text='<%# Bind("email") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style41">&nbsp;</td>
                                <td aria-multiline="True" class="auto-style41">Drawing Number</td>
                                <td aria-multiline="True" class="auto-style41">Estimated Rel Date</td>
                                <td aria-multiline="True" class="auto-style41">BOM</td>
                                <td aria-multiline="True" class="auto-style41">Completed Date</td>
                                <td aria-multiline="True" class="auto-style41" colspan="2">Date BOM Entered</td>
                                <td aria-multiline="True" class="auto-style41" colspan="2">Rel To Plan</td>
                                <td aria-multiline="True" class="auto-style33" rowspan="10">&nbsp;</td>
                                <td rowspan="10">&nbsp;</td>
                                <td rowspan="10">&nbsp;</td>
                                <td rowspan="10">&nbsp;</td>
                                <td rowspan="10">&nbsp;</td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style42">Mechanical</td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="TAdwgnumLabel" runat="server" Text='<%# Bind("TAdwgnum") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="TAESTRELDATELabel" runat="server" Text='<%# Bind("TAESTRELDATE", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="BOMENTEREDTALabel" runat="server" Text='<%# Bind("BOMENTEREDTA") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="TACompDAteLabel" runat="server" Text='<%# Bind("TACompDAte", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42" colspan="2">
                                    <asp:Label ID="TABOMEntereddateLabel" runat="server" Text='<%# Bind("TABOMEntereddate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42" colspan="2">
                                    <asp:Label ID="TARELtoPlanDateLabel" runat="server" Text='<%# Bind("TARELtoPlanDate", "{0:d}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style41">Control </td>
                                <td aria-multiline="True" class="auto-style41">&nbsp;</td>
                                <td aria-multiline="True" class="auto-style41">&nbsp;</td>
                                <td aria-multiline="True" class="auto-style41">&nbsp;</td>
                                <td aria-multiline="True" class="auto-style41">&nbsp;</td>
                                <td aria-multiline="True" class="auto-style41" colspan="2">&nbsp;</td>
                                <td aria-multiline="True" class="auto-style41" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style42">Electrical</td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="ELdwgnumLabel" runat="server" Text='<%# Bind("ELdwgnum") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="ELESTRELDATELabel" runat="server" Text='<%# Bind("ELESTRELDATE", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="BOMENTEREDELLabel" runat="server" Text='<%# Bind("BOMENTEREDEL") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="ELCompDateLabel" runat="server" Text='<%# Bind("ELCompDate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42" colspan="2">
                                    <asp:Label ID="ELBOMentereddateLabel" runat="server" Text='<%# Bind("ELBOMentereddate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42" colspan="2">
                                    <asp:Label ID="ELRELtoPlanDateLabel" runat="server" Text='<%# Bind("ELRELtoPlanDate") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style41">Hydraulic</td>
                                <td aria-multiline="True" class="auto-style41">
                                    <asp:Label ID="HYdwgnumLabel" runat="server" Text='<%# Bind("HYdwgnum") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style41">
                                    <asp:Label ID="HYESTRELDATELabel" runat="server" Text='<%# Bind("HYESTRELDATE", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style41">
                                    <asp:Label ID="BOMENTEREDHYLabel" runat="server" Text='<%# Bind("BOMENTEREDHY") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style41">
                                    <asp:Label ID="HYcompDateLabel" runat="server" Text='<%# Bind("HYcompDate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style41" colspan="2">
                                    <asp:Label ID="HYbomentereddateLabel" runat="server" Text='<%# Bind("HYbomentereddate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style41" colspan="2">
                                    <asp:Label ID="HYRELtoplandateLabel" runat="server" Text='<%# Bind("HYRELtoplandate") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style42">Pneumatic</td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="PNdwgnumLabel" runat="server" Text='<%# Bind("PNdwgnum") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="PNESTRELDATELabel" runat="server" Text='<%# Bind("PNESTRELDATE", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="BOMENTEREDPNLabel" runat="server" Text='<%# Bind("BOMENTEREDPN") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42">
                                    <asp:Label ID="PNcompdateLabel" runat="server" Text='<%# Bind("PNcompdate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42" colspan="2">
                                    <asp:Label ID="PNBOMentereddateLabel" runat="server" Text='<%# Bind("PNBOMentereddate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style42" colspan="2">
                                    <asp:Label ID="PNRELtoplanLabel" runat="server" Text='<%# Bind("PNRELtoplan", "{0:D}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style43">&nbsp;</td>
                                <td aria-multiline="True" class="auto-style43" colspan="2">Drawing Number</td>
                                <td aria-multiline="True" class="auto-style43">Estimated Due Date</td>
                                <td aria-multiline="True" class="auto-style43">Completed Date</td>
                                <td aria-multiline="True" class="auto-style43" colspan="4">Date Sent To Sales Date</td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style44">System Proposal</td>
                                <td aria-multiline="True" class="auto-style44" colspan="2">
                                    <asp:Label ID="SYSPROPdwgnumLabel" runat="server" Text='<%# Bind("SYSPROPdwgnum") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style44">
                                    <asp:Label ID="SYSPROPESTRELDATELabel" runat="server" Text='<%# Bind("SYSPROPESTRELDATE", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style44">
                                    <asp:Label ID="SYSPROPcompdateLabel" runat="server" Text='<%# Bind("SYSPROPcompdate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style44" colspan="4">
                                    <asp:Label ID="SYSPROPtosalesdateLabel" runat="server" Text='<%# Bind("SYSPROPtosalesdate", "{0:d}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True" class="auto-style43">Installation</td>
                                <td aria-multiline="True" class="auto-style43" colspan="2">
                                    <asp:Label ID="INSTALLdwgnumLabel" runat="server" Text='<%# Bind("INSTALLdwgnum") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style43">
                                    <asp:Label ID="INSTALLESTRELDATELabel" runat="server" Text='<%# Bind("INSTALLESTRELDATE", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style43">
                                    <asp:Label ID="INSTALLcompdateLabel" runat="server" Text='<%# Bind("INSTALLcompdate", "{0:d}") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style43" colspan="4">
                                    <asp:Label ID="INSTALLtosalesdateLabel" runat="server" Text='<%# Bind("INSTALLtosalesdate", "{0:d}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td aria-multiline="True">&nbsp;</td>
                                <td aria-multiline="True" colspan="2">&nbsp;</td>
                                <td aria-multiline="True">&nbsp;</td>
                                <td aria-multiline="True">&nbsp;</td>
                                <td aria-multiline="True" colspan="2">&nbsp;</td>
                                <td aria-multiline="True" colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="2"><strong>Primary Voltage:
                                    <br />
                                    </strong>
                                    <asp:Label ID="PrimaryVoltageLabel" runat="server" Text='<%# Bind("PrimaryVoltage") %>' />
                                </td>
                                <td class="auto-style6" colspan="3"><strong>Notes (Gen Specs): </strong>
                                    <br />
                                    <asp:Label ID="NotesLabel" runat="server" Text='<%# Bind("Notes") %>' />
                                </td>
                                <td aria-multiline="True" class="auto-style6" colspan="9">
                                    <br />
                                    <br />
                                    <br />
                                </td>
                                <td aria-multiline="True" class="auto-style6">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                                <td class="auto-style6">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style9">&nbsp;</td>
                                <td class="auto-style9" style="border-width: 5px; border-color: #85C0FD;">&nbsp;</td>
                                <td class="auto-style9" style="border-width: 5px; border-color: #85C0FD;">&nbsp;</td>
                                <td class="auto-style9" style="border-width: 5px; border-color: #85C0FD;">&nbsp;</td>
                                <td class="auto-style9">&nbsp;</td>
                                <td aria-multiline="True" colspan="9">&nbsp;</td>
                                <td aria-multiline="True">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="14"><strong>
                                    <br />
                                    </strong></td>
                                <td aria-multiline="True">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        Dwg1:
                        <asp:Label ID="Dwg1Label" runat="server" Text='<%# Bind("Dwg1") %>' />
                        <br />
                        Dwg2:
                        <asp:Label ID="Dwg2Label" runat="server" Text='<%# Bind("Dwg2") %>' />
                        <br />
                        Dwg3:
                        <asp:Label ID="Dwg3Label" runat="server" Text='<%# Bind("Dwg3") %>' />
                        <br />
                        Dwg4:
                        <asp:Label ID="Dwg4Label" runat="server" Text='<%# Bind("Dwg4") %>' />
                        <br />
                        Dwg5:
                        <asp:Label ID="Dwg5Label" runat="server" Text='<%# Bind("Dwg5") %>' />
                        <br />
                        Dwg6:
                        <asp:Label ID="Dwg6Label" runat="server" Text='<%# Bind("Dwg6") %>' />
                        <br />
                        Dwg7:
                        <asp:Label ID="Dwg7Label" runat="server" Text='<%# Bind("Dwg7") %>' />
                        <br />
                        Dwg8:
                        <asp:Label ID="Dwg8Label" runat="server" Text='<%# Bind("Dwg8") %>' />
                        <br />
                        Dwg9:
                        <asp:Label ID="Dwg9Label" runat="server" Text='<%# Bind("Dwg9") %>' />
                        <br />
                        Dwg10:
                        <asp:Label ID="Dwg10Label" runat="server" Text='<%# Bind("Dwg10") %>' />
                        <br />
                        Dwg11:
                        <asp:Label ID="Dwg11Label" runat="server" Text='<%# Bind("Dwg11") %>' />
                        <br />
                        Dwg12:
                        <asp:Label ID="Dwg12Label" runat="server" Text='<%# Bind("Dwg12") %>' />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        Seizmicin:
                        <asp:Label ID="SeizmicinLabel" runat="server" Text='<%# Bind("Seizmicin") %>' />
                        <br />
                        Seizmicout:
                        <asp:Label ID="SeizmicoutLabel" runat="server" Text='<%# Bind("Seizmicout") %>' />
                        <br />
                        <br />
                        <br />
                        <br />
                        ShippedWithEquipment:
                        <asp:CheckBox ID="ShippedWithEquipmentCheckBox" runat="server" Checked='<%# Bind("ShippedWithEquipment") %>' Enabled="false" />
                        <br />
                        Mailedtocustomer:
                        <asp:CheckBox ID="MailedtocustomerCheckBox" runat="server" Checked='<%# Bind("Mailedtocustomer") %>' Enabled="false" />
                        <br />
                        twocdsmailedtocustomer:
                        <asp:CheckBox ID="twocdsmailedtocustomerCheckBox" runat="server" Checked='<%# Bind("twocdsmailedtocustomer") %>' Enabled="false" />
                        <br />
                        mancompdate:
                        <asp:Label ID="mancompdateLabel" runat="server" Text='<%# Bind("mancompdate") %>' />
                        <br />
                        manualmaileddate:
                        <asp:Label ID="manualmaileddateLabel" runat="server" Text='<%# Bind("manualmaileddate") %>' />
                        <br />
                        cdsmaileddate:
                        <asp:Label ID="cdsmaileddateLabel" runat="server" Text='<%# Bind("cdsmaileddate") %>' />
                        <br />
                        SVCmanualcompdate:
                        <asp:Label ID="SVCmanualcompdateLabel" runat="server" Text='<%# Bind("SVCmanualcompdate") %>' />
                        <br />
                        SVCmansenttosvcdept:
                        <asp:Label ID="SVCmansenttosvcdeptLabel" runat="server" Text='<%# Bind("SVCmansenttosvcdept") %>' />
                        <br />
                        ManualComments:
                        <asp:Label ID="ManualCommentsLabel" runat="server" Text='<%# Bind("ManualComments") %>' />
                        <br />
                        <br />
                        <br />
                        DwgrelTOPLAN1:
                        <asp:Label ID="DwgrelTOPLAN1Label" runat="server" Text='<%# Bind("DwgrelTOPLAN1") %>' />
                        <br />
                        <br />
                        DwgrelTOPLAN2:
                        <asp:Label ID="DwgrelTOPLAN2Label" runat="server" Text='<%# Bind("DwgrelTOPLAN2") %>' />
                        <br />
                        DwgrelTOPLAN3:
                        <asp:Label ID="DwgrelTOPLAN3Label" runat="server" Text='<%# Bind("DwgrelTOPLAN3") %>' />
                        <br />
                        DwgrelTOPLAN4:
                        <asp:Label ID="DwgrelTOPLAN4Label" runat="server" Text='<%# Bind("DwgrelTOPLAN4") %>' />
                        <br />
                        DwgrelTOPLAN5:
                        <asp:Label ID="DwgrelTOPLAN5Label" runat="server" Text='<%# Bind("DwgrelTOPLAN5") %>' />
                        <br />
                        DwgrelTOPLAN6:
                        <asp:Label ID="DwgrelTOPLAN6Label" runat="server" Text='<%# Bind("DwgrelTOPLAN6") %>' />
                        <br />
                        DwgrelTOPLAN7:
                        <asp:Label ID="DwgrelTOPLAN7Label" runat="server" Text='<%# Bind("DwgrelTOPLAN7") %>' />
                        <br />
                        DwgrelTOPLAN8:
                        <asp:Label ID="DwgrelTOPLAN8Label" runat="server" Text='<%# Bind("DwgrelTOPLAN8") %>' />
                        <br />
                        DwgrelTOPLAN9:
                        <asp:Label ID="DwgrelTOPLAN9Label" runat="server" Text='<%# Bind("DwgrelTOPLAN9") %>' />
                        <br />
                        DwgrelTOPLAN10:
                        <asp:Label ID="DwgrelTOPLAN10Label" runat="server" Text='<%# Bind("DwgrelTOPLAN10") %>' />
                        <br />
                        DwgrelTOPLAN11:
                        <asp:Label ID="DwgrelTOPLAN11Label" runat="server" Text='<%# Bind("DwgrelTOPLAN11") %>' />
                        <br />
                        DwgrelTOPLAN12:
                        <asp:Label ID="DwgrelTOPLAN12Label" runat="server" Text='<%# Bind("DwgrelTOPLAN12") %>' />
                        <br />
                        <br />
                        <br />
                        <br />
                        StockConfirmedby:
                        <asp:Label ID="StockConfirmedbyLabel" runat="server" Text='<%# Bind("StockConfirmedby") %>' />
                        <br />
                        StockConfirmedbydate:
                        <asp:Label ID="SotckConfirmedbydateLabel" runat="server" Text='<%# Bind("SotckConfirmedbydate") %>' />
                        <br />
                        <br />
                        JOnum:
                        <asp:Label ID="JOnumLabel" runat="server" Text='<%# Bind("JOnum") %>' />
                        <br />
                        <br />
                        TONP:
                        <asp:Label ID="TONPLabel" runat="server" Text='<%# Bind("TONP") %>' />
                        <br />
                        <br />
                        HPU:
                        <asp:Label ID="HPULabel" runat="server" Text='<%# Bind("HPU") %>' />
                        <br />
                        Vahle:
                        <asp:Label ID="VahleLabel" runat="server" Text='<%# Bind("Vahle") %>' />
                        <br />
                        <br />
                        ECNREV5:
                        <br />
                        <br />
                        MultiECN:
                        <asp:Label ID="MultiECNLabel" runat="server" Text='<%# Bind("MultiECN") %>' />
                        <br />
                        MultiECNDate:
                        <asp:Label ID="MultiECNDateLabel" runat="server" Text='<%# Bind("MultiECNDate") %>' />
                        <br />
                        <br />
                        ECN1:
                        <asp:Label ID="ECN1Label" runat="server" Text='<%# Bind("ECN1") %>' />
                        <br />
                        ECN2:
                        <asp:Label ID="ECN2Label" runat="server" Text='<%# Bind("ECN2") %>' />
                        <br />
                        ECN3:
                        <asp:Label ID="ECN3Label" runat="server" Text='<%# Bind("ECN3") %>' />
                        <br />
                        ECN4:
                        <asp:Label ID="ECN4Label" runat="server" Text='<%# Bind("ECN4") %>' />
                        <br />
                        ECN5:
                        <asp:Label ID="ECN5Label" runat="server" Text='<%# Bind("ECN5") %>' />
                        <br />
                        ECN6:
                        <asp:Label ID="ECN6Label" runat="server" Text='<%# Bind("ECN6") %>' />
                        <br />
                        ECNDate1:
                        <asp:Label ID="ECNDate1Label" runat="server" Text='<%# Bind("ECNDate1") %>' />
                        <br />
                        ECNDate2:
                        <asp:Label ID="ECNDate2Label" runat="server" Text='<%# Bind("ECNDate2") %>' />
                        <br />
                        ECNDate3:
                        <asp:Label ID="ECNDate3Label" runat="server" Text='<%# Bind("ECNDate3") %>' />
                        <br />
                        ECNDate4:
                        <asp:Label ID="ECNDate4Label" runat="server" Text='<%# Bind("ECNDate4") %>' />
                        <br />
                        ECNDate5:
                        <asp:Label ID="ECNDate5Label" runat="server" Text='<%# Bind("ECNDate5") %>' />
                        <br />
                        ECNDate6:
                        <asp:Label ID="ECNDate6Label" runat="server" Text='<%# Bind("ECNDate6") %>' />
                        <br />
                        ECN1Text:
                        <asp:Label ID="ECN1TextLabel" runat="server" Text='<%# Bind("ECN1Text") %>' />
                        <br />
                        ECN2Text:
                        <asp:Label ID="ECN2TextLabel" runat="server" Text='<%# Bind("ECN2Text") %>' />
                        <br />
                        ECN3Text:
                        <asp:Label ID="ECN3TextLabel" runat="server" Text='<%# Bind("ECN3Text") %>' />
                        <br />
                        ECN4Text:
                        <asp:Label ID="ECN4TextLabel" runat="server" Text='<%# Bind("ECN4Text") %>' />
                        <br />
                        ECN5Text:
                        <asp:Label ID="ECN5TextLabel" runat="server" Text='<%# Bind("ECN5Text") %>' />
                        <br />
                        ECN6Text:
                        <asp:Label ID="ECN6TextLabel" runat="server" Text='<%# Bind("ECN6Text") %>' />
                        <br />
                        <br />
                        OrdernotesESR:
                        <asp:Label ID="OrdernotesESRLabel" runat="server" Text='<%# Bind("OrdernotesESR") %>' />
                        <br />
                        <br />
                        SOnum:
                        <asp:Label ID="SOnumLabel" runat="server" Text='<%# Bind("SOnum") %>' />
                        <br />
                        <br />
                        LabelType:
                        <asp:Label ID="LabelTypeLabel" runat="server" Text='<%# Bind("LabelType") %>' />
                        <br />
                        LabelDateComp:
                        <asp:Label ID="LabelDateCompLabel" runat="server" Text='<%# Bind("LabelDateComp") %>' />
                        <br />
                        LabelDateSent:
                        <asp:Label ID="LabelDateSentLabel" runat="server" Text='<%# Bind("LabelDateSent") %>' />
                        <br />
                        LabelMethod:
                        <asp:Label ID="LabelMethodLabel" runat="server" Text='<%# Bind("LabelMethod") %>' />
                        <br />
                        LabelRecvd:
                        <asp:Label ID="LabelRecvdLabel" runat="server" Text='<%# Bind("LabelRecvd") %>' />
                        <br />
                        LabelRecvdBy:
                        <asp:Label ID="LabelRecvdByLabel" runat="server" Text='<%# Bind("LabelRecvdBy") %>' />
                        <br />
                        ECNDate7:
                        <asp:Label ID="ECNDate7Label" runat="server" Text='<%# Bind("ECNDate7") %>' />
                        <br />
                        ECN7:
                        <asp:Label ID="ECN7Label" runat="server" Text='<%# Bind("ECN7") %>' />
                        <br />
                        ECN7Text:
                        <asp:Label ID="ECN7TextLabel" runat="server" Text='<%# Bind("ECN7Text") %>' />
                        <br />
                        ECNDate8:
                        <asp:Label ID="ECNDate8Label" runat="server" Text='<%# Bind("ECNDate8") %>' />
                        <br />
                        ECN8:
                        <asp:Label ID="ECN8Label" runat="server" Text='<%# Bind("ECN8") %>' />
                        <br />
                        ECN8Text:
                        <asp:Label ID="ECN8TextLabel" runat="server" Text='<%# Bind("ECN8Text") %>' />
                        <br />
                        Drafter7:
                        <asp:Label ID="Drafter7Label" runat="server" Text='<%# Bind("Drafter7") %>' />
                        <br />
                        l<br />WW:
                        <asp:CheckBox ID="WWCheckBox" runat="server" Checked='<%# Bind("WW") %>' Enabled="false" />
                        <br />
                        manMOD:
                        <asp:Label ID="manMODLabel" runat="server" Text='<%# Bind("manMOD") %>' />
                        <br />
                        Date_to_Check:
                        <asp:Label ID="Date_to_CheckLabel" runat="server" Text='<%# Bind("Date_to_Check") %>' />
                        <br />
                        Job_Date_Check_Complete:
                        <asp:Label ID="Job_Date_Check_CompleteLabel" runat="server" Text='<%# Bind("Job_Date_Check_Complete") %>' />
                        <br />
                        Job_Date_to_BOM:
                        <asp:Label ID="Job_Date_to_BOMLabel" runat="server" Text='<%# Bind("Job_Date_to_BOM") %>' />
                        <br />
                        Job_Date_Rel_To_Plan:
                        <asp:Label ID="Job_Date_Rel_To_PlanLabel" runat="server" Text='<%# Bind("Job_Date_Rel_To_Plan") %>' />
                        <br />
                        control_est_rel_date:
                        <asp:Label ID="control_est_rel_dateLabel" runat="server" Text='<%# Bind("control_est_rel_date") %>' />
                        <br />
                        control_comp_date:
                        <asp:Label ID="control_comp_dateLabel" runat="server" Text='<%# Bind("control_comp_date") %>' />
                        <br />
                        control_to_plan_date:
                        <asp:Label ID="control_to_plan_dateLabel" runat="server" Text='<%# Bind("control_to_plan_date") %>' />
                        <br />
                        <br />
                        ECNDate9:
                        <asp:Label ID="ECNDate9Label" runat="server" Text='<%# Bind("ECNDate9") %>' />
                        <br />
                        ECN9:
                        <asp:Label ID="ECN9Label" runat="server" Text='<%# Bind("ECN9") %>' />
                        <br />
                        ECN9Text:
                        <asp:Label ID="ECN9TextLabel" runat="server" Text='<%# Bind("ECN9Text") %>' />
                        <br />
                        ECNDate10:
                        <asp:Label ID="ECNDate10Label" runat="server" Text='<%# Bind("ECNDate10") %>' />
                        <br />
                        ECN10:
                        <asp:Label ID="ECN10Label" runat="server" Text='<%# Bind("ECN10") %>' />
                        <br />
                        ECN10Text:
                        <asp:Label ID="ECN10TextLabel" runat="server" Text='<%# Bind("ECN10Text") %>' />
                        <br />
                        ECNDate11:
                        <asp:Label ID="ECNDate11Label" runat="server" Text='<%# Bind("ECNDate11") %>' />
                        <br />
                        ECN11:
                        <asp:Label ID="ECN11Label" runat="server" Text='<%# Bind("ECN11") %>' />
                        <br />
                        ECN11Text:
                        <asp:Label ID="ECN11TextLabel" runat="server" Text='<%# Bind("ECN11Text") %>' />
                        <br />
                        ECNDate12:
                        <asp:Label ID="ECNDate12Label" runat="server" Text='<%# Bind("ECNDate12") %>' />
                        <br />
                        ECN12:
                        <asp:Label ID="ECN12Label" runat="server" Text='<%# Bind("ECN12") %>' />
                        <br />
                        ECN12Text:
                        <asp:Label ID="ECN12TextLabel" runat="server" Text='<%# Bind("ECN12Text") %>' />
                        <br />
                        <br />
                        TimeCreated:
                        <asp:Label ID="TimeCreatedLabel" runat="server" Text='<%# Bind("TimeCreated") %>' />
                        <br />
                        DateCreated:
                        <asp:Label ID="DateCreatedLabel" runat="server" Text='<%# Bind("DateCreated") %>' />
                        <br />
                        Label_ID:
                        <asp:Label ID="Label_IDLabel" runat="server" Text='<%# Bind("Label_ID") %>' />
                        <br />
                        Date_Modified:
                        <asp:Label ID="Date_ModifiedLabel" runat="server" Text='<%# Bind("Date_Modified") %>' />
                        <br />
                        MECHNotes:
                        <asp:Label ID="MECHNotesLabel" runat="server" Text='<%# Bind("MECHNotes") %>' />
                        <br />
                        CONTROLNotes:
                        <asp:Label ID="CONTROLNotesLabel" runat="server" Text='<%# Bind("CONTROLNotes") %>' />
                        <br />
                        <br />
                        <asp:LinkButton ID="NewButton" runat="server" BackColor="#33CC33" BorderColor="Gray" BorderStyle="Outset" CausesValidation="False" CommandName="New" Text="New" />
                        &nbsp;&nbsp;
                        <asp:LinkButton ID="EditButton" runat="server" BackColor="Yellow" BorderColor="Gray" BorderStyle="Outset" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;&nbsp; &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" BackColor="Red" BorderColor="Gray" BorderStyle="Outset" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;
                    </ItemTemplate>
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                </asp:FormView>
                <asp:SqlDataSource ID="FormSQLDS" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" DeleteCommand="DELETE FROM [JobEngine] WHERE [ID] = @ID" InsertCommand="INSERT INTO [JobEngine] ([POnumber], [COnumber], [ShipDate], [Notes], [DateRecvd], [Company], [Address], [Phone], [POC], [Status], [GAdwg], [GArev], [Dwg1], [Dwg2], [Dwg3], [Dwg4], [Dwg5], [Dwg6], [Dwg7], [Dwg8], [Dwg9], [Dwg10], [Dwg11], [Dwg12], [Dwgdatecomp1], [Dwgdatecomp2], [Dwgdatecomp3], [Dwgdatecomp4], [Dwgdatecomp5], [Dwgdatecomp6], [Dwgdatecomp7], [Dwgdatecomp8], [Dwgdatecomp9], [Dwgdatecomp10], [Dwgdatecomp11], [Dwgdatecomp12], [ItemQty], [Item], [AssnTo], [GAReqdDate], [GACompDate], [GAtoSalesDate], [GAtoCustDate], [FirstAppDate], [TAdwgnum], [TACompDAte], [TABOMEntereddate], [TARELtoPlanDate], [ELdwgnum], [ELCompDate], [ELBOMentereddate], [ELRELtoPlanDate], [HYdwgnum], [HYcompDate], [HYbomentereddate], [HYRELtoplandate], [PNdwgnum], [PNcompdate], [PNBOMentereddate], [PNRELtoplan], [Reqdcustmanual], [PrevCOnum], [SYSPROPdwgnum], [SYSPROPcompdate], [SYSPROPtosalesdate], [INSTALLdwgnum], [INSTALLcompdate], [INSTALLtosalesdate], [Seizmicin], [Seizmicout], [SN], [Salesdwgref], [TARELFROMplan], [HYRELFROMplan], [ELRELFROMplan], [PNRELFROMplan], [ShippedWithEquipment], [Mailedtocustomer], [twocdsmailedtocustomer], [mancompdate], [manualmaileddate], [cdsmaileddate], [SVCmanualcompdate], [SVCmansenttosvcdept], [ManualComments], [ItemDESCRIPTION], [refSN], [refJOBnum], [dwnby1], [dwnby2], [dwnby3], [dwnby4], [dwnby5], [dwnby6], [dwnby7], [dwnby8], [dwnby9], [dwnby10], [dwnby11], [dwnby12], [BOMentereddate1], [DwgrelTOPLAN1], [DwgrelFROMPLAN1], [BOMentereddate2], [DwgrelTOPLAN2], [DwgrelFROMPLAN2], [BOMentereddate3], [DwgrelTOPLAN3], [DwgrelFROMPLAN3], [BOMentereddate4], [DwgrelTOPLAN4], [DwgrelFROMPLAN4], [BOMentereddate5], [DwgrelTOPLAN5], [DwgrelFROMPLAN5], [BOMentereddate6], [DwgrelTOPLAN6], [DwgrelFROMPLAN6], [BOMentereddate7], [DwgrelTOPLAN7], [DwgrelFROMPLAN7], [BOMentereddate8], [DwgrelTOPLAN8], [DwgrelFROMPLAN8], [BOMentereddate9], [DwgrelTOPLAN9], [DwgrelFROMPLAN9], [BOMentereddate10], [DwgrelTOPLAN10], [DwgrelFROMPLAN10], [BOMentereddate11], [DwgrelTOPLAN11], [DwgrelFROMPLAN11], [BOMentereddate12], [DwgrelTOPLAN12], [DwgrelFROMPLAN12], [RushBlock], [email], [BOMENTEREDTA], [BOMENTEREDEL], [BOMENTEREDHY], [BOMENTEREDPN], [GAdwnby], [GAREVdate2], [GAREVdate3], [GAREVdate4], [GAREVdate1], [GAREVtoSALES1], [GAREVtoSALES2], [GAREVtoSALES3], [GAREVtoSALES4], [GAREVtoCUST1], [GAREVtoCUST2], [GAREVtoCUST3], [GAREVtoCUST4], [StockConfirmedby], [SotckConfirmedbydate], [CurrentStatus], [PrimaryVoltage], [JOnum], [Quoterefnum], [TONP], [ECNREV1], [ECNREV2], [ECNREV3], [ECNREV4], [HPU], [Vahle], [GAREVdate5], [GAREVtoCUST5], [GAREVtoSALES5], [ECNREV5], [OSD], [MultiECN], [MultiECNDate], [RA], [TL], [RG], [LT], [BR], [JW], [BW], [HC], [JR], [LW], [RC], [JT], [ECN1], [ECN2], [ECN3], [ECN4], [ECN5], [ECN6], [ECNDate1], [ECNDate2], [ECNDate3], [ECNDate4], [ECNDate5], [ECNDate6], [ECN1Text], [ECN2Text], [ECN3Text], [ECN4Text], [ECN5Text], [ECN6Text], [GAESTRELDATE], [ELESTRELDATE], [TAESTRELDATE], [ELREQD], [OrdernotesESR], [SYSPROPESTRELDATE], [HYESTRELDATE], [PNESTRELDATE], [INSTALLESTRELDATE], [SOnum], [RW], [LabelType], [LabelDateComp], [LabelDateSent], [LabelMethod], [LabelRecvd], [LabelRecvdBy], [ECNDate7], [ECN7], [ECN7Text], [ECNDate8], [ECN8], [ECN8Text], [Drafter7], [lead_setter], [WW], [manMOD], [Date_to_Check], [Job_Date_Check_Complete], [Job_Date_to_BOM], [Job_Date_Rel_To_Plan], [control_est_rel_date], [control_comp_date], [control_to_plan_date], [Item_category], [LeadTime], [ECNDate9], [ECN9], [ECN9Text], [ECNDate10], [ECN10], [ECN10Text], [ECNDate11], [ECN11], [ECN11Text], [ECNDate12], [ECN12], [ECN12Text], [Labels_Reqd], [TimeCreated], [DateCreated], [Label_ID], [Date_Modified], [MECHNotes], [CONTROLNotes], [Control_Lead_Time], [GA_Lead_Time]) VALUES (@POnumber, @COnumber, @ShipDate, @Notes, @DateRecvd, @Company, @Address, @Phone, @POC, @Status, @GAdwg, @GArev, @Dwg1, @Dwg2, @Dwg3, @Dwg4, @Dwg5, @Dwg6, @Dwg7, @Dwg8, @Dwg9, @Dwg10, @Dwg11, @Dwg12, @Dwgdatecomp1, @Dwgdatecomp2, @Dwgdatecomp3, @Dwgdatecomp4, @Dwgdatecomp5, @Dwgdatecomp6, @Dwgdatecomp7, @Dwgdatecomp8, @Dwgdatecomp9, @Dwgdatecomp10, @Dwgdatecomp11, @Dwgdatecomp12, @ItemQty, @Item, @AssnTo, @GAReqdDate, @GACompDate, @GAtoSalesDate, @GAtoCustDate, @FirstAppDate, @TAdwgnum, @TACompDAte, @TABOMEntereddate, @TARELtoPlanDate, @ELdwgnum, @ELCompDate, @ELBOMentereddate, @ELRELtoPlanDate, @HYdwgnum, @HYcompDate, @HYbomentereddate, @HYRELtoplandate, @PNdwgnum, @PNcompdate, @PNBOMentereddate, @PNRELtoplan, @Reqdcustmanual, @PrevCOnum, @SYSPROPdwgnum, @SYSPROPcompdate, @SYSPROPtosalesdate, @INSTALLdwgnum, @INSTALLcompdate, @INSTALLtosalesdate, @Seizmicin, @Seizmicout, @SN, @Salesdwgref, @TARELFROMplan, @HYRELFROMplan, @ELRELFROMplan, @PNRELFROMplan, @ShippedWithEquipment, @Mailedtocustomer, @twocdsmailedtocustomer, @mancompdate, @manualmaileddate, @cdsmaileddate, @SVCmanualcompdate, @SVCmansenttosvcdept, @ManualComments, @ItemDESCRIPTION, @refSN, @refJOBnum, @dwnby1, @dwnby2, @dwnby3, @dwnby4, @dwnby5, @dwnby6, @dwnby7, @dwnby8, @dwnby9, @dwnby10, @dwnby11, @dwnby12, @BOMentereddate1, @DwgrelTOPLAN1, @DwgrelFROMPLAN1, @BOMentereddate2, @DwgrelTOPLAN2, @DwgrelFROMPLAN2, @BOMentereddate3, @DwgrelTOPLAN3, @DwgrelFROMPLAN3, @BOMentereddate4, @DwgrelTOPLAN4, @DwgrelFROMPLAN4, @BOMentereddate5, @DwgrelTOPLAN5, @DwgrelFROMPLAN5, @BOMentereddate6, @DwgrelTOPLAN6, @DwgrelFROMPLAN6, @BOMentereddate7, @DwgrelTOPLAN7, @DwgrelFROMPLAN7, @BOMentereddate8, @DwgrelTOPLAN8, @DwgrelFROMPLAN8, @BOMentereddate9, @DwgrelTOPLAN9, @DwgrelFROMPLAN9, @BOMentereddate10, @DwgrelTOPLAN10, @DwgrelFROMPLAN10, @BOMentereddate11, @DwgrelTOPLAN11, @DwgrelFROMPLAN11, @BOMentereddate12, @DwgrelTOPLAN12, @DwgrelFROMPLAN12, @RushBlock, @email, @BOMENTEREDTA, @BOMENTEREDEL, @BOMENTEREDHY, @BOMENTEREDPN, @GAdwnby, @GAREVdate2, @GAREVdate3, @GAREVdate4, @GAREVdate1, @GAREVtoSALES1, @GAREVtoSALES2, @GAREVtoSALES3, @GAREVtoSALES4, @GAREVtoCUST1, @GAREVtoCUST2, @GAREVtoCUST3, @GAREVtoCUST4, @StockConfirmedby, @SotckConfirmedbydate, @CurrentStatus, @PrimaryVoltage, @JOnum, @Quoterefnum, @TONP, @ECNREV1, @ECNREV2, @ECNREV3, @ECNREV4, @HPU, @Vahle, @GAREVdate5, @GAREVtoCUST5, @GAREVtoSALES5, @ECNREV5, @OSD, @MultiECN, @MultiECNDate, @RA, @TL, @RG, @LT, @BR, @JW, @BW, @HC, @JR, @LW, @RC, @JT, @ECN1, @ECN2, @ECN3, @ECN4, @ECN5, @ECN6, @ECNDate1, @ECNDate2, @ECNDate3, @ECNDate4, @ECNDate5, @ECNDate6, @ECN1Text, @ECN2Text, @ECN3Text, @ECN4Text, @ECN5Text, @ECN6Text, @GAESTRELDATE, @ELESTRELDATE, @TAESTRELDATE, @ELREQD, @OrdernotesESR, @SYSPROPESTRELDATE, @HYESTRELDATE, @PNESTRELDATE, @INSTALLESTRELDATE, @SOnum, @RW, @LabelType, @LabelDateComp, @LabelDateSent, @LabelMethod, @LabelRecvd, @LabelRecvdBy, @ECNDate7, @ECN7, @ECN7Text, @ECNDate8, @ECN8, @ECN8Text, @Drafter7, @lead_setter, @WW, @manMOD, @Date_to_Check, @Job_Date_Check_Complete, @Job_Date_to_BOM, @Job_Date_Rel_To_Plan, @control_est_rel_date, @control_comp_date, @control_to_plan_date, @Item_category, @LeadTime, @ECNDate9, @ECN9, @ECN9Text, @ECNDate10, @ECN10, @ECN10Text, @ECNDate11, @ECN11, @ECN11Text, @ECNDate12, @ECN12, @ECN12Text, @Labels_Reqd, @TimeCreated, @DateCreated, @Label_ID, @Date_Modified, @MECHNotes, @CONTROLNotes, @Control_Lead_Time, @GA_Lead_Time)" SelectCommand="SELECT * FROM [JobEngine] WHERE (([Status] = @Status) AND ([COnumber] LIKE '%' + @COnumber + '%') AND ([Company] LIKE '%' + @Company + '%'))" UpdateCommand="UPDATE [JobEngine] SET [POnumber] = @POnumber, [COnumber] = @COnumber, [ShipDate] = @ShipDate, [Notes] = @Notes, [DateRecvd] = @DateRecvd, [Company] = @Company, [Address] = @Address, [Phone] = @Phone, [POC] = @POC, [Status] = @Status, [GAdwg] = @GAdwg, [GArev] = @GArev, [Dwg1] = @Dwg1, [Dwg2] = @Dwg2, [Dwg3] = @Dwg3, [Dwg4] = @Dwg4, [Dwg5] = @Dwg5, [Dwg6] = @Dwg6, [Dwg7] = @Dwg7, [Dwg8] = @Dwg8, [Dwg9] = @Dwg9, [Dwg10] = @Dwg10, [Dwg11] = @Dwg11, [Dwg12] = @Dwg12, [Dwgdatecomp1] = @Dwgdatecomp1, [Dwgdatecomp2] = @Dwgdatecomp2, [Dwgdatecomp3] = @Dwgdatecomp3, [Dwgdatecomp4] = @Dwgdatecomp4, [Dwgdatecomp5] = @Dwgdatecomp5, [Dwgdatecomp6] = @Dwgdatecomp6, [Dwgdatecomp7] = @Dwgdatecomp7, [Dwgdatecomp8] = @Dwgdatecomp8, [Dwgdatecomp9] = @Dwgdatecomp9, [Dwgdatecomp10] = @Dwgdatecomp10, [Dwgdatecomp11] = @Dwgdatecomp11, [Dwgdatecomp12] = @Dwgdatecomp12, [ItemQty] = @ItemQty, [Item] = @Item, [AssnTo] = @AssnTo, [GAReqdDate] = @GAReqdDate, [GACompDate] = @GACompDate, [GAtoSalesDate] = @GAtoSalesDate, [GAtoCustDate] = @GAtoCustDate, [FirstAppDate] = @FirstAppDate, [TAdwgnum] = @TAdwgnum, [TACompDAte] = @TACompDAte, [TABOMEntereddate] = @TABOMEntereddate, [TARELtoPlanDate] = @TARELtoPlanDate, [ELdwgnum] = @ELdwgnum, [ELCompDate] = @ELCompDate, [ELBOMentereddate] = @ELBOMentereddate, [ELRELtoPlanDate] = @ELRELtoPlanDate, [HYdwgnum] = @HYdwgnum, [HYcompDate] = @HYcompDate, [HYbomentereddate] = @HYbomentereddate, [HYRELtoplandate] = @HYRELtoplandate, [PNdwgnum] = @PNdwgnum, [PNcompdate] = @PNcompdate, [PNBOMentereddate] = @PNBOMentereddate, [PNRELtoplan] = @PNRELtoplan, [Reqdcustmanual] = @Reqdcustmanual, [PrevCOnum] = @PrevCOnum, [SYSPROPdwgnum] = @SYSPROPdwgnum, [SYSPROPcompdate] = @SYSPROPcompdate, [SYSPROPtosalesdate] = @SYSPROPtosalesdate, [INSTALLdwgnum] = @INSTALLdwgnum, [INSTALLcompdate] = @INSTALLcompdate, [INSTALLtosalesdate] = @INSTALLtosalesdate, [Seizmicin] = @Seizmicin, [Seizmicout] = @Seizmicout, [SN] = @SN, [Salesdwgref] = @Salesdwgref, [TARELFROMplan] = @TARELFROMplan, [HYRELFROMplan] = @HYRELFROMplan, [ELRELFROMplan] = @ELRELFROMplan, [PNRELFROMplan] = @PNRELFROMplan, [ShippedWithEquipment] = @ShippedWithEquipment, [Mailedtocustomer] = @Mailedtocustomer, [twocdsmailedtocustomer] = @twocdsmailedtocustomer, [mancompdate] = @mancompdate, [manualmaileddate] = @manualmaileddate, [cdsmaileddate] = @cdsmaileddate, [SVCmanualcompdate] = @SVCmanualcompdate, [SVCmansenttosvcdept] = @SVCmansenttosvcdept, [ManualComments] = @ManualComments, [ItemDESCRIPTION] = @ItemDESCRIPTION, [refSN] = @refSN, [refJOBnum] = @refJOBnum, [dwnby1] = @dwnby1, [dwnby2] = @dwnby2, [dwnby3] = @dwnby3, [dwnby4] = @dwnby4, [dwnby5] = @dwnby5, [dwnby6] = @dwnby6, [dwnby7] = @dwnby7, [dwnby8] = @dwnby8, [dwnby9] = @dwnby9, [dwnby10] = @dwnby10, [dwnby11] = @dwnby11, [dwnby12] = @dwnby12, [BOMentereddate1] = @BOMentereddate1, [DwgrelTOPLAN1] = @DwgrelTOPLAN1, [DwgrelFROMPLAN1] = @DwgrelFROMPLAN1, [BOMentereddate2] = @BOMentereddate2, [DwgrelTOPLAN2] = @DwgrelTOPLAN2, [DwgrelFROMPLAN2] = @DwgrelFROMPLAN2, [BOMentereddate3] = @BOMentereddate3, [DwgrelTOPLAN3] = @DwgrelTOPLAN3, [DwgrelFROMPLAN3] = @DwgrelFROMPLAN3, [BOMentereddate4] = @BOMentereddate4, [DwgrelTOPLAN4] = @DwgrelTOPLAN4, [DwgrelFROMPLAN4] = @DwgrelFROMPLAN4, [BOMentereddate5] = @BOMentereddate5, [DwgrelTOPLAN5] = @DwgrelTOPLAN5, [DwgrelFROMPLAN5] = @DwgrelFROMPLAN5, [BOMentereddate6] = @BOMentereddate6, [DwgrelTOPLAN6] = @DwgrelTOPLAN6, [DwgrelFROMPLAN6] = @DwgrelFROMPLAN6, [BOMentereddate7] = @BOMentereddate7, [DwgrelTOPLAN7] = @DwgrelTOPLAN7, [DwgrelFROMPLAN7] = @DwgrelFROMPLAN7, [BOMentereddate8] = @BOMentereddate8, [DwgrelTOPLAN8] = @DwgrelTOPLAN8, [DwgrelFROMPLAN8] = @DwgrelFROMPLAN8, [BOMentereddate9] = @BOMentereddate9, [DwgrelTOPLAN9] = @DwgrelTOPLAN9, [DwgrelFROMPLAN9] = @DwgrelFROMPLAN9, [BOMentereddate10] = @BOMentereddate10, [DwgrelTOPLAN10] = @DwgrelTOPLAN10, [DwgrelFROMPLAN10] = @DwgrelFROMPLAN10, [BOMentereddate11] = @BOMentereddate11, [DwgrelTOPLAN11] = @DwgrelTOPLAN11, [DwgrelFROMPLAN11] = @DwgrelFROMPLAN11, [BOMentereddate12] = @BOMentereddate12, [DwgrelTOPLAN12] = @DwgrelTOPLAN12, [DwgrelFROMPLAN12] = @DwgrelFROMPLAN12, [RushBlock] = @RushBlock, [email] = @email, [BOMENTEREDTA] = @BOMENTEREDTA, [BOMENTEREDEL] = @BOMENTEREDEL, [BOMENTEREDHY] = @BOMENTEREDHY, [BOMENTEREDPN] = @BOMENTEREDPN, [GAdwnby] = @GAdwnby, [GAREVdate2] = @GAREVdate2, [GAREVdate3] = @GAREVdate3, [GAREVdate4] = @GAREVdate4, [GAREVdate1] = @GAREVdate1, [GAREVtoSALES1] = @GAREVtoSALES1, [GAREVtoSALES2] = @GAREVtoSALES2, [GAREVtoSALES3] = @GAREVtoSALES3, [GAREVtoSALES4] = @GAREVtoSALES4, [GAREVtoCUST1] = @GAREVtoCUST1, [GAREVtoCUST2] = @GAREVtoCUST2, [GAREVtoCUST3] = @GAREVtoCUST3, [GAREVtoCUST4] = @GAREVtoCUST4, [StockConfirmedby] = @StockConfirmedby, [SotckConfirmedbydate] = @SotckConfirmedbydate, [CurrentStatus] = @CurrentStatus, [PrimaryVoltage] = @PrimaryVoltage, [JOnum] = @JOnum, [Quoterefnum] = @Quoterefnum, [TONP] = @TONP, [ECNREV1] = @ECNREV1, [ECNREV2] = @ECNREV2, [ECNREV3] = @ECNREV3, [ECNREV4] = @ECNREV4, [HPU] = @HPU, [Vahle] = @Vahle, [GAREVdate5] = @GAREVdate5, [GAREVtoCUST5] = @GAREVtoCUST5, [GAREVtoSALES5] = @GAREVtoSALES5, [ECNREV5] = @ECNREV5, [OSD] = @OSD, [MultiECN] = @MultiECN, [MultiECNDate] = @MultiECNDate, [RA] = @RA, [TL] = @TL, [RG] = @RG, [LT] = @LT, [BR] = @BR, [JW] = @JW, [BW] = @BW, [HC] = @HC, [JR] = @JR, [LW] = @LW, [RC] = @RC, [JT] = @JT, [ECN1] = @ECN1, [ECN2] = @ECN2, [ECN3] = @ECN3, [ECN4] = @ECN4, [ECN5] = @ECN5, [ECN6] = @ECN6, [ECNDate1] = @ECNDate1, [ECNDate2] = @ECNDate2, [ECNDate3] = @ECNDate3, [ECNDate4] = @ECNDate4, [ECNDate5] = @ECNDate5, [ECNDate6] = @ECNDate6, [ECN1Text] = @ECN1Text, [ECN2Text] = @ECN2Text, [ECN3Text] = @ECN3Text, [ECN4Text] = @ECN4Text, [ECN5Text] = @ECN5Text, [ECN6Text] = @ECN6Text, [GAESTRELDATE] = @GAESTRELDATE, [ELESTRELDATE] = @ELESTRELDATE, [TAESTRELDATE] = @TAESTRELDATE, [ELREQD] = @ELREQD, [OrdernotesESR] = @OrdernotesESR, [SYSPROPESTRELDATE] = @SYSPROPESTRELDATE, [HYESTRELDATE] = @HYESTRELDATE, [PNESTRELDATE] = @PNESTRELDATE, [INSTALLESTRELDATE] = @INSTALLESTRELDATE, [SOnum] = @SOnum, [RW] = @RW, [LabelType] = @LabelType, [LabelDateComp] = @LabelDateComp, [LabelDateSent] = @LabelDateSent, [LabelMethod] = @LabelMethod, [LabelRecvd] = @LabelRecvd, [LabelRecvdBy] = @LabelRecvdBy, [ECNDate7] = @ECNDate7, [ECN7] = @ECN7, [ECN7Text] = @ECN7Text, [ECNDate8] = @ECNDate8, [ECN8] = @ECN8, [ECN8Text] = @ECN8Text, [Drafter7] = @Drafter7, [lead_setter] = @lead_setter, [WW] = @WW, [manMOD] = @manMOD, [Date_to_Check] = @Date_to_Check, [Job_Date_Check_Complete] = @Job_Date_Check_Complete, [Job_Date_to_BOM] = @Job_Date_to_BOM, [Job_Date_Rel_To_Plan] = @Job_Date_Rel_To_Plan, [control_est_rel_date] = @control_est_rel_date, [control_comp_date] = @control_comp_date, [control_to_plan_date] = @control_to_plan_date, [Item_category] = @Item_category, [LeadTime] = @LeadTime, [ECNDate9] = @ECNDate9, [ECN9] = @ECN9, [ECN9Text] = @ECN9Text, [ECNDate10] = @ECNDate10, [ECN10] = @ECN10, [ECN10Text] = @ECN10Text, [ECNDate11] = @ECNDate11, [ECN11] = @ECN11, [ECN11Text] = @ECN11Text, [ECNDate12] = @ECNDate12, [ECN12] = @ECN12, [ECN12Text] = @ECN12Text, [Labels_Reqd] = @Labels_Reqd, [TimeCreated] = @TimeCreated, [DateCreated] = @DateCreated, [Label_ID] = @Label_ID, [Date_Modified] = @Date_Modified, [MECHNotes] = @MECHNotes, [CONTROLNotes] = @CONTROLNotes, [Control_Lead_Time] = @Control_Lead_Time, [GA_Lead_Time] = @GA_Lead_Time WHERE [ID] = @ID">
                    <DeleteParameters>
                        <asp:Parameter Name="ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="POnumber" Type="String" />
                        <asp:Parameter Name="COnumber" Type="String" />
                        <asp:Parameter DbType="Date" Name="ShipDate" />
                        <asp:Parameter Name="Notes" Type="String" />
                        <asp:Parameter DbType="Date" Name="DateRecvd" />
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="POC" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="GAdwg" Type="String" />
                        <asp:Parameter Name="GArev" Type="String" />
                        <asp:Parameter Name="Dwg1" Type="String" />
                        <asp:Parameter Name="Dwg2" Type="String" />
                        <asp:Parameter Name="Dwg3" Type="String" />
                        <asp:Parameter Name="Dwg4" Type="String" />
                        <asp:Parameter Name="Dwg5" Type="String" />
                        <asp:Parameter Name="Dwg6" Type="String" />
                        <asp:Parameter Name="Dwg7" Type="String" />
                        <asp:Parameter Name="Dwg8" Type="String" />
                        <asp:Parameter Name="Dwg9" Type="String" />
                        <asp:Parameter Name="Dwg10" Type="String" />
                        <asp:Parameter Name="Dwg11" Type="String" />
                        <asp:Parameter Name="Dwg12" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp1" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp2" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp3" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp4" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp5" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp6" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp7" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp8" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp9" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp10" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp11" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp12" />
                        <asp:Parameter Name="ItemQty" Type="Decimal" />
                        <asp:Parameter Name="Item" Type="String" />
                        <asp:Parameter Name="AssnTo" Type="String" />
                        <asp:Parameter DbType="Date" Name="GAReqdDate" />
                        <asp:Parameter DbType="Date" Name="GACompDate" />
                        <asp:Parameter DbType="Date" Name="GAtoSalesDate" />
                        <asp:Parameter DbType="Date" Name="GAtoCustDate" />
                        <asp:Parameter DbType="Date" Name="FirstAppDate" />
                        <asp:Parameter Name="TAdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="TACompDAte" />
                        <asp:Parameter DbType="Date" Name="TABOMEntereddate" />
                        <asp:Parameter DbType="Date" Name="TARELtoPlanDate" />
                        <asp:Parameter Name="ELdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="ELCompDate" />
                        <asp:Parameter DbType="Date" Name="ELBOMentereddate" />
                        <asp:Parameter DbType="Date" Name="ELRELtoPlanDate" />
                        <asp:Parameter Name="HYdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="HYcompDate" />
                        <asp:Parameter DbType="Date" Name="HYbomentereddate" />
                        <asp:Parameter DbType="Date" Name="HYRELtoplandate" />
                        <asp:Parameter Name="PNdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="PNcompdate" />
                        <asp:Parameter DbType="Date" Name="PNBOMentereddate" />
                        <asp:Parameter DbType="Date" Name="PNRELtoplan" />
                        <asp:Parameter Name="Reqdcustmanual" Type="Boolean" />
                        <asp:Parameter Name="PrevCOnum" Type="Int32" />
                        <asp:Parameter Name="SYSPROPdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="SYSPROPcompdate" />
                        <asp:Parameter DbType="Date" Name="SYSPROPtosalesdate" />
                        <asp:Parameter Name="INSTALLdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="INSTALLcompdate" />
                        <asp:Parameter DbType="Date" Name="INSTALLtosalesdate" />
                        <asp:Parameter DbType="Date" Name="Seizmicin" />
                        <asp:Parameter DbType="Date" Name="Seizmicout" />
                        <asp:Parameter Name="SN" Type="String" />
                        <asp:Parameter Name="Salesdwgref" Type="String" />
                        <asp:Parameter DbType="Date" Name="TARELFROMplan" />
                        <asp:Parameter DbType="Date" Name="HYRELFROMplan" />
                        <asp:Parameter DbType="Date" Name="ELRELFROMplan" />
                        <asp:Parameter DbType="Date" Name="PNRELFROMplan" />
                        <asp:Parameter Name="ShippedWithEquipment" Type="Boolean" />
                        <asp:Parameter Name="Mailedtocustomer" Type="Boolean" />
                        <asp:Parameter Name="twocdsmailedtocustomer" Type="Boolean" />
                        <asp:Parameter DbType="DateTime2" Name="mancompdate" />
                        <asp:Parameter DbType="DateTime2" Name="manualmaileddate" />
                        <asp:Parameter DbType="DateTime2" Name="cdsmaileddate" />
                        <asp:Parameter DbType="DateTime2" Name="SVCmanualcompdate" />
                        <asp:Parameter DbType="DateTime2" Name="SVCmansenttosvcdept" />
                        <asp:Parameter Name="ManualComments" Type="String" />
                        <asp:Parameter Name="ItemDESCRIPTION" Type="String" />
                        <asp:Parameter Name="refSN" Type="String" />
                        <asp:Parameter Name="refJOBnum" Type="String" />
                        <asp:Parameter Name="dwnby1" Type="String" />
                        <asp:Parameter Name="dwnby2" Type="String" />
                        <asp:Parameter Name="dwnby3" Type="String" />
                        <asp:Parameter Name="dwnby4" Type="String" />
                        <asp:Parameter Name="dwnby5" Type="String" />
                        <asp:Parameter Name="dwnby6" Type="String" />
                        <asp:Parameter Name="dwnby7" Type="String" />
                        <asp:Parameter Name="dwnby8" Type="String" />
                        <asp:Parameter Name="dwnby9" Type="String" />
                        <asp:Parameter Name="dwnby10" Type="String" />
                        <asp:Parameter Name="dwnby11" Type="String" />
                        <asp:Parameter Name="dwnby12" Type="String" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate1" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN1" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN1" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate2" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN2" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN2" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate3" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN3" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN3" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate4" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN4" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN4" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate5" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN5" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN5" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate6" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN6" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN6" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate7" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN7" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN7" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate8" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN8" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN8" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate9" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN9" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN9" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate10" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN10" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN10" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate11" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN11" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN11" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate12" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN12" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN12" />
                        <asp:Parameter Name="RushBlock" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="BOMENTEREDTA" Type="String" />
                        <asp:Parameter Name="BOMENTEREDEL" Type="String" />
                        <asp:Parameter Name="BOMENTEREDHY" Type="String" />
                        <asp:Parameter Name="BOMENTEREDPN" Type="String" />
                        <asp:Parameter Name="GAdwnby" Type="String" />
                        <asp:Parameter DbType="Date" Name="GAREVdate2" />
                        <asp:Parameter DbType="Date" Name="GAREVdate3" />
                        <asp:Parameter DbType="Date" Name="GAREVdate4" />
                        <asp:Parameter DbType="Date" Name="GAREVdate1" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES1" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES2" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES3" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES4" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST1" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST2" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST3" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST4" />
                        <asp:Parameter Name="StockConfirmedby" Type="String" />
                        <asp:Parameter DbType="Date" Name="SotckConfirmedbydate" />
                        <asp:Parameter Name="CurrentStatus" Type="String" />
                        <asp:Parameter Name="PrimaryVoltage" Type="String" />
                        <asp:Parameter Name="JOnum" Type="String" />
                        <asp:Parameter Name="Quoterefnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="TONP" />
                        <asp:Parameter Name="ECNREV1" Type="String" />
                        <asp:Parameter Name="ECNREV2" Type="String" />
                        <asp:Parameter Name="ECNREV3" Type="String" />
                        <asp:Parameter Name="ECNREV4" Type="String" />
                        <asp:Parameter Name="HPU" Type="String" />
                        <asp:Parameter Name="Vahle" Type="String" />
                        <asp:Parameter DbType="Date" Name="GAREVdate5" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST5" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES5" />
                        <asp:Parameter Name="ECNREV5" Type="String" />
                        <asp:Parameter DbType="Date" Name="OSD" />
                        <asp:Parameter Name="MultiECN" Type="String" />
                        <asp:Parameter DbType="Date" Name="MultiECNDate" />
                        <asp:Parameter Name="RA" Type="Boolean" />
                        <asp:Parameter Name="TL" Type="Boolean" />
                        <asp:Parameter Name="RG" Type="Boolean" />
                        <asp:Parameter Name="LT" Type="Boolean" />
                        <asp:Parameter Name="BR" Type="Boolean" />
                        <asp:Parameter Name="JW" Type="Boolean" />
                        <asp:Parameter Name="BW" Type="Boolean" />
                        <asp:Parameter Name="HC" Type="Boolean" />
                        <asp:Parameter Name="JR" Type="Boolean" />
                        <asp:Parameter Name="LW" Type="Boolean" />
                        <asp:Parameter Name="RC" Type="Boolean" />
                        <asp:Parameter Name="JT" Type="Boolean" />
                        <asp:Parameter Name="ECN1" Type="String" />
                        <asp:Parameter Name="ECN2" Type="String" />
                        <asp:Parameter Name="ECN3" Type="String" />
                        <asp:Parameter Name="ECN4" Type="String" />
                        <asp:Parameter Name="ECN5" Type="String" />
                        <asp:Parameter Name="ECN6" Type="String" />
                        <asp:Parameter DbType="Date" Name="ECNDate1" />
                        <asp:Parameter DbType="Date" Name="ECNDate2" />
                        <asp:Parameter DbType="Date" Name="ECNDate3" />
                        <asp:Parameter DbType="Date" Name="ECNDate4" />
                        <asp:Parameter DbType="Date" Name="ECNDate5" />
                        <asp:Parameter DbType="Date" Name="ECNDate6" />
                        <asp:Parameter Name="ECN1Text" Type="String" />
                        <asp:Parameter Name="ECN2Text" Type="String" />
                        <asp:Parameter Name="ECN3Text" Type="String" />
                        <asp:Parameter Name="ECN4Text" Type="String" />
                        <asp:Parameter Name="ECN5Text" Type="String" />
                        <asp:Parameter Name="ECN6Text" Type="String" />
                        <asp:Parameter DbType="Date" Name="GAESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="ELESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="TAESTRELDATE" />
                        <asp:Parameter Name="ELREQD" Type="Boolean" />
                        <asp:Parameter Name="OrdernotesESR" Type="String" />
                        <asp:Parameter DbType="Date" Name="SYSPROPESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="HYESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="PNESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="INSTALLESTRELDATE" />
                        <asp:Parameter Name="SOnum" Type="String" />
                        <asp:Parameter Name="RW" Type="Boolean" />
                        <asp:Parameter Name="LabelType" Type="String" />
                        <asp:Parameter DbType="Date" Name="LabelDateComp" />
                        <asp:Parameter DbType="Date" Name="LabelDateSent" />
                        <asp:Parameter Name="LabelMethod" Type="String" />
                        <asp:Parameter DbType="Date" Name="LabelRecvd" />
                        <asp:Parameter Name="LabelRecvdBy" Type="String" />
                        <asp:Parameter Name="ECNDate7" Type="String" />
                        <asp:Parameter Name="ECN7" Type="String" />
                        <asp:Parameter Name="ECN7Text" Type="String" />
                        <asp:Parameter Name="ECNDate8" Type="String" />
                        <asp:Parameter Name="ECN8" Type="String" />
                        <asp:Parameter Name="ECN8Text" Type="String" />
                        <asp:Parameter Name="Drafter7" Type="String" />
                        <asp:Parameter Name="lead_setter" Type="String" />
                        <asp:Parameter Name="WW" Type="Boolean" />
                        <asp:Parameter Name="manMOD" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date_to_Check" />
                        <asp:Parameter DbType="Date" Name="Job_Date_Check_Complete" />
                        <asp:Parameter DbType="Date" Name="Job_Date_to_BOM" />
                        <asp:Parameter DbType="Date" Name="Job_Date_Rel_To_Plan" />
                        <asp:Parameter DbType="Date" Name="control_est_rel_date" />
                        <asp:Parameter DbType="Date" Name="control_comp_date" />
                        <asp:Parameter DbType="Date" Name="control_to_plan_date" />
                        <asp:Parameter Name="Item_category" Type="String" />
                        <asp:Parameter Name="LeadTime" Type="String" />
                        <asp:Parameter Name="ECNDate9" Type="String" />
                        <asp:Parameter Name="ECN9" Type="String" />
                        <asp:Parameter Name="ECN9Text" Type="String" />
                        <asp:Parameter Name="ECNDate10" Type="String" />
                        <asp:Parameter Name="ECN10" Type="String" />
                        <asp:Parameter Name="ECN10Text" Type="String" />
                        <asp:Parameter Name="ECNDate11" Type="String" />
                        <asp:Parameter Name="ECN11" Type="String" />
                        <asp:Parameter Name="ECN11Text" Type="String" />
                        <asp:Parameter Name="ECNDate12" Type="String" />
                        <asp:Parameter Name="ECN12" Type="String" />
                        <asp:Parameter Name="ECN12Text" Type="String" />
                        <asp:Parameter Name="Labels_Reqd" Type="Boolean" />
                        <asp:Parameter DbType="Time" Name="TimeCreated" />
                        <asp:Parameter DbType="Date" Name="DateCreated" />
                        <asp:Parameter Name="Label_ID" Type="Int32" />
                        <asp:Parameter Name="Date_Modified" Type="DateTime" />
                        <asp:Parameter Name="MECHNotes" Type="String" />
                        <asp:Parameter Name="CONTROLNotes" Type="String" />
                        <asp:Parameter Name="Control_Lead_Time" Type="String" />
                        <asp:Parameter Name="GA_Lead_Time" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="statuspicker" DefaultValue="Not Shipped" Name="Status" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="COnumberright" DefaultValue="%" Name="COnumber" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="Company" DefaultValue="%" Name="Company" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="POnumber" Type="String" />
                        <asp:Parameter Name="COnumber" Type="String" />
                        <asp:Parameter DbType="Date" Name="ShipDate" />
                        <asp:Parameter Name="Notes" Type="String" />
                        <asp:Parameter DbType="Date" Name="DateRecvd" />
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="POC" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="GAdwg" Type="String" />
                        <asp:Parameter Name="GArev" Type="String" />
                        <asp:Parameter Name="Dwg1" Type="String" />
                        <asp:Parameter Name="Dwg2" Type="String" />
                        <asp:Parameter Name="Dwg3" Type="String" />
                        <asp:Parameter Name="Dwg4" Type="String" />
                        <asp:Parameter Name="Dwg5" Type="String" />
                        <asp:Parameter Name="Dwg6" Type="String" />
                        <asp:Parameter Name="Dwg7" Type="String" />
                        <asp:Parameter Name="Dwg8" Type="String" />
                        <asp:Parameter Name="Dwg9" Type="String" />
                        <asp:Parameter Name="Dwg10" Type="String" />
                        <asp:Parameter Name="Dwg11" Type="String" />
                        <asp:Parameter Name="Dwg12" Type="String" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp1" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp2" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp3" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp4" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp5" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp6" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp7" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp8" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp9" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp10" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp11" />
                        <asp:Parameter DbType="Date" Name="Dwgdatecomp12" />
                        <asp:Parameter Name="ItemQty" Type="Decimal" />
                        <asp:Parameter Name="Item" Type="String" />
                        <asp:Parameter Name="AssnTo" Type="String" />
                        <asp:Parameter DbType="Date" Name="GAReqdDate" />
                        <asp:Parameter DbType="Date" Name="GACompDate" />
                        <asp:Parameter DbType="Date" Name="GAtoSalesDate" />
                        <asp:Parameter DbType="Date" Name="GAtoCustDate" />
                        <asp:Parameter DbType="Date" Name="FirstAppDate" />
                        <asp:Parameter Name="TAdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="TACompDAte" />
                        <asp:Parameter DbType="Date" Name="TABOMEntereddate" />
                        <asp:Parameter DbType="Date" Name="TARELtoPlanDate" />
                        <asp:Parameter Name="ELdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="ELCompDate" />
                        <asp:Parameter DbType="Date" Name="ELBOMentereddate" />
                        <asp:Parameter DbType="Date" Name="ELRELtoPlanDate" />
                        <asp:Parameter Name="HYdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="HYcompDate" />
                        <asp:Parameter DbType="Date" Name="HYbomentereddate" />
                        <asp:Parameter DbType="Date" Name="HYRELtoplandate" />
                        <asp:Parameter Name="PNdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="PNcompdate" />
                        <asp:Parameter DbType="Date" Name="PNBOMentereddate" />
                        <asp:Parameter DbType="Date" Name="PNRELtoplan" />
                        <asp:Parameter Name="Reqdcustmanual" Type="Boolean" />
                        <asp:Parameter Name="PrevCOnum" Type="Int32" />
                        <asp:Parameter Name="SYSPROPdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="SYSPROPcompdate" />
                        <asp:Parameter DbType="Date" Name="SYSPROPtosalesdate" />
                        <asp:Parameter Name="INSTALLdwgnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="INSTALLcompdate" />
                        <asp:Parameter DbType="Date" Name="INSTALLtosalesdate" />
                        <asp:Parameter DbType="Date" Name="Seizmicin" />
                        <asp:Parameter DbType="Date" Name="Seizmicout" />
                        <asp:Parameter Name="SN" Type="String" />
                        <asp:Parameter Name="Salesdwgref" Type="String" />
                        <asp:Parameter DbType="Date" Name="TARELFROMplan" />
                        <asp:Parameter DbType="Date" Name="HYRELFROMplan" />
                        <asp:Parameter DbType="Date" Name="ELRELFROMplan" />
                        <asp:Parameter DbType="Date" Name="PNRELFROMplan" />
                        <asp:Parameter Name="ShippedWithEquipment" Type="Boolean" />
                        <asp:Parameter Name="Mailedtocustomer" Type="Boolean" />
                        <asp:Parameter Name="twocdsmailedtocustomer" Type="Boolean" />
                        <asp:Parameter DbType="DateTime2" Name="mancompdate" />
                        <asp:Parameter DbType="DateTime2" Name="manualmaileddate" />
                        <asp:Parameter DbType="DateTime2" Name="cdsmaileddate" />
                        <asp:Parameter DbType="DateTime2" Name="SVCmanualcompdate" />
                        <asp:Parameter DbType="DateTime2" Name="SVCmansenttosvcdept" />
                        <asp:Parameter Name="ManualComments" Type="String" />
                        <asp:Parameter Name="ItemDESCRIPTION" Type="String" />
                        <asp:Parameter Name="refSN" Type="String" />
                        <asp:Parameter Name="refJOBnum" Type="String" />
                        <asp:Parameter Name="dwnby1" Type="String" />
                        <asp:Parameter Name="dwnby2" Type="String" />
                        <asp:Parameter Name="dwnby3" Type="String" />
                        <asp:Parameter Name="dwnby4" Type="String" />
                        <asp:Parameter Name="dwnby5" Type="String" />
                        <asp:Parameter Name="dwnby6" Type="String" />
                        <asp:Parameter Name="dwnby7" Type="String" />
                        <asp:Parameter Name="dwnby8" Type="String" />
                        <asp:Parameter Name="dwnby9" Type="String" />
                        <asp:Parameter Name="dwnby10" Type="String" />
                        <asp:Parameter Name="dwnby11" Type="String" />
                        <asp:Parameter Name="dwnby12" Type="String" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate1" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN1" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN1" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate2" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN2" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN2" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate3" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN3" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN3" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate4" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN4" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN4" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate5" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN5" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN5" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate6" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN6" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN6" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate7" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN7" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN7" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate8" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN8" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN8" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate9" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN9" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN9" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate10" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN10" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN10" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate11" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN11" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN11" />
                        <asp:Parameter DbType="Date" Name="BOMentereddate12" />
                        <asp:Parameter DbType="Date" Name="DwgrelTOPLAN12" />
                        <asp:Parameter DbType="Date" Name="DwgrelFROMPLAN12" />
                        <asp:Parameter Name="RushBlock" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="BOMENTEREDTA" Type="String" />
                        <asp:Parameter Name="BOMENTEREDEL" Type="String" />
                        <asp:Parameter Name="BOMENTEREDHY" Type="String" />
                        <asp:Parameter Name="BOMENTEREDPN" Type="String" />
                        <asp:Parameter Name="GAdwnby" Type="String" />
                        <asp:Parameter DbType="Date" Name="GAREVdate2" />
                        <asp:Parameter DbType="Date" Name="GAREVdate3" />
                        <asp:Parameter DbType="Date" Name="GAREVdate4" />
                        <asp:Parameter DbType="Date" Name="GAREVdate1" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES1" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES2" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES3" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES4" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST1" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST2" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST3" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST4" />
                        <asp:Parameter Name="StockConfirmedby" Type="String" />
                        <asp:Parameter DbType="Date" Name="SotckConfirmedbydate" />
                        <asp:Parameter Name="CurrentStatus" Type="String" />
                        <asp:Parameter Name="PrimaryVoltage" Type="String" />
                        <asp:Parameter Name="JOnum" Type="String" />
                        <asp:Parameter Name="Quoterefnum" Type="String" />
                        <asp:Parameter DbType="Date" Name="TONP" />
                        <asp:Parameter Name="ECNREV1" Type="String" />
                        <asp:Parameter Name="ECNREV2" Type="String" />
                        <asp:Parameter Name="ECNREV3" Type="String" />
                        <asp:Parameter Name="ECNREV4" Type="String" />
                        <asp:Parameter Name="HPU" Type="String" />
                        <asp:Parameter Name="Vahle" Type="String" />
                        <asp:Parameter DbType="Date" Name="GAREVdate5" />
                        <asp:Parameter DbType="Date" Name="GAREVtoCUST5" />
                        <asp:Parameter DbType="Date" Name="GAREVtoSALES5" />
                        <asp:Parameter Name="ECNREV5" Type="String" />
                        <asp:Parameter DbType="Date" Name="OSD" />
                        <asp:Parameter Name="MultiECN" Type="String" />
                        <asp:Parameter DbType="Date" Name="MultiECNDate" />
                        <asp:Parameter Name="RA" Type="Boolean" />
                        <asp:Parameter Name="TL" Type="Boolean" />
                        <asp:Parameter Name="RG" Type="Boolean" />
                        <asp:Parameter Name="LT" Type="Boolean" />
                        <asp:Parameter Name="BR" Type="Boolean" />
                        <asp:Parameter Name="JW" Type="Boolean" />
                        <asp:Parameter Name="BW" Type="Boolean" />
                        <asp:Parameter Name="HC" Type="Boolean" />
                        <asp:Parameter Name="JR" Type="Boolean" />
                        <asp:Parameter Name="LW" Type="Boolean" />
                        <asp:Parameter Name="RC" Type="Boolean" />
                        <asp:Parameter Name="JT" Type="Boolean" />
                        <asp:Parameter Name="ECN1" Type="String" />
                        <asp:Parameter Name="ECN2" Type="String" />
                        <asp:Parameter Name="ECN3" Type="String" />
                        <asp:Parameter Name="ECN4" Type="String" />
                        <asp:Parameter Name="ECN5" Type="String" />
                        <asp:Parameter Name="ECN6" Type="String" />
                        <asp:Parameter DbType="Date" Name="ECNDate1" />
                        <asp:Parameter DbType="Date" Name="ECNDate2" />
                        <asp:Parameter DbType="Date" Name="ECNDate3" />
                        <asp:Parameter DbType="Date" Name="ECNDate4" />
                        <asp:Parameter DbType="Date" Name="ECNDate5" />
                        <asp:Parameter DbType="Date" Name="ECNDate6" />
                        <asp:Parameter Name="ECN1Text" Type="String" />
                        <asp:Parameter Name="ECN2Text" Type="String" />
                        <asp:Parameter Name="ECN3Text" Type="String" />
                        <asp:Parameter Name="ECN4Text" Type="String" />
                        <asp:Parameter Name="ECN5Text" Type="String" />
                        <asp:Parameter Name="ECN6Text" Type="String" />
                        <asp:Parameter DbType="Date" Name="GAESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="ELESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="TAESTRELDATE" />
                        <asp:Parameter Name="ELREQD" Type="Boolean" />
                        <asp:Parameter Name="OrdernotesESR" Type="String" />
                        <asp:Parameter DbType="Date" Name="SYSPROPESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="HYESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="PNESTRELDATE" />
                        <asp:Parameter DbType="Date" Name="INSTALLESTRELDATE" />
                        <asp:Parameter Name="SOnum" Type="String" />
                        <asp:Parameter Name="RW" Type="Boolean" />
                        <asp:Parameter Name="LabelType" Type="String" />
                        <asp:Parameter DbType="Date" Name="LabelDateComp" />
                        <asp:Parameter DbType="Date" Name="LabelDateSent" />
                        <asp:Parameter Name="LabelMethod" Type="String" />
                        <asp:Parameter DbType="Date" Name="LabelRecvd" />
                        <asp:Parameter Name="LabelRecvdBy" Type="String" />
                        <asp:Parameter Name="ECNDate7" Type="String" />
                        <asp:Parameter Name="ECN7" Type="String" />
                        <asp:Parameter Name="ECN7Text" Type="String" />
                        <asp:Parameter Name="ECNDate8" Type="String" />
                        <asp:Parameter Name="ECN8" Type="String" />
                        <asp:Parameter Name="ECN8Text" Type="String" />
                        <asp:Parameter Name="Drafter7" Type="String" />
                        <asp:Parameter Name="lead_setter" Type="String" />
                        <asp:Parameter Name="WW" Type="Boolean" />
                        <asp:Parameter Name="manMOD" Type="String" />
                        <asp:Parameter DbType="Date" Name="Date_to_Check" />
                        <asp:Parameter DbType="Date" Name="Job_Date_Check_Complete" />
                        <asp:Parameter DbType="Date" Name="Job_Date_to_BOM" />
                        <asp:Parameter DbType="Date" Name="Job_Date_Rel_To_Plan" />
                        <asp:Parameter DbType="Date" Name="control_est_rel_date" />
                        <asp:Parameter DbType="Date" Name="control_comp_date" />
                        <asp:Parameter DbType="Date" Name="control_to_plan_date" />
                        <asp:Parameter Name="Item_category" Type="String" />
                        <asp:Parameter Name="LeadTime" Type="String" />
                        <asp:Parameter Name="ECNDate9" Type="String" />
                        <asp:Parameter Name="ECN9" Type="String" />
                        <asp:Parameter Name="ECN9Text" Type="String" />
                        <asp:Parameter Name="ECNDate10" Type="String" />
                        <asp:Parameter Name="ECN10" Type="String" />
                        <asp:Parameter Name="ECN10Text" Type="String" />
                        <asp:Parameter Name="ECNDate11" Type="String" />
                        <asp:Parameter Name="ECN11" Type="String" />
                        <asp:Parameter Name="ECN11Text" Type="String" />
                        <asp:Parameter Name="ECNDate12" Type="String" />
                        <asp:Parameter Name="ECN12" Type="String" />
                        <asp:Parameter Name="ECN12Text" Type="String" />
                        <asp:Parameter Name="Labels_Reqd" Type="Boolean" />
                        <asp:Parameter DbType="Time" Name="TimeCreated" />
                        <asp:Parameter DbType="Date" Name="DateCreated" />
                        <asp:Parameter Name="Label_ID" Type="Int32" />
                        <asp:Parameter Name="Date_Modified" Type="DateTime" />
                        <asp:Parameter Name="MECHNotes" Type="String" />
                        <asp:Parameter Name="CONTROLNotes" Type="String" />
                        <asp:Parameter Name="Control_Lead_Time" Type="String" />
                        <asp:Parameter Name="GA_Lead_Time" Type="String" />
                        <asp:Parameter Name="ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                <asp:SqlDataSource ID="UpdateGridViewSQLDS" runat="server" ConnectionString="<%$ ConnectionStrings:maincs %>" SelectCommand="SELECT [COnumber], [Company], [Item_category], [ID] FROM [JobEngine] WHERE (([Status] = @Status) AND ([Company] = @Company) AND ([COnumber] LIKE '%' + @COnumber + '%')) ORDER BY [Company]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="statuspicker" DefaultValue="%" Name="Status" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="Company" DefaultValue="%" Name="Company" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="COnumberright" DefaultValue="%" Name="COnumber" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
