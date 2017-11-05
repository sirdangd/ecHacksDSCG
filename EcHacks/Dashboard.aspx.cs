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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Global.oid == null)
            {
                Server.Transfer("Login.aspx", true);
            }

            Label1.Text = "$" + ex();
            Label2.Text = "$" + inc();
            Label3.Text = "$" + che();
            Label4.Text = po();
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

        private string ex()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("Expense").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(Expense)");

            u = r.Replace(u, "");

            r = new Regex(@"(\D)");

            u = r.Replace(u, "");
            
            
            return u;
        }

        private string inc()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("Income").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(Income)");

            u = r.Replace(u, "");

           
            r = new Regex(@"(\D)");

            u = r.Replace(u, "");

            return u;
        }

        private string che()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("Chequing").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(Chequing)");

            u = r.Replace(u, "");


            r = new Regex(@"(\D)");

            u = r.Replace(u, "");

            return u;
        }

    }
}