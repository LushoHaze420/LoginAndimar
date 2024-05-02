using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace LoginAndimar
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-Control", "no-store");/*liberar cache para que las vistas siempre se actualizen al acceder a un formulario*/

        }

        string patron = "Andimar";
        protected void BtnIngresar_Click(object sender, EventArgs e)
        {
            string conectar = ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
            SqlConnection sqlConectar = new SqlConnection(conectar);
            SqlCommand cmd = new SqlCommand("SP_ValidarUsuario", sqlConectar)
            {
                CommandType = System.Data.CommandType.StoredProcedure
            };
            cmd.Connection.Open();
            cmd.Parameters.Add("@Usuario", SqlDbType.VarChar, 50).Value = tbUsuario.Text;
            cmd.Parameters.Add("@Contrasena", SqlDbType.VarChar, 50).Value = tbPassword.Text;
            cmd.Parameters.Add("@Patron", SqlDbType.VarChar, 50).Value = patron;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                //agregar sesion  del usuario
                Session["usuariologueado"]=tbUsuario.Text; //muestra nombre del usuario logeado
                Response.Redirect("Index.aspx");
            }
            else
            {
                lblError.Text = "Error de usuario o contrasena";
            }
            cmd.Connection.Close();
        }


        private void BtnMostrarContrasena_Click(object sender, EventArgs e)
        {
            
        }
    }
}