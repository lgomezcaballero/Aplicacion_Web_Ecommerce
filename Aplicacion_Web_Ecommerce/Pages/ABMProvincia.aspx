﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ecommerce.Master" AutoEventWireup="true" CodeBehind="ABMProvincia.aspx.cs" Inherits="Aplicacion_Web_Ecommerce.Pages.ABMProvincia" %>
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

    <asp:Button ID="BtnAgregar" runat="server" OnClick="BtnAgregar_Click" Text="Agregar" />
    
        
     <%//----------------------------------------------------------------------------------------------- %>

 


    
        
        
        
        
        
        
        <%} %>
    <%else if(tipo=="e") { %>
        
    <div class="form-control">
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="lblNombreDelPais" runat="server" Text="Nombre del pais"></asp:Label>
                <asp:TextBox ID="txtNombreDelPais" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
    </div>

    

        <%} %>



</asp:Content>