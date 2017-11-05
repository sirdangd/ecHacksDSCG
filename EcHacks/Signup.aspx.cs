using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcHacks
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public class Log
        {
            public ObjectId id;
            public string UserName;
            public string Password;

        }

        protected void Button1_Click(object sender, EventArgs e)
       {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) && string.IsNullOrWhiteSpace(TextBox2.Text))
            {
                return;
            }

            string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<Log>("Registered");

            if (Loginu(TextBox1.Text) == false) { return; }

            coll.InsertOne(new Log
            {
                UserName = TextBox1.Text,
                Password = TextBox2.Text
            });

            Response.Redirect("Login.aspx", true);
        }


        private bool Loginu(string u)
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Registered");
            var query = Builders<BsonDocument>.Filter.Eq("UserName", u);
            var projection = Builders<BsonDocument>.Projection.Include("_id");
            

            try
            {
                var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

                if (result[0] != null)
                {
                    return false;
                }
                   
            }

            catch(Exception ex)
            {
                return true;
            }

            return true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx", true);
        }
    }
}