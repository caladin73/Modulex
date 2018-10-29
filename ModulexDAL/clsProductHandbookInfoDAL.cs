using System;
using System.Data;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;
using ModulexEAL;
namespace ModulexDAL

{
    public class clsProductHandbookInfoDAL
    {
        public DataTable ProductHandbookInfo_Family_SelectID(int ProductHandbookInfo_Family_ID)
        {
            Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("[Data].ProductHandbookInfo_Family_SelectID");

            db.AddInParameter(dbCommand, "ProductHandbookInfo_Family_ID", DbType.Int32, ProductHandbookInfo_Family_ID);

            return db.ExecuteDataSet(dbCommand).Tables[0];
        }

        public DataTable SelectAll()
        {
            Database db = DatabaseFactory.CreateDatabase();
            DbCommand dbCommand = db.GetStoredProcCommand("[Data].[ProductHandbookInfo_Family_SelectAll]");
            return db.ExecuteDataSet(dbCommand).Tables[0];
        }
    }
}