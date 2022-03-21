using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Addstaff : System.Web.UI.Page
{
    private SqlConnection con;
    SqlCommand cmd;
    public void connect()
    {
        String newcon = WebConfigurationManager.ConnectionStrings["stafcon"].ToString();
        con = new SqlConnection(newcon);

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        connect();
        con.Open();
    }
    protected void btsave_Click(object sender, EventArgs e)
    {
        try
        {
            connect();
            con.Open();
            cmd = new SqlCommand("add_staff_sp", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@mn", txmnm.Text);
            cmd.Parameters.AddWithValue("@me", txmeml.Text);
            cmd.Parameters.AddWithValue("@mpn", txmpn.Text);
            cmd.Parameters.AddWithValue("@mpy", txmpay.Text);
            cmd.Parameters.AddWithValue("@mct", txmct.Text);
            cmd.Parameters.AddWithValue("@mrole", txmrole.Text);

            int result = cmd.ExecuteNonQuery();
            if (result > 0)
            {
                con.Close();
                Response.Write("<script>alert('Add Succesfully')</script>");
                txmnm.Text = "";
                txmeml.Text = "";
                txmpn.Text = "";
                txmct.Text = "";
                txmpay.Text = "";
                txmrole.Text = "";

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        
    }
    protected void btreset_Click(object sender, EventArgs e)
    {
        txmnm.Text = "";
        txmeml.Text = "";
        txmpn.Text = "";
        txmct.Text = "";
        txmpay.Text = "";
        txmrole.Text = "";
    }
}