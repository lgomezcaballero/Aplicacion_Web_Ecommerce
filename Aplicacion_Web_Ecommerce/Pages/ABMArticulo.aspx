﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Ecommerce.Master" AutoEventWireup="true" CodeBehind="ABMArticulo.aspx.cs" Inherits="Aplicacion_Web_Ecommerce.Pages.ModificarArticulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <%if (tipo == "a")
        { %>
        
        
        
     <%//----------------------------------------------------------------------------------------------- %>

    <div class="form-control">
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="TextBoxNombreArticulo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col">
                <asp:Label ID="LabelNombreMarcaArticulo" runat="server" Text="Marca"></asp:Label>
                <asp:TextBox ID="TextBoxNombreMarcaArticulo" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col">
                <asp:Label ID="Categoria" runat="server" Text="Categoria"></asp:Label>
                <asp:TextBox ID="TextBoxNombreCategoria" CssClass="form-control" runat="server"></asp:TextBox>
            </div>

        </div>
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="Label2" runat="server" Text="Genero"></asp:Label>
                <asp:TextBox ID="TextBoxGenero" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col">
                <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
                <asp:TextBox ID="TextBoxPrecio" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="NombreTalla" runat="server" Text="NombreTalla"></asp:Label>
                <asp:TextBox ID="TextBoxNombreTalla" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col">
                <asp:Label ID="Label4" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="TextBoxDescripcion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>
                
            </div>

        </div>
        <div class="mb-3 row">
            <div class="d-grid gap-2 d-md-block">
<%--                <asp:Button ID="btnAtrás" CssClass="btn btn-primary" runat="server" Text="Atrás" OnClick="btnAtrás_Click" />
                <asp:Button ID="btnEditar" CssClass="btn btn-primary" runat="server" Text="Agregar Articulo" OnClick="btnEditar_Click"/>--%>
            </div>
        </div>
    </div>


    <asp:Button ID="BtnAceptar" runat="server" OnClick="BtbAgregarArticulo_Click" Text="Aceptar" />
        
        
        
        
        
        
        <%} %>
    <%else if(tipo=="e") { %>
        
    <div class="form-control">
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="e_lblNombre" runat="server" Text="Nombre"></asp:Label>
                <asp:TextBox ID="e_txtNombre" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col">
                <asp:Label ID="e_lblMarca" runat="server" Text="Marcas"></asp:Label>
                <asp:DropDownList ID="ddlMarcas" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="col">
                <asp:Label ID="e_lblCategoria" runat="server" Text="Categorias"></asp:Label>
                <asp:DropDownList ID="ddlCategorias" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="col">
                <asp:Label ID="e_lblGenero" runat="server" Text="Generos"></asp:Label>
                <asp:DropDownList ID="ddlGeneros" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>

        </div>
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="e_lblPrecio" runat="server" Text="Precio"></asp:Label>
                <asp:TextBox ID="e_txtPrecio" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col">
                <asp:Label ID="e_lblurlImagen" runat="server" Text="URL de Imagen"></asp:Label>
                <asp:TextBox ID="e_txtURLImagen" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="mb-3 row">
            <div class="col">
                <asp:Label ID="e_lblDescripcion" runat="server" Text="Descripcion"></asp:Label>
                <asp:TextBox ID="e_txtDescripcion" TextMode="MultiLine" CssClass="form-control" Rows="3" runat="server"></asp:TextBox>

            </div>
            <div class="mb-3 row">
                <div class="col">
                    <asp:Label ID="lblTalles" runat="server" Text="Talles"></asp:Label>
                </div>
            </div>

            <div class="mb-3 row">
                <div class="col-1">
                    <label class="form-label">XS</label>
                    <asp:TextBox ID="e_txtStockTallaXS" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">S</label>
                    <asp:TextBox ID="e_txtStockTallaS" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">M</label>
                    <asp:TextBox ID="e_txtStockTallaM" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">L</label>
                    <asp:TextBox ID="e_txtStockTallaL" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                                <div class="col-1">
                    <label class="form-label">XL</label>
                    <asp:TextBox ID="e_txtStockTallaXL" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">XXL</label>
                    <asp:TextBox ID="e_txtStockTallaXXL" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">XXXL</label>
                    <asp:TextBox ID="e_txtStockTallaXXXL" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">30</label>
                    <asp:TextBox ID="e_txtStockTalla30" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">31</label>
                    <asp:TextBox ID="e_txtStockTalla31" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">32</label>
                    <asp:TextBox ID="e_txtStockTalla32" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">33</label>
                    <asp:TextBox ID="e_txtStockTalla33" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">34</label>
                    <asp:TextBox ID="e_txtStockTalla34" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">35</label>
                    <asp:TextBox ID="e_txtStockTalla35" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">36</label>
                    <asp:TextBox ID="e_txtStockTalla36" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">37</label>
                    <asp:TextBox ID="e_txtStockTalla37" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">38</label>
                    <asp:TextBox ID="e_txtStockTalla38" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">39</label>
                    <asp:TextBox ID="e_txtStockTalla39" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">40</label>
                    <asp:TextBox ID="e_txtStockTalla40" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">41</label>
                    <asp:TextBox ID="e_txtStockTalla41" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">42</label>
                    <asp:TextBox ID="e_txtStockTalla42" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">43</label>
                    <asp:TextBox ID="e_txtStockTalla43" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">44</label>
                    <asp:TextBox ID="e_txtStockTalla44" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">45</label>
                    <asp:TextBox ID="e_txtStockTalla45" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="col-1">
                    <label class="form-label">46</label>
                    <asp:TextBox ID="e_txtStockTalla46" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="mb-3 row">
                <div class="d-grid gap-2 d-md-block">
                <asp:Button ID="btnAtrás" CssClass="btn btn-primary" runat="server" Text="Atrás" OnClick="btnAtrás_Click" />
                <asp:Button ID="btnEditar" CssClass="btn btn-primary" runat="server" Text="Editar Articulo" OnClick="btnEditar_Click"/>
            </div>
        </div>
    </div>
        
        
        
        
        <%} %>

</asp:Content>
