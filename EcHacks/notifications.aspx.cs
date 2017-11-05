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
    public partial class notifications : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.oid == null)
            {
                Server.Transfer("Login.aspx", true);
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string b = poin();

            int a = Convert.ToInt32(b);

            a -= 3000;

            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");

            var filter = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var update = Builders<BsonDocument>.Update.Set("Points", a);
            var result = coll.UpdateOne(filter, update);
        }

        protected void button2_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(poin());

            a -= 15000;

            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");

            var filter = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var update = Builders<BsonDocument>.Update.Set("Points", a);
            var result = coll.UpdateOne(filter, update);
        }


        

        protected void button3_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(poin());

            a -= 10000;

            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");

            var filter = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var update = Builders<BsonDocument>.Update.Set("Points", a);
            var result = coll.UpdateOne(filter, update);
        }

        protected void button4_Click(object sender, EventArgs e)
        {
            int a = Convert.ToInt32(poin());

            a -= 10000;

            const string connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var db = client.GetDatabase("Financial");
            var coll = db.GetCollection<BsonDocument>("Personal");

            var filter = Builders<BsonDocument>.Filter.Eq("_id", Global.oid);
            var update = Builders<BsonDocument>.Update.Set("Points", a);
            var result = coll.UpdateOne(filter, update);
        }

        private string poin()
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
    }
}