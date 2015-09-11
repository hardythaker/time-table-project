using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;

namespace SksTimeTable
{
    public class HashGenerator
    {
        public static string getHash (string user,string pass)
        {
            SHA1CryptoServiceProvider sha = new SHA1CryptoServiceProvider();
            var hash =  sha.ComputeHash(System.Text.Encoding.ASCII.GetBytes(user + pass));


            
            //var inputBytes = Encoding.ASCII.GetBytes(user+pass);
            //var hash = sha.ComputeHash(inputBytes);

            var strPassHash = new StringBuilder();
            for (var i = 0; i < hash.Length; i++)
            {
                strPassHash.Append(hash[i].ToString("X2"));
            }
            return strPassHash.ToString();
        }

        public static bool matchHash(byte[] myHash,byte[] storedHash)
        {
            bool result = false;
            if (myHash != null && storedHash != null)
            {
                if (myHash.Length == storedHash.Length)
                {
                    result = true;
                    for (int i = 0; i < myHash.Length; i++)
                    {
                        if (myHash[i] != storedHash[i])
                        {
                           result = false;
                            break;
                        }
                    }
                }
            }
            return result;
        }
    }
}