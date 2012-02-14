using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Caching;

namespace AspNetTrainingClasses.cache
{
    public partial class CacheStore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Cache["name"] = "ASP.Net Training";
           // System.Diagnostics.Debugger.Launch();

            ////File Based dependency
            //CacheDependency cdFile = new CacheDependency(Server.MapPath("student.xml"));
            //Cache.Insert("name", "ASP.Net Tranining,", cdFile);

            ////File based dependency with multiple files
            //string[] files = { Server.MapPath("student.xml"), Server.MapPath("product.xml") };
            //CacheDependency cdFiles = new CacheDependency(files);
            //Cache.Insert("name", "ASP.Net Tranining", cdFiles);

            ////Cache Based dependency
            //Cache["key"] = "value";            
            //string[] cacheKeys = {"key" };
            //CacheDependency cdCache = new CacheDependency(null, cacheKeys);
            //Cache.Insert("name", "ASP.Net Tranining", cdCache);

            //Absolute expiration
            //Cache.Insert("name", "ASP.Net Tranining", null, DateTime.Now.AddSeconds(10), Cache.NoSlidingExpiration);

            //Sliding expiration
            //Cache.Insert("name", "ASP.Net Tranining", null,Cache.NoAbsoluteExpiration,TimeSpan.FromSeconds(10));
            
            ////Cache based dependency call back
            //CacheItemUpdateCallback ciuCB = new CacheItemUpdateCallback(onUpdateCallBack);
            //Cache.Insert("name", "ASP.Net Tranining", null, DateTime.Now.AddSeconds(10), Cache.NoSlidingExpiration, ciuCB);


            CacheItemRemovedCallback cirCB = new CacheItemRemovedCallback(onRemoveCallBack);
            Cache.Insert("name", "ASP.Net Tranining", null, DateTime.Now.AddSeconds(10), Cache.NoSlidingExpiration, CacheItemPriority.High, cirCB);

            lblName.Text = Convert.ToString(Cache["name"]);
        }


        public void onUpdateCallBack(string str, CacheItemUpdateReason reason, out object o, out CacheDependency cd,out DateTime dt, out TimeSpan ts)
        {
            cd = new CacheDependency("student.xml");
            o = null;
            dt = new DateTime();
            ts = new TimeSpan();

            //if (reason == CacheItemUpdateReason.DependencyChanged)
            //{ }
        }

        public void onRemoveCallBack(string str, object o, CacheItemRemovedReason reason)
        {

        }

    }
}