<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Simulador.aspx.cs" Inherits="SimuladorBanco.Simulador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Simulador</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server" class="container">
        <div class="row">
            <asp:Label ID="lblMonto" runat="server" Text="Monto"></asp:Label>
            <asp:TextBox ID="txtMonto" runat="server" CssClass="form-control" required="true"></asp:TextBox>
        </div>
        <div class="row">
            <asp:Label ID="lblTasa" runat="server" Text="Tipo"></asp:Label>
            <asp:DropDownList ID="ddlInteres" runat="server" CssClass="form-control" required="true">
                <asp:ListItem Selected="True">Seleccione</asp:ListItem>
                <asp:ListItem Value="1">Vivienda</asp:ListItem>
                <asp:ListItem Value="2">Vehículo</asp:ListItem>
                <asp:ListItem Value="3">Consumo</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="row">
            <asp:Label ID="lblPlazo" runat="server" Text="Plazo"></asp:Label>
            <asp:DropDownList ID="ddlPlazo" runat="server" CssClass="form-control" required="true">
                <asp:ListItem>Seleccione</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>24</asp:ListItem>
                <asp:ListItem>36</asp:ListItem>
                <asp:ListItem>60</asp:ListItem>
                <asp:ListItem>120</asp:ListItem>
                <asp:ListItem>180</asp:ListItem>
            </asp:DropDownList>
        </div>
        <br />
        <div class="row">
            <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn btn-success" OnClick="btnCalcular_Click" />
        </div>

        <br />
        <div class="row">

            <asp:GridView ID="gdvProyeccion" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="table table-striped" AutoGenerateColumns="False">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="mes" HeaderText="Mes" />
                    <asp:BoundField DataField="saldoInicial" DataFormatString="{0:c0}" HeaderText="Saldo Inicial" />
                    <asp:BoundField DataField="cuota" DataFormatString="{0:c0}" HeaderText="Cuota" />
                    <asp:BoundField DataField="intereses" DataFormatString="{0:c0}" HeaderText="Intereses" />
                    <asp:BoundField DataField="capital" DataFormatString="{0:c0}" HeaderText="Capital" />
                    <asp:BoundField DataField="saldoFinal" DataFormatString="{0:c0}" HeaderText="Saldo Final" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
