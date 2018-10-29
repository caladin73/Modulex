using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ModulexEAL
{
    public class clsProductHandbookInfoEAL
    {
        #region "Properties Declaration"
        // Properties declaration for this class

        public int ProductHandbookInfo_Family_ID { get; set; }
        public string Name { get; set; }
        public int Parrentlevel { get; set; }
        public string Materials { get; set; }
        public string ItemNumber { get; set; }
        public string Maintaince { get; set; }
        public string USP { get; set; }
        public string img_url { get; set; }
        #endregion
    }
}