using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class MyCart : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //load the page only when user is logged in
        MembershipUser user = Membership.GetUser();
        if (user == null)
        {
            Response.Redirect("~/Login.aspx");
        }


    }




    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Home.aspx");
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        var deleteButton1 = (LinkButton)GridView1.Rows[e.RowIndex].Cells[0].Controls[0];
        // var deleteButton = (LinkButton)e.Rows.Cells[0].Controls[2];
        if (deleteButton1.Text == "Delete")
        {
            deleteButton1.Attributes.Add("onclick", "javascript:return " +
     "confirm('Are you sure you want to delete this record? ')");
            //deleteButton1.OnClientClick = "return confirm('Do you really want to delete?');";
        }
    }
}