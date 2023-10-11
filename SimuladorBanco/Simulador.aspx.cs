using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SimuladorBanco
{
    public partial class Simulador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            Proyeccion proyeccion = new Proyeccion();
            double monto = double.Parse(txtMonto.Text);
            double tasaInteres = double.Parse(ddlInteres.SelectedValue.ToString())/100;
            int plazo = int.Parse(ddlPlazo.SelectedValue);

            proyeccion.calcularCuota(monto,tasaInteres,plazo);
            //Carga la grilla
            gdvProyeccion.DataSource = proyeccion.calcularProyeccion(monto, tasaInteres, plazo);
            //Mostrar la grilla
            gdvProyeccion.DataBind();
        }
    }
}