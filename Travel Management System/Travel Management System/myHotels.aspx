﻿<%@ Page Title="" Language="C#" MasterPageFile="~/ChildUser.master" AutoEventWireup="true" CodeBehind="myHotels.aspx.cs" Inherits="Travel_Management_System.myHotels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="UserProfileContent" runat="server">
   
    <asp:GridView ID="GridView1"
         runat="server"
         AllowSorting="True"
         AutoGenerateColumns="False"
         DataKeyNames="id"
         DataSourceID="LinqDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="user_email" HeaderText="user_email" SortExpression="user_email" />
            <asp:BoundField DataField="hotel_id" HeaderText="hotel_id" SortExpression="hotel_id" />
            <asp:BoundField DataField="PERSONS" HeaderText="PERSONS" SortExpression="PERSONS" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Total_Cost" HeaderText="Total_Cost" SortExpression="Total_Cost" />
        </Columns>
    </asp:GridView> 
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Travel_Management_System.DataClasses1DataContext" EnableDelete="True" EntityTypeName="" TableName="HOTEL_BOOKINGs" Where="user_email == @user_email">
        <WhereParameters>
            <asp:SessionParameter Name="user_email" SessionField="email" Type="String" />
        </WhereParameters>
    </asp:LinqDataSource>
</asp:Content>