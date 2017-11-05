using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcHacks
{
    public partial class Goals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.oid == null)
            {
                Server.Transfer("Login.aspx", true);
            }

        }



        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        private string g1()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("Goal1").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(Goal1)");

            u = r.Replace(u, "");

            r = new Regex(@"(\D)");

            u = r.Replace(u, "");

            return u;
        }
        private string g2()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("Goal2").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(Goal2)");

            u = r.Replace(u, "");

            r = new Regex(@"(\D)");

            u = r.Replace(u, "");

            return u;
        }
        private string g3()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("Goal3").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(Goal3)");

            u = r.Replace(u, "");

            r = new Regex(@"(\D)");

            u = r.Replace(u, "");

            return u;
        }
        private string g4()
        {
            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");
            var query = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var projection = Builders<BsonDocument>.Projection.Include("Goal4").Exclude("_id");
            var result = coll.Find<BsonDocument>(query).Project(projection).ToList();

            string u = result[0].ToString();

            Regex r = new Regex(@"(Goal4)");

            u = r.Replace(u, "");

            r = new Regex(@"(\D)");

            u = r.Replace(u, "");
            return u;
        }

    }
}