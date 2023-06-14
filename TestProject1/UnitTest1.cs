using System.Data.Common;
using WpfApp1.componens;

namespace TestProject1
{
    public class UnitTest1
    {
        public static scriptpenEntities db = new scriptpenEntities();

        [Fact]
        public void Test1()
        {

            var us = BdConect.db.Use.Where(x => x.Name == "231").FirstOrDefault();
            Assert.True(us != null);
        }
    }
}