﻿ <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="StudentHistoryReports.aspx.cs" Inherits="WMTA.Reporting.StudentHistoryReports" %>

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
                                <legend id="legend" runat="server">Search</legend>
                                <%-- Audition search --%>
                                <asp:UpdatePanel ID="upSearch" runat="server" OnUnload="DoHourGlass">
                                    <ContentTemplate>
                                        <div>
                                            <h4>Select Information to Retrieve Reports On</h4>
                                            <br />
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="ddlDistrictSearch" CssClass="col-md-3 control-label float-left">District</asp:Label>
                                                <div class="col-md-6">
                                                    <asp:DropDownList ID="ddlDistrictSearch" runat="server" CssClass="dropdown-list form-control" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlDistrictSearch_SelectedIndexChanged" AutoPostBack="true">
                                                        <asp:ListItem Selected="True" Text="" Value=""></asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary btn-min-width-72" OnClick="btnSearch_Click" />
                                            </div>
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="ddlTeacher" CssClass="col-md-3 control-label">Teacher</asp:Label>
                                                <div class="col-md-6">
                                                    <asp:DropDownList ID="ddlTeacher" runat="server" CssClass="dropdown-list form-control" AppendDataBoundItems="true" OnSelectedIndexChanged="ddlTeacher_SelectedIndexChanged" AutoPostBack="true"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <asp:Label runat="server" AssociatedControlID="ddlStudent" CssClass="col-md-3 control-label">Student</asp:Label>
                                                <div class="col-md-6">
                                                    <asp:DropDownList ID="ddlStudent" runat="server" CssClass="dropdown-list form-control" AppendDataBoundItems="true" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3-margin text-info smaller-font">Use this field to only retrieve students who auditioned in a particular year. All of their data will be returned.</label>
                                                <asp:Label runat="server" AssociatedControlID="ddlYear" CssClass="col-md-3 control-label">Audition Year</asp:Label>
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
                        <label id="lblSuccessMessage" runat="server" style="color: transparent">.</label>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </section>
        </div>
    </div>
    <div class="col-md-12">
        <div>
            <div class="text-align-center"><h3>Student History</h3></div>
            <rsweb:ReportViewer ID="rptViewerStudentHistory" runat="server" CssClass="report-viewer" OnUnload="DoHourGlass"></rsweb:ReportViewer>
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

        //show wait cursor
        function doHourglass() {
            document.body.style.cursor = 'wait';
        }
    </script>
</asp:Content>
