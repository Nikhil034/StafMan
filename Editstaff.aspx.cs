using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Editstaff : System.Web.UI.Page
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
        try
        {
            String nmget = Request.QueryString["mid"];
            txid.Text = nmget;
            if (!IsPostBack)
            {
                connect();
                con.Open();

                cmd = new SqlCommand("Edit_Sp2", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@mid", txid.Text);
                SqlDataReader sdr = cmd.ExecuteReader();
                sdr.Read();
                txmnm.Text = sdr["mname"].ToString();
                txmeml.Text = sdr["memail"].ToString();
                txmpn.Text = sdr["mphone"].ToString();
                txmpay.Text = sdr["mpay"].ToString();
                txmct.Text = sdr["mcity"].ToString();
                txmrole.Text = sdr["mrole"].ToString();

            }
        }
        catch (Exception exmsg)
        {
           
            Response.Write("<script>alert('Something went wrong,plese choose first id for edit')</script>");
            txid.ReadOnly = true;
            txmnm.ReadOnly = true;
            txmeml.ReadOnly = true;
            txmpn.ReadOnly = true;
            txmpay.ReadOnly = true;
            txmct.ReadOnly = true;
            txmrole.ReadOnly= true;


            
           
        }
        
      
    }
    protected void btedit_Click(object sender, EventArgs e)
    {
        connect();
        con.Open();
        cmd = new SqlCommand("sp_staff_edit", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@nm", txmnm.Text);
        cmd.Parameters.AddWithValue("@ml", txmeml.Text);
        cmd.Parameters.AddWithValue("@pn", txmpn.Text);
        cmd.Parameters.AddWithValue("@py", txmpay.Text);
        cmd.Parameters.AddWithValue("@ct", txmct.Text);
        cmd.Parameters.AddWithValue("@mr", txmrole.Text);
        cmd.Parameters.AddWithValue("@id", txid.Text);

        int i = cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write("<script>alert('Record Update Succesfully')</script>");
            
        }
        else
        {
            Response.Write("Sorry");
        }
    }
}