using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace FYP
{
    public partial class login : System.Web.UI.Page
    {
        String message;
        public SqlCommand command;
        public SqlConnection cnn;
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            string connetionString;
            connetionString = @"Data Source = DESKTOP-KQISEMS; Initial Catalog = plant; Integrated Security = True";
            cnn = new SqlConnection(connetionString);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlDataAdapter adapter = new SqlDataAdapter();
            cnn.Open();
            String query = "(SELECT *from Register where User_Name='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "')";

            command = new SqlCommand(query, cnn);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else



                message = "Invalid User_Name or Password";

            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + message + "');", true);



            cnn.Close();
        }
    }
}