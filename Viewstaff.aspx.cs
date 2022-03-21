using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Viewstaff : System.Web.UI.Page
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
        view_staff();
    }
    public void view_staff()
    {
        connect();
        con.Open();
        cmd = new SqlCommand("View_staff" ,con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataSet dt = new DataSet();
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


    protected void btedit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Editstaff.aspx?mid=" + txid.Text);

    }
    protected void btremove_Click(object sender, EventArgs e)
    {
        connect();
        con.Open();
        cmd=new SqlCommand("delete from staff_tb where id='"+txid2.Text+"'",con);
        int r = cmd.ExecuteNonQuery();
        if (r > 0)
        {
            Response.Write("<script>alert('Record Remove Succesfully')</script>");
        }


    }
}