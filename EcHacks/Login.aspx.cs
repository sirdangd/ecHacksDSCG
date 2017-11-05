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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Global.oid = null;
        }

        public class Log
        {
            public ObjectId Id { get; set; }
            public string UserName { get; set; }
            public string Password { get; set; }

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

            if (Loginu(TextBox1.Text) == Loginp(TextBox2.Text))
            {
                Global.oid = Loginu("awesomejohnsmith");

                Response.Redirect("Dashboard.aspx", true);
            }

        }

        private string Loginu(string u)
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Registered");
            var query = Builders<BsonDocument>.Filter.Eq("UserName", u);
            var projection = Builders<BsonDocument>.Projection.Include("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();
            try
            {
                u = result[0].ToString();

            }
            catch (Exception ex)
            {

            }
            Regex r = new Regex(@"(ObjectId)");

            u = r.Replace(u, "");

            r = new Regex(@"(_id)");

            u = r.Replace(u, "");

            r = new Regex(@"(\W)");

            u = r.Replace(u, "");

            return u;
        }

        private string Loginp(string b)
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Registered");
            var query = Builders<BsonDocument>.Filter.Eq("Password", b);
            var projection = Builders<BsonDocument>.Projection.Include("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            try
            {
                b = result[0].ToString();

            }
            catch (Exception ex)
            {

            }

            Regex r = new Regex(@"(ObjectId)");

            r = new Regex(@"(ObjectId)");

            b = r.Replace(b, "");

            r = new Regex(@"(_id)");

            b = r.Replace(b, "");

            r = new Regex(@"(\W)");

            b = r.Replace(b, "");

            return b;

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Signup.aspx", true);
        }
    }
}
