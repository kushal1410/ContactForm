using System;

using System.Data;
using System.Data.SqlClient;

//To get details from web.config
using System.Configuration;

/// <summary>
/// This class will have methods for Database layer
/// </summary>
public class DBLayer
{
    //Connection
    public static SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings.Get("ConnectionString"));


    public static bool SaveEmailDetails(string Name, string EMAIL, string MESSAGE)
    {


        try
        {

            //Command
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SAVEFORMDATA";
            cmd.CommandType = CommandType.StoredProcedure;


            //Parameters for command
            SqlParameter prmName = new SqlParameter("@NAME", Name);
            SqlParameter prmEmail = new SqlParameter("@EMAILID", EMAIL);
            SqlParameter prmMessage = new SqlParameter("@MESSAGE", MESSAGE);

            //Add parameters to command
            cmd.Parameters.Add(prmName);
            cmd.Parameters.Add(prmEmail);
            cmd.Parameters.Add(prmMessage);

            conn.Open();
            //Execute the command
            cmd.ExecuteNonQuery();

            return true;


        }
        catch (Exception)
        {
            return false;
        }
        finally
        {
            //Close connection here
            if (conn.State == ConnectionState.Open)
                conn.Close();

        }

    }
}