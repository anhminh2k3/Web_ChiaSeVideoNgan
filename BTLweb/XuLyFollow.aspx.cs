using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLweb
{
    public partial class XuLyFollow : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                string action = Request.Form["action"];
                string targetUsername = Request.Form["targetUsername"];

                if (!string.IsNullOrEmpty(action) && !string.IsNullOrEmpty(targetUsername))
                {
                    List<string> followedUsers = Session["FollowedUsers"] as List<string>;

                    if (followedUsers == null)
                    {
                        followedUsers = new List<string>();
                    }

                    if (action.Equals("follow", StringComparison.OrdinalIgnoreCase))
                    {
                        // Add the target user to the list of followed users
                        followedUsers.Add(targetUsername);
                    }
                    else if (action.Equals("unfollow", StringComparison.OrdinalIgnoreCase))
                    {
                        // Remove the target user from the list of followed users
                        followedUsers.Remove(targetUsername);
                    }

                    // Update the session variable
                    Session["FollowedUsers"] = followedUsers;

                    // Optionally, you can return a response indicating success or failure.
                    Response.ContentType = "text/plain";
                    Response.Write("Success");
                    Response.End();
                }
            }
            Response.Redirect("TrangChu.aspx?loi=true");
        }
    }
}