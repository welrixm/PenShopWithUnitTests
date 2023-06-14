using Microsoft.VisualStudio.TestTools.UnitTesting;
using WpfApp1.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfApp1.componens;
using WpfApp1Tests;

namespace WpfApp1.pages.Tests
{
    [TestClass()]
    public class RegPageTests
    {
        public static scriptpenEntities1 db = new scriptpenEntities1();
        [TestMethod()]
        public void RegPageTest()
        {
            var User = BdConect.db.Use.Where(x => x.Login == "123").FirstOrDefault();

            Assert.IsTrue(User != null);
        }
    }
}