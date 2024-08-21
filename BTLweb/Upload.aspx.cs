using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace BTLweb
{
    public partial class Upload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)
            {
                HttpPostedFile file = Request.Files["SelectFile"];
                string upload = Request.Form["SelectFile"];
                if (file.ContentLength == 0) {
                Response.Write("Lỗi file");
                }
                else
                {
                    string Diachifile = Server.MapPath("~/App_Data");
                    if (!Directory.Exists(Diachifile))
                    {
                        Directory.CreateDirectory(Diachifile);
                    }
                    string fileName = Path.GetFileName(file.FileName);
                    string filePath = Path.Combine(Diachifile, fileName);

                    string fileExtension=Path.GetExtension(fileName).ToLower();
                    if (fileExtension == "mp4")
                    {
                        file.SaveAs(filePath);
                        Response.Write("thanh cong");
                    }
                }
            }

        }
    }
}