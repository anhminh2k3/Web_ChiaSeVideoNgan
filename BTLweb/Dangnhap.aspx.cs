using BTLweb;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BTLweb
{
    public partial class Dangnhap : System.Web.UI.Page
    {
        List<Member> listMember;
        protected void Page_Load(object sender, EventArgs e)
        {
            //listMember = /*(List<Member>)*/Application[Global.MEMBER_LIST] as List<Member>;
            listMember = Application[Global.MEMBER_LIST] as List<Member>;
            //if (listMember == null)
            //{
            //    listMember = new List<Member>();
            //    Application[Global.MEMBER_LIST] = listMember;
            //}

            //System.Diagnostics.Debug.WriteLine("Members in Application state:");
            //foreach (Member member in listMember)
            //{
            //    System.Diagnostics.Debug.WriteLine($"Existing member: {member.phone}, {member.password}");
            //}

        }
        protected void DangNhap_onClick(object sender, EventArgs e)
        {
            //var listMember = Application[Global.MEMBER_LIST] as List<Member>;

            //string user = Request.Form[""];
            string phone = Request.Form["sdt"];
            string pass = Request.Form["matkhau"];
            //string userName = "";
            
            if (IsPostBack)
            {
                foreach (Member member in listMember)
                {
                    if (member.phone == phone && member.password == pass)

                    {
                        //Session["sdt"] = phone;
                        //Session["hoten"] = userName;
                        Session[Global.MEMBER] = member;
                        Response.Redirect("Trangchu.aspx");
                    }
                    else
                    {
                        error.InnerHtml = "ERROR: Wrong phone number or password!";
                    }
                }
            }
        }







        //protected void DangNhap_onClick(object sender, EventArgs e)
        //{
        //    var listMember = Application[Global.MEMBER_LIST] as List<Member>;

        //    string phone = Request.Form["sdt"];
        //    string pass = Request.Form["matkhau"];
        //    int maxLoginAttempts = 3; // Số lần đăng nhập sai tối đa cho phép
        //    bool isLoginSuccessful = false;

        //    // Kiểm tra xem có biến Session được khởi tạo chưa
        //    if (Session["LoginAttempts"] == null)
        //    {
        //        Session["LoginAttempts"] = 0; // Khởi tạo biến đếm lần đăng nhập sai
        //    }

        //    // Lấy giá trị hiện tại của biến đếm
        //    int loginAttempts = Convert.ToInt32(Session["LoginAttempts"]);

        //    if (loginAttempts >= maxLoginAttempts)
        //    {
        //        // Nếu đã đăng nhập sai quá số lần cho phép, thông báo lỗi và không tiếp tục kiểm tra
        //        error.InnerHtml = "Tài khoản của bạn đã bị khóa. Vui lòng liên hệ với quản trị viên.";
        //    }
        //    else
        //    {
        //        foreach (Member member in listMember)
        //        {
        //            if (member.phone == phone && member.password == pass)
        //            {
        //                Session[Global.MEMBER] = member;
        //                isLoginSuccessful = true;
        //                // Đặt lại biến đếm nếu đăng nhập thành công
        //                Session["LoginAttempts"] = 0;
        //                break;
        //            }
        //        }

        //        if (isLoginSuccessful)
        //        {
        //            Response.Redirect("Trangchu.aspx");
        //        }
        //        else
        //        {
        //            // Tăng biến đếm nếu đăng nhập sai
        //            Session["LoginAttempts"] = loginAttempts + 1;
        //            error.InnerHtml = "ERROR: Wrong phone number or password!";
        //        }
        //    }
        //}

    }
}