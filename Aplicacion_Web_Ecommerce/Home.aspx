﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Ecommerce.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Aplicacion_Web_Ecommerce._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView style="display:none" ID="grillaArticulos" runat="server"></asp:GridView>


            <style>

           #Articulo{
                margin-left: 40px;
                margin-right: 40px;
           }

           </style>

          <div id="Articulo" class="row row-cols-1 row-cols-md-5 g-4">
      <% foreach (var item in ListaDeArticulos)
        {%>

  <div class="col">
    <div class="card">
      <img src="https://d3ugyf2ht6aenh.cloudfront.net/stores/814/563/products/resident-evil6-chaqueta-leon_corderito1-975feea0b84d86640416533291707998-640-0.jpg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title"><%: item.Nombre %></h5>
        <p class="card-text"><%:item.Descripcion %></p>
      </div>
    </div>
  </div>
        <%} %>
</div>
   


</asp:Content>
