using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        if (user == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        //Creating a session
        Session["Login"] = user.UserName;


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MembershipUser user = Membership.GetUser();
        string loginName = user.UserName;
        string id = ((Button)sender).CommandArgument;
        string con_string = @"data source= amita-hp\sqlexpress; initial catalog= ShoppingCart1; integrated security= true";
        string qry = "select * from Products where [Product Id]= '" + id + "'";
        SqlDataAdapter ad = new SqlDataAdapter(qry, con_string);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        string productName = null;
        int price = 0;
        string description = null;
        string image = null;
        if (dt.Rows.Count > 0)
        {
            foreach (DataRow dr in dt.Rows)
            {
                productName = dr[1].ToString();
                price = int.Parse(dr[2].ToString());
                description = dr[3].ToString();
                image = dr[4].ToString();
            }
        }


        //MyCart
        int quantity;
        string qryRead = "select * from MyCart where [Product Id]= '" + id + "' and LoginName='" + loginName + "'";
        SqlDataAdapter ad1 = new SqlDataAdapter(qryRead, con_string);
        DataTable dt1 = new DataTable();
        ad1.Fill(dt1);
        if (dt1.Rows.Count > 0)//if the product already exists in the Cart
        {
            foreach (DataRow dr in dt1.Rows)
            {
                quantity = int.Parse(dr["Quantity"].ToString());//value of quantity read
                SqlConnection con = new SqlConnection(con_string);
                string qryUpdate = @"update MyCart set quantity=@quantity where [Product Id]= '" + id + "'";
                SqlCommand cmd = new SqlCommand(qryUpdate, con);
                cmd.Parameters.AddWithValue("@quantity", quantity + 1);

                con.Open();

                cmd.ExecuteNonQuery();
                con.Close();
            }


        }
        else
        {
            quantity = 1;
            SqlConnection con = new SqlConnection(con_string);
            string qryInsert = @"insert into MyCart values(@id, @name, @price, @description,  @image, @quantity, @loginName)";
            SqlCommand cmd = new SqlCommand(qryInsert, con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", productName);
            cmd.Parameters.AddWithValue("@price", price);
            cmd.Parameters.AddWithValue("@description", description);
            cmd.Parameters.AddWithValue("@image", image);
            cmd.Parameters.AddWithValue("@quantity", quantity);
            cmd.Parameters.AddWithValue("@loginName", loginName);

            con.Open();

            cmd.ExecuteNonQuery();
            con.Close();
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Mycart.aspx");
    }
}