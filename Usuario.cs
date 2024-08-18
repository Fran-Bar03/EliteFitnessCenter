using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EliteFitnessCenter
{
    public class Usuario
    {

        private string email;
        private string contraseña;
        private int tipo_usuario;

        public Usuario( string email, string contrasena, int tipo_usuario)
        {
         
            this.Email = email;
            this.Contraseña = contrasena;
            this.Tipo_Usuario = tipo_usuario;
        }

        public string Email { get => email; set => email = value; }

        public string Contraseña { get => contraseña; set => contraseña = value; }


        public int Tipo_Usuario { get => tipo_usuario; set => tipo_usuario = value; }
    }
}