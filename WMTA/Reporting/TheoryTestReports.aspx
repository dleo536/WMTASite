﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="TheoryTestReports.aspx.cs" Inherits="WMTA.Reporting.TheoryTestReports" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="well bs-component col-md-6 main-div center">
            <section id="registrationForm">
                <asp:UpdatePanel ID="upFullPage" runat="server">
                    <ContentTemplate>
                        <div class="form-horizontal">
                            <%-- Start of form --%>
                            <fieldset>
                                <legend id="legend" runat="server">Audition Search</legend>
                                <%-- Audition search --%>
                                <asp:UpdatePanel ID="upSearch" runat="server">
                                    <ContentTemplate>
                                        <div>
                                            <h4>Select an Audition to Retrieve Reports On</h4>
                                            <br />
                                            <div class="form-group">
                                                <div class="col-md-3-margin">
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlDistrictSearch" CssClass="txt-danger vertical-center font-size-12" ErrorMessage="District is required"></asp:RequiredFieldValidator>
                                                </div>
                                                <asp:Label runat="server" AssociatedControlID="ddlDistrictSearch" CssClass="col-md-3 control-label float-left">District *</asp:Label>
                                                <div class="col-md-6">
                                                    <asp:DropDownList ID="ddlDistrictSearch" runat="server" CssClass="dropdown-list form-control" AppendDataBoundItems="true">
                                                        <asp:ListItem Selected="True" Text="" Value=""></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary btn-min-width-72" OnClick="btnSearch_Click" />
                                            </div>
                                            <div class="form-group">
                                                <div class="col-md-3-margin">
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlYear" CssClass="txt-danger vertical-center font-size-12" ErrorMessage="Year is required"></asp:RequiredFieldValidator>
                                                </div>
                                                <asp:Label runat="server" AssociatedControlID="ddlYear" CssClass="col-md-3 control-label">Year *</asp:Label>
                                                <div class="col-md-6">
                                                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="dropdown-list form-control" />
                                                </div>
                                            </div>
                                            <div class="center text-align-center">
                                                <label class="text-info smaller-font">Please be patient after clicking 'Search'.  Your reports may take several minutes.</label>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                <%-- End Audition Search --%>
                            </fieldset>
                        </div>
                        <label id="lblErrorMessage" runat="server" style="color: transparent">.</label>
                        <label id="lblWarningMessage" runat="server" style="color: transparent">.</label>
                        <label id="lblInfoMessage" runat="server" style="color: transparent">.</label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </section>
        </div>
    </div>
    <div class="col-md-12">
        <div>
            <div class="text-align-center"><h3>Theory Test AA</h3></div>
            <rsweb:ReportViewer ID="rptAA" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test AB</h3></div>
            <rsweb:ReportViewer ID="rptAB" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
         <div>
            <div class="text-align-center"><h3 class="center">Theory Test AC</h3></div>
            <rsweb:ReportViewer ID="rptAC" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test EA-Alto</h3></div>
            <rsweb:ReportViewer ID="rptEAalto" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test EA-Bass</h3></div>
            <rsweb:ReportViewer ID="rptEAbass" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3>Theory Test EA-Keyboard</h3></div>
            <rsweb:ReportViewer ID="rptEAkeybrd" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test EA-Treble</h3></div>
            <rsweb:ReportViewer ID="rptEAtreble" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test EB-Alto</h3></div>
            <rsweb:ReportViewer ID="rptEBalto" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test EB-Bass</h3></div>
            <rsweb:ReportViewer ID="rptEBbass" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3>Theory Test EB-Keyboard</h3></div>
            <rsweb:ReportViewer ID="rptEBkeybrd" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test EB-Treble</h3></div>
            <rsweb:ReportViewer ID="rptEBtreble" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test EC</h3></div>
            <rsweb:ReportViewer ID="rptEC" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test IA</h3></div>
            <rsweb:ReportViewer ID="rptIA" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3>Theory Test IB</h3></div>
            <rsweb:ReportViewer ID="rptIB" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
        <div>
            <div class="text-align-center"><h3 class="center">Theory Test IC</h3></div>
            <rsweb:ReportViewer ID="rptIC" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
         <div>
            <div class="text-align-center"><h3 class="center">Theory Test PE</h3></div>
            <rsweb:ReportViewer ID="rptPE" runat="server" CssClass="report-viewer"></rsweb:ReportViewer>
        </div>
    </div>
    <script>
        //show an error message
        function showMainError() {
            var message = $('#MainContent_lblErrorMessage').text();

            $.notify(message.toString(), { position: "left-top", className: "error" });
        };

        //show a warning message
        function showWarningMessage() {
            var message = $('#MainContent_lblWarningMessage').text();

            $.notify(message.toString(), { position: "left-top", className: "warning" });
        };

        //show an informational message
        function showInfoMessage() {
            var message = $('#MainContent_lblInfoMessage').text();

            $.notify(message.toString(), { position: "left-top", className: "info" });
        };
    </script>
</asp:Content>
