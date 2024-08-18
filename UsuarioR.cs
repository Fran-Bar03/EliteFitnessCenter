using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EliteFitnessCenter
{
    public class UsuarioR
    {
        private int id_usuario;
        private string nombre;
        private string apaterno;
        private string amaterno;
        private string email;
        private string contraseña;
        private int celular;
        private int peso;
        private int altura;
        private int tipo_usuario;

        public UsuarioR(int id_usuario, string nombre, string apaterno, string amaterno, string email, string contrasena, int celular, int peso, int altura, int tipo_usuario)
        {
            this.ID_Usuario = id_usuario;
            this.Nombre = nombre;
            this.APaterno = apaterno;
            this.AMaterno = amaterno;
            this.Email = email;
            this.Contraseña = contrasena;
            this.Celular = celular;
            this.Peso = peso;
            this.Altura = altura;
            this.Tipo_Usuario = tipo_usuario;
        }

        public int ID_Usuario { get => id_usuario; set => id_usuario = value; }

        public string Nombre { get => nombre; set => nombre = value; }

        public string APaterno { get => apaterno; set => apaterno = value; }

        public string AMaterno { get => amaterno; set => amaterno = value; }

        public string Email { get => email; set => email = value; }

        public string Contraseña { get => contraseña; set => contraseña = value; }

        public int Celular { get => celular; set => celular = value; }

        public int Peso { get => peso; set => peso = value; }

        public int Altura { get => altura; set => altura = value; }

        public int Tipo_Usuario { get => tipo_usuario; set => tipo_usuario = value; }
    }
}