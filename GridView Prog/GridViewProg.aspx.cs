using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace GridView_Prog
{
    public partial class GridViewProg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ListView1.InsertItemPosition = InsertItemPosition.LastItem;
            if (!Page.IsPostBack)
            {
                DataFill();
               
                ListView1.InsertItemPosition = InsertItemPosition.LastItem;
            }
        }
        protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
        {
            ListView1.EditIndex = e.NewEditIndex;
            DataFill();
        }

        public void  DataFill()
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "select * from Demo";
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet dt = new DataSet();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
            ListView1.InsertItemPosition = InsertItemPosition.LastItem;
        }

        protected void ListView1_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            ListView1.EditIndex = -1;
            DataFill();
        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {

            Label Sid = (Label)ListView1.EditItem.FindControl("Label4");
            int id = int.Parse(Sid.Text.ToString());
           
            TextBox name = (TextBox)ListView1.EditItem.FindControl("TextBox1");
            string names = name.Text.ToString();
            TextBox Lage = (TextBox)ListView1.EditItem.FindControl("TextBox2");
            int age =int.Parse(Lage.Text.ToString());
            TextBox Lclass = (TextBox)ListView1.EditItem.FindControl("TextBox3");
            string classes = Lclass.Text.ToString();
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", names.ToString());
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@classes", classes.ToString());
            cmd.CommandText = "update Demo set Stu_Name=@name, Stu_Age=@age,Stu_class=@classes where Stu_Id=@id";
            cmd.ExecuteNonQuery();
            ListView1.EditIndex = -1;
            DataFill();
        }

        protected void ListView1_ItemDeleted(object sender, ListViewDeletedEventArgs e)
        {
            
        }

        protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {
            ListViewItem lvi=ListView1.Items[e.ItemIndex];
            Label Sid = (Label)lvi.FindControl("Label5");
            int id = int.Parse(Sid.Text.ToString());
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from demo where Stu_Id=@id";
            cmd.Parameters.AddWithValue("@id", id);
            cmd.ExecuteNonQuery();
            DataFill();
        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {

            TextBox sname = (TextBox)ListView1.InsertItem.FindControl("TextBox4");
            string name = sname.Text.ToString();
            TextBox sage = (TextBox)ListView1.InsertItem.FindControl("TextBox5");
            int age = int.Parse(sage.Text.ToString());
            TextBox cclass = (TextBox)ListView1.InsertItem.FindControl("TextBox6");
            string classes = cclass.Text.ToString();
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\v11.0;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "insert into Demo values(@name,@age,@classes)";
            cmd.Parameters.AddWithValue("@name", name.ToString());
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@classes", classes.ToString());
            cmd.ExecuteNonQuery();
            DataFill();
        }

        protected void ListView1_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            DataFill();
        }
    }
}
    