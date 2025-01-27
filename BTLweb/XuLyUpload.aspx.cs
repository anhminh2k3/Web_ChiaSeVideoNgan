﻿using BTLweb;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLweb
{
    public partial class XuLyUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpPostedFile file = Request.Files["file-video"];
            string txtTitle = Request.Form["txtTitle"];
            Member sM = Session[Global.MEMBER] as Member;

            var dlstVideo = Application[Global.VIDEO_LIST] as List<Video>;
            if (file != null && file.ContentLength > 0)
            {
                string a = "1";
                string fileNameWithoutExtension = Path.GetFileNameWithoutExtension(file.FileName);
                string fileExtension = Path.GetExtension(file.FileName);
                string filePath = Server.MapPath("~/img") + "\\" + fileNameWithoutExtension + fileExtension;
                while (File.Exists(filePath))
                {
                    fileNameWithoutExtension = fileNameWithoutExtension + a;
                    filePath = Server.MapPath("~/img") + "\\" + fileNameWithoutExtension + fileExtension;

                }
                file.SaveAs(filePath);
                dlstVideo.Insert(0, new Video { ID = (dlstVideo.Count + 1).ToString(), NguoiDang = sM.MemberName, Title = txtTitle, VideoUrl = "../img/" + fileNameWithoutExtension + fileExtension });
            }
            Response.Redirect("TrangChu.aspx");

        }
    }
}