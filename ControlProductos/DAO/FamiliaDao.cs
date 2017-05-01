﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ControlProductos
{
    class FamiliaDao
    {
        
        public FamiliaDao() { }

        public List<Familia> obtenerFamilia()
        {

            List<Familia> listaFamilias = new List<Familia>();
            Conexion cnn = new Conexion();

            string pConsulta = string.Format("SELECT IdFamilia,Nombre FROM Familias");
            DataTable resultado = cnn.EjecutarQuery(pConsulta,CommandType.Text);
                       
            for (int x = 0; x < resultado.Rows.Count; x++)
            {

                Familia pFamilia = new Familia();
                pFamilia.Id = Convert.ToInt32(resultado.Rows[x]["IdFamilia"]);
                pFamilia.Nombre = resultado.Rows[x]["Nombre"].ToString();
                listaFamilias.Add(pFamilia);
             }         

            cnn.Desconectar();
            return listaFamilias;
       
       }
    }
}
