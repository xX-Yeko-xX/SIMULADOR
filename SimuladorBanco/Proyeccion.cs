using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SimuladorBanco
{
    public class Proyeccion
    {
        //Atributos
        private int mes;
        private double saldoInicial;
        private double cuota;
        private double intereses;
        private double capital;
        private double saldoFinal;
  //Constructores
        public Proyeccion()
        {
        }

        public Proyeccion(int mes, double saldoInicial, double intereses, double capital, double saldoFinal)
        {
            this.mes = mes;
            this.saldoInicial = saldoInicial;
            this.intereses = intereses;
            this.capital = capital;
            this.saldoFinal = saldoFinal;
        }
        //Encapsulamiento
        public int Mes { get => mes; set => mes = value; }
        public double SaldoInicial { get => saldoInicial; set => saldoInicial = value; }
        public double Cuota { get => cuota; set => cuota = value; }
        public double Intereses { get => intereses; set => intereses = value; }
        public double Capital { get => capital; set => capital = value; }
        public double SaldoFinal { get => saldoFinal; set => saldoFinal = value; }

        //Métodos

        public void calcularCuota(double monto, double tasaInteres,int plazo)
        {
            this.cuota = monto * (tasaInteres*Math.Pow((1+tasaInteres),plazo)) 
                                                                / 
                                             (Math.Pow((1+tasaInteres),plazo)-1);
        }

        public List<Proyeccion> calcularProyeccion(double monto, double tasaInteres, int plazo)
        {
            List<Proyeccion> lista = new List<Proyeccion>();
            double auxSaldoFinal=0;
            for (int i = 1; i <= plazo; i++)
            {
                Proyeccion proyeccion = new Proyeccion();
                proyeccion.mes = i;
                if (i == 1)
                {
                    proyeccion.saldoInicial = monto;
                }
                else
                {
                    proyeccion.saldoInicial = auxSaldoFinal;
                }
                proyeccion.intereses = proyeccion.saldoInicial * tasaInteres;
                proyeccion.cuota = this.cuota;
                proyeccion.capital =proyeccion.cuota - proyeccion.intereses;
                proyeccion.saldoFinal = proyeccion.saldoInicial - proyeccion.capital;

                lista.Add(proyeccion);
                auxSaldoFinal = proyeccion.saldoFinal;
            }
            return lista;
        }
    }
}