﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ecommerce.Master" AutoEventWireup="true" CodeBehind="AMBUsuarios.aspx.cs" Inherits="Aplicacion_Web_Ecommerce.Pages.AMBUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <%if (tipo == "a")
        { %>
        
             <div class="form-control">
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="lblNombrePais" runat="server" Text="NombrePais"></asp:Label>
                <asp:TextBox ID="txtNombrePais" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
               <div class="col">
                <asp:Label ID="LabelNombreProvincia" runat="server" Text="Nombre de la provincia"></asp:Label>
                <asp:TextBox ID="TxtNombreProvincia" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>


        
           <div class="mb-3 row">
            <div class="d-grid gap-2 d-md-block">
                <%--<asp:Button ID="ButtonAtras" CssClass="btn btn-primary" runat="server" Text="Atrás" OnClick="ButtonAtras_Click" />--%>
               <%-- <asp:Button ID="BtnAgregar" runat="server" OnClick="BtnAgregar_Click" Text="Agregar" CssClass="btn btn-primary"/>             --%>
            </div>
        </div>

     <%//----------------------------------------------------------------------------------------------- %>

        
        
        <%} %>
    <%else if(tipo=="e") { %>
        
            <div class="form-control">
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="LabelNombreDelPais" runat="server" Text="NombrePais"></asp:Label>
                <asp:TextBox ID="TxtNombreDelPais" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
               <div class="col">
                <asp:Label ID="LabelNombreDeLaProvincia" runat="server" Text="Nombre de la provincia"></asp:Label>
                <asp:TextBox ID="TxtNombreDeLaProvincia" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>


      <div class="mb-3 row">
            <div class="d-grid gap-2 d-md-block">
                <%--<asp:Button ID="BtnAtras" CssClass="btn btn-primary" runat="server" Text="Atrás" OnClick="ButtonAtras_Click" />--%>
                <%--<asp:Button ID="Button2" runat="server" OnClick="BtnEditar_Click" Text="Agregar" CssClass="btn btn-primary"/>  --%>           
            </div>
        </div>
    

        <%} %>


</asp:Content>
