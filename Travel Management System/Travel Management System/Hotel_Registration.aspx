﻿<%@ Page Title="" Language="C#" MasterPageFile="~/child.master" AutoEventWireup="true" CodeBehind="Hotel_Registration.aspx.cs" Inherits="Travel_Management_System.Hotel_Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .page-header
        {
            text-align:center;            
            font-size: 30px;
            color: white;
           
            padding-bottom: 30px;
             padding-left:0px;
        }  
         .container {
            text-align: center;
            background-color: black;
            width: 75%;
            font-size: 30px;
            color: white;
            padding-bottom:150px;
            opacity:0.8
        }  
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="page-header">
            <h1>Hotel Registration
            </h1>
        </div>
        <div class="row">
            <div class="form-horizontal col-md-7" style="font-size:20px">
                <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Email"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="hotel_email" TextMode="Email" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Hotel Name"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="name" required="true" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
                <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Password"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="pwd" required="true" TextMode="Password" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
                <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server"  text="Re-enter Password"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="pwd2"  required="true" TextMode="Password" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="pwd2" ControlToCompare="pwd" Display="Dynamic" Operator="Equal" ErrorMessage="Enter same passwords"></asp:CompareValidator>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Street"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="street" required="true" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="city"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="city" required="true" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="State"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:dropdownlist id="state" runat="server" ForeColor="#000000" datasourceid="SqlDataSource1" datatextfield="State_name" datavaluefield="State_name"></asp:dropdownlist>
                    <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:TravelDatabaseConnectionString %>" selectcommand="SELECT [State_name] FROM [States]"></asp:sqldatasource>
                </div>
            </div>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Contact Number 1"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="no1" required="true" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
                <asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" controltovalidate="no1" ErrorMessage="invalid number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Contact Number 2"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="no2"   forecolor="black" required="true" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
                <asp:RegularExpressionValidator id="RegularExpressionValidator2" runat="server" controltovalidate="no2" ErrorMessage="invalid number" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:label runat="server" text="Room Cost"></asp:label>
                </div>
                <div class="col-md-5">
                    <asp:textbox id="cost" required="true" forecolor="black" class="form-control" runat="server"></asp:textbox>
                </div>
            </div>
      
                    <asp:CompareValidator ID="cmp2" runat="server" controltovalidate="cost" valuetocompare="100000" ErrorMessage="cost should be less than 100000" Type="Integer" operator="LessThan"  ></asp:CompareValidator>
            <div class="form-group">
                <div class="control-label col-md-3">
                    <asp:button id="b1" class="btn btn-primary" runat="server" text="Register" onclick="b1_Click" />
                </div>
                <div class="col-md-3">
                    <asp:button id="b2" class="btn btn-primary" OnClick="b2_Click" runat="server" text="Reset" />
                </div>
            </div>
        </div>
            <div class="col-md-5">
                <h2 style="text-align: center">Hotel Image</h2>
                <br />
                <div class="form-group">
                    <div class="col-md-8" style="align-content: center">
                        <asp:fileupload id="fu1" required="true" runat="server"></asp:fileupload>
                    </div>

                </div>
                <br />
                
               
            </div>
            
        </div>
    </div>
</asp:Content>
