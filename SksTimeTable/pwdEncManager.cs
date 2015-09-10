using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SksTimeTable
{
    public class pwdEncManager
    {
        /* 
        A lot of people are asking how to encrypt passwords, and I have answered "Don't do it" too many times. This Tip describes how to store a password in your database, and why.
Why do I reply "Don't do it!" when asked how to encrypt passwords? Simple: it is a major security risk! However, I am definitely not suggesting that you should store passwords in plain text. Instead, you should use a hashing function on them, and store the result. Why:
Storing passwords in plain text is simple, but a major security risk. Anyone who can get access to your database (and that is probably a lot more people than you think) gets every-bodies user ID and password, for free. Since many people can't remember more than one password, this gives them access to any system your user connects to, in theory. Not a good idea!
Storing encrypted passwords is also a major security risk! Think about it: encryption requires decryption before it is any use. Which means your program must have access to the encryption key used to encrypt the password in the first place, every time you need to check if the user has entered the password correctly. There is a very good chance that anybody who has access to your database also has access to the executable and data files of your program, so the encryption key is effectively kept with the data it "protects". Not a good idea!

Instead, there is a class of cryptographic functions called "one-way functions" or "hashing algorithms". These do not work like encryption: there is no way to take the output of a hashing algorithm and work back to the entered password. You cannot decrypt a hashed value. The most common of these are MD5 and SHA, but MD5 has been shown to be "broken" - under some circumstances, you can get a workable input from the output. As a result, it is no longer recommended for new applications.

In addition, it is a good idea to include the user name or ID (whichever is unique in your system) in with the password in the data to hash, because it means that two users with the same password do not generate the same hash. Otherwise, the easy way to hack passwords is just: Try "Password". Does my hash in the database match any other users? No. Ok, try "password". And so on.

So: to hold the password in your database, create a VARBINARY column, 20 bytes long, called "Password".

Then add the following code:
Hide   Shrink    Copy Code
/// <summary>
/// If the two SHA1 hashes are the same, returns true.
/// Otherwise returns false.
/// </summary>
/// <param name="p1"></param>
/// <param name="p2"></param>
/// <returns></returns>
private static bool MatchSHA1(byte[] p1, byte[] p2)
    {
    bool result = false;
    if (p1 != null && p2 != null)
        {
        if (p1.Length == p2.Length)
            {
            result = true;
            for (int i = 0; i < p1.Length; i++)
                {
                if (p1[i] != p2[i])
                    {
                    result = false;
                    break;
                    }
                }
            }
        }
    return result;
    }
/// <summary>
/// Returns the SHA1 hash of the combined userID and password.
/// </summary>
/// <param name="userID"></param>
/// <param name="password"></param>
/// <returns></returns>
private static byte[] GetSHA1(string userID, string password)
    {
    SHA1CryptoServiceProvider sha = new SHA1CryptoServiceProvider();
    return sha.ComputeHash(System.Text.Encoding.ASCII.GetBytes(userID + password));
    }

To test it:
Hide   Copy Code
private static void RunTest()
    {
    string userId = "OriginalGriff";
    string password = "NotMyPassword";
    string enteredPassword = "NotMyPassword";
    string notPassword = "notMyPassword";
    byte[] hashedPassword = GetSHA1(userId, password);
    if (MatchSHA1(hashedPassword, GetSHA1(userId, enteredPassword)))
        {
        Console.WriteLine("Log him in!");
        }
    else
        {
        Console.WriteLine("Don't log him in!");
        }
    if (MatchSHA1(hashedPassword, GetSHA1(userId, notPassword)))
        {
        Console.WriteLine("Will not happen!");
        }
    else
        {
        Console.WriteLine("Don't log him in!");
        }
    }

You should get the output:
Hide   Copy Code
Log him in!
Don't log him in!

All you have to do now is write the hashed value into your database, and read it out for comparison when you want to log the user in.
        */
    }
}