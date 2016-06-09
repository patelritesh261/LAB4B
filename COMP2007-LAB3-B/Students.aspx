<%@ Page Title="Student" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="COMP2007_LAB3_B.Students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server" >
  <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Students List</h1>
                <a href="StudentDetails.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add Student</a>
   <asp:Label ID="lblresult" runat="server" Text=""></asp:Label>
    <asp:GridView ID="gdStudent" runat="server" AutoGenerateColumns="false" CssClass="table table-striped table-bordered table-hover" >
        <Columns>
            <asp:BoundField DataField="StudentID" HeaderText="Student ID" Visible="true" />
            <asp:BoundField DataField="FirstMidName" HeaderText="First Name" Visible="true"/>
            <asp:BoundField DataField="LastName" HeaderText="Last Name" Visible="true"/>
            <asp:BoundField DataField="EnrollmentDate" HeaderText="Enrollment Date" DataFormatString="{0:MMM dd, yyyy}" Visible="true"/>
            
        </Columns>
    </asp:GridView>
                <//div>
            </div>
      </div>
</asp:Content>
