﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EliteFitnessCenter
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //Creacion de un nuevo objeto de conexión para la base de datos con sus respectivos parámetros
        string ConexionGym = "user id=sa; password=uts; server=.; database=Gimnasio";
        
        protected void Page_Load(object sender, EventArgs e)

        {
            Usuario user = (Usuario)Session["User"];
            if(user != null) 
            {
                if (user.Tipo_Usuario == 1)
                {
                    
                }
            }


            llenarGrid();
        }

        protected void GridView_Usuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        
        public void llenarGrid() 
        {
            //Nombre de la conexion de la BD
            SqlConnection conngym = new SqlConnection(ConexionGym);

            //creacion del comando para realizar el proceso almacenado y otras funciones
            SqlCommand cmd = new SqlCommand();

            //creacion del puente para insertar los registros en el datatable
            SqlDataAdapter adaptador = new SqlDataAdapter();

            //Creacion de nuestra tabla
            DataTable dt = new DataTable();

            if (conngym.State == 0)
            {
                //apertura de la conexión
                conngym.Open();
            }

            cmd.Connection = conngym;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Join_Usuarios";
            adaptador.SelectCommand = cmd;
            adaptador.Fill(dt);
            GridView_Usuarios.DataSource = dt;
            GridView_Usuarios.DataBind();
            conngym.Close();
        }
    }
}