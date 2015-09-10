using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SksTimeTable
{
    public class HashGenerator
    {
        public static byte[] getHash (string user,string pass)
        {
            SHA1CryptoServiceProvider sha = new SHA1CryptoServiceProvider();
            return sha.ComputeHash(System.Text.Encoding.ASCII.GetBytes(user + pass));
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