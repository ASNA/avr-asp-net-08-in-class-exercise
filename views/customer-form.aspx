<%@ Page Language="AVR" MasterPageFile="~/MasterPageNav.master" AutoEventWireup="false" CodeFile="customer-form.aspx.vr" Inherits="views_customer_form" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="content" Runat="Server">

<div class="container">
        <h2>Customer Form</h2>
        <header>
            header
        </header>

        <main>

            <div>
                <asp:Panel ID="panelInput" CSSClass="Steve" runat="server" DefaultButton="buttonUpdateCustomer">

                    <div class="row mt-3">
                        <div class="col-12 mt-3">

                            <label for="field_CMCustNo" class="form-label">Customer Number</label>
                            <asp:TextBox ID="field_CMCustNo" runat="server" placeholder="Name" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>

                    <div class="row mt-3">
                        <div class="col-12 mt-3">
                            <label for="field_CMName" class="form-label">Name</label>
                            <asp:TextBox ID="field_CMName" runat="server" placeholder="Name" CssClass="form-control" ValidationGroup="maincontent"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="Name required" 
                                ControlToValidate="field_CMName" EnableClientScript="False" SetFocusOnError="True"></asp:RequiredFieldValidator>

                            <asp:CustomValidator ID="customvalidatorCMName" runat="server" ErrorMessage="CustomValidator" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ControlToValidate="field_CMName" ValidateEmptyText="True"></asp:CustomValidator>
                        </div>
                        <div class="col-12 mt-3">
                            <label for="field_CMAddr1" class="form-label">Address</label>
                            
                            <asp:TextBox ID="field_CMAddr1" runat="server" PlaceHolder="Address"                            
                            CssClass="form-control"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="Address required" ControlToValidate="field_CMAddr1"></asp:RequiredFieldValidator>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-6 mt-3">
                            <label for="field_CMCity" class="form-label">City</label>
                            <asp:TextBox ID="field_CMCity" runat="server" PlaceHolder="City" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="City required" ControlToValidate="field_CMCity"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-6 mt-3">
	                        <label for="field_CMState" class="form-label">State</label>

	                        <asp:DropDownList ID="field_CMState" runat="server" 
                                 CssClass="form-control form-select"></asp:DropDownList>
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-6 mt-3">
                            <label for="field_CMPostCode" class="form-label">Zip</label>
                            <asp:TextBox ID="field_CMPostCode" runat="server" PlaceHolder="Zip code" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="alert alert-danger p-1" Display="Dynamic"
                                ErrorMessage="Zip code required" ControlToValidate="field_CMPostCode"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                                     runat="server" ControlToValidate="field_CMPostCode" 
                                     CssClass="alert alert-danger p-1" Display="Dynamic"
                                     ErrorMessage="Zip code must be in the format nnnnn or nnnnn-nnnn" ValidationExpression="^\d{5}(-\d{4})?$"></asp:RegularExpressionValidator>

                            <%-- See this page to try out this regex: /^\d{5}(-\d{4})?$/ https://regex101.com/r/lC1xQy/1 --%>
                        </div>
                        <div class="col-6 mt-3">
                            <label for="field_CMCntry" class="form-label">Country</label>
                            <asp:TextBox ID="field_CMCntry" runat="server" PlaceHolder="Country" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                 runat="server" CssClass="alert alert-danger p-1" 
                                 Display="Dynamic"
                                 ErrorMessage="Country required" ControlToValidate="field_CMCntry"></asp:RequiredFieldValidator>

                        </div>
                    </div>

                    <div class="row">
                        <div class="row mt-3">
                            <div class="col-12 mt-3">
                                <label for="field_CMFax"
                                    class="form-label">
                                    Fax
                                </label>
                                <asp:TextBox ID="field_CMFax"
                                    runat="server"
                                    placeholder="Fax number"
                                    CssClass="form-control"
                                    ReadOnly="false">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="row mt-3">
                            <div class="col-12 mt-3">
                                <label for="field_CMPhone"
                                    class="form-label">
                                    Phone number
                                </label>
                                <asp:TextBox ID="field_CMPhone"
                                    runat="server"
                                    placeholder="Phone number"
                                    CssClass="form-control"
                                    ReadOnly="false">
                                </asp:TextBox>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 mt-3">
                            <div class="form-check">
                                <asp:CheckBox ID="field_CMActive" runat="server" PlaceHolder="Active" CssClass="form-control" />
                                <label class="form-check-label" for="field_CMActive">
                                    Active
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="col-12 mt-3">
                        <asp:Button ID="buttonCancel" runat="server" Text="Cancel" CssClass="btn btn-danger ms-3" CausesValidation="False" />
                        <asp:Button ID="buttonUpdateCustomer" runat="server" Text="Update" CssClass="btn btn-success" />
                    </div>
                </asp:Panel>
            </div>


        </main>

        <footer>
            footer
        </footer>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="pageScripts" Runat="Server">
</asp:Content>

