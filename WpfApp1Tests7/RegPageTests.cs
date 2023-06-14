using Microsoft.VisualStudio.TestTools.UnitTesting;
using WpfApp1.pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using WpfApp1.componens;

namespace WpfApp1.pages.Tests
{
   
    [TestClass()]
   
   

    public class RegPageTests
    {
        public static scriptpenEntities db = new scriptpenEntities();

        [TestMethod()]
        
        public void RegPageTest()
        {
            
            var us = BdConect.db.Use.Where(x => x.Name == "231").FirstOrDefault();
            Assert.IsTrue(us !=null);
        }
    }
}