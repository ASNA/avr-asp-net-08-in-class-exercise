<%@ Page Language="AVR" MasterPageFile="~/MasterPageNav.master" 
    AutoEventWireup="false" CodeFile="customer-number.aspx.vr"
    Inherits="views_customer_number" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="Server">
    <div class="row">
        <div class="col">
        </div>
        <div class="col">
            <div class="mb-3">
                <label for="customernumber" class="form-label">Customer number</label>
                <!-- start asp:TextBox-->
                <asp:TextBox cssclass="form-control" ID="textboxCustomerNumber" name="customernumber" runat="server"></asp:TextBox>
                <asp:CustomValidator 
                    ID="customervalidatorCustomerNumber" 
                    runat="server" ErrorMessage="" 
                    ControlToValidate="textboxCustomerNumber" 
                    CssClass="alert alert-danger p-1" Display="Dynamic">
                </asp:CustomValidator>                
                <!-- stop asp:TextBox -->
            </div>
            <div style="text-align: center;">
                <asp:Button ID="buttonPostBack"
                    runat="server"
                    Text="OK-postback"
                    CssClass="btn btn-primary"
                    style="min-width: 8rem;" />
            </div>



        </div>
        <div class="col">
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" runat="Server">
</asp:Content>

