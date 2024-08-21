using BTLweb;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BTLweb
{
    public class Global : System.Web.HttpApplication
    {
        public const string MEMBER_LIST = "MenberList";
        public const string MEMBER = "Member";

        public const string VIDEO_LIST = "VideoList";
        protected void Application_Start(object sender, EventArgs e)
        {
            Application[MEMBER_LIST] = createAListOfMember();

            Application[VIDEO_LIST] = createAListOfVideo();
        }

        private object createAListOfVideo()
        {
            return new List<Video>()
            {
                new Video{ID = "1",VideoUrl ="../img/AIDS.mp4", Title="ConMeo", NguoiDang="user1"}
                , new Video{ID="2", VideoUrl ="../img/khoga.mp4", Title="Cận Cảnh Chế Biến Khô Bò", NguoiDang="user2"}
                , new Video{ID="3", VideoUrl ="../img/AIDS.mp4", Title="Camping in car", NguoiDang="user2"}
                , new Video{ID="4", VideoUrl ="../img/AIDS.mp4", Title="U là trời", NguoiDang="user1"}
                , new Video{ID="5", VideoUrl ="../img/AIDS.mp4", Title="U cà", NguoiDang="user2"}
                //, new Video{ID="6", VideoUrl ="../img/AIDS.mp4", Title="Xương sống kêu rộp rộp", NguoiDang="user1"}
                //, new Video{ID="7", VideoUrl ="../img/AIDS.mp4", Title="Thắng Idol", NguoiDang="user2"}
            };
        }



        protected void Session_Start(object sender, EventArgs e)
        {
            Session[MEMBER] = new  Member();

        }
        private List<Member> createAListOfMember()
        {
            return new List<Member>()
            {
                new Member{MemberName="user1", password="pass1", phone="0987654321",UrlImg="../img/user1.jpg" }
                ,new Member{MemberName="user2", password="pass2", phone="0997654321",UrlImg="../img/meo2.jpg"}
            };
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}