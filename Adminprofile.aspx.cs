using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Adminprofile : System.Web.UI.Page
{
    public SqlCommand cmd;
    private SqlConnection con;
    public void connect()
    {
        String newcon = WebConfigurationManager.ConnectionStrings["stafcon"].ToString();
        con = new SqlConnection(newcon);
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            connect();
            con.Open();
            cmd = new SqlCommand("select * from admin_tb", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            txaid.Text = sdr["id"].ToString();
            txanm.Text = sdr["aname"].ToString();
            txaeml.Text = sdr["aemail"].ToString();
            txapn.Text = sdr["aphone"].ToString();
            txapw.Text = sdr["apassword"].ToString();
            sdr.Close();
            con.Close();
        }

    }
    protected void btedit_Click(object sender, EventArgs e)
    {
        connect();
        con.Open();
        cmd=new SqlCommand("update admin_tb set aname='"+txanm.Text+"',aemail='"+txaeml.Text+"',apassword='"+txapw.Text+"',aphone='"+txapn.Text+"' where id='"+txaid.Text+"'",con);
        int u = cmd.ExecuteNonQuery();
        if (u > 0)
        {
            Response.Write("<script>alert('Your Data Succesfully edited!')</script>");
            con.Close();
        }
    }
}