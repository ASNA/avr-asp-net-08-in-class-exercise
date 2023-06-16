<%@ Page Language="AVR" MasterPageFile="~/MasterPageNav.master" AutoEventWireup="false" CodeFile="customer-list.aspx.vr" Inherits="views_customer_list" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">

    <div class="right-content">
        <div class="gutter g"></div>
        <div class="center-gutter">
            <div class="subheading mt-3 b">
                <h2>Customer Form</h2>
            </div>
            <div class="subnav r">
                <div class="controls">
                    <asp:Button ID="buttonNext" runat="server" Text="Next" />
                    <asp:Panel ID="Panel1" runat="server" DefaultButton="buttonPositionTo">
                        <asp:Button CssClass="ms-3" ID="buttonPositionTo" runat="server" Text="Position to" />
                        <asp:TextBox ID="textboxPositionTo" runat="server" placeholder="Position to value"></asp:TextBox>
                    </asp:Panel>
                </div>

                <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" CssClass="gridview zebra-stripe customerlist" DataKeyNames="cmname,cmcustno">
                    <Columns>
                        <asp:BoundField DataField="CMCustNo" DataFormatString="{0:00000}" HeaderText="Number">
                            <ItemStyle CssClass="col-number" />
                        </asp:BoundField>
                        <asp:BoundField DataField="cmname" HeaderText="Name">
                            <ItemStyle CssClass="col-name" />
                        </asp:BoundField>
                        <asp:ButtonField CommandName="UpdateAction" 
                                                HeaderText="Update" Text='<i class="fas fa-edit"></i>' >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:ButtonField>
                    </Columns>
                </asp:GridView>

                <div class="table-footer">
                    <asp:Label ID="labelTableFooter" runat="server" Text="Label"></asp:Label>
                </div>
            </div>
            <div>
                <asp:Label ID="labelResponseTimes" runat="server" Text=""></asp:Label>
            </div>
        </div>
        <div class="gutter g"></div>
    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="Server">
</asp:Content>

