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
    public partial class user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Global.oid == null)
            {
                Server.Transfer("Login.aspx", true);
            }

            Label1.Text = po();
            Label2.Text = go();
            Label3.Text = "$67";

        }

        private string po()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("Points").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(ObjectId)");

            u = r.Replace(u, "");

            r = new Regex(@"(Points)");

            u = r.Replace(u, "");

            r = new Regex(@"(\W)");

            u = r.Replace(u, "");

            return u;
        }

        private string go()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("compGoals").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(ObjectId)");

            u = r.Replace(u, "");

            r = new Regex(@"(compGoals)");

            u = r.Replace(u, "");

            r = new Regex(@"(\W)");

            u = r.Replace(u, "");

            return u;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Registered");

            var filter = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var update = Builders<BsonDocument>.Update.Set("UserName", TextBox1.Text)
                .Set("FirstName", TextBox2.Text)
                .Set("LastName", TextBox3.Text)
                .Set("Address", TextBox4.Text)
                .Set("City", TextBox5.Text)
                .Set("Country", TextBox6.Text)
                .Set("PostalCode", TextBox7.Text);
            var result = coll.UpdateOne(filter, update);
        }
    }
}