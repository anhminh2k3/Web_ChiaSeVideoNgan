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
    public partial class Dangky : System.Web.UI.Page
    {
        List<Member> listMember;
        protected void Page_Load(object sender, EventArgs e)
        {
            listMember = /*(List<Member>)*/Application[Global.MEMBER_LIST] as List<Member>;
        }
        protected void Dangky_onClick(object sender, EventArgs e)
        {
            string name = Request.Form["hoten"];
            string phone = Request.Form["sdt"];
            string password = Request.Form["matkhau"];
            bool check = true;

            foreach (Member member in listMember)
            {
                if (member.phone == phone)
                {
                    check = false;
                    error.InnerHtml = "ERROR: Phone number existed!";
                    break;
                }
                else
                {
                    //if (member.email == email)
                    //{
                    //    check = false;
                    //    error.InnerHtml = "ERROR: Email existed!";
                    //    break;
                    //}
                    //else
                    //{
                    error.InnerHtml = "";
                    //}
                }

            }
            //System.Diagnostics.Debug.WriteLine("Before adding member:");
            //foreach (Member member in listMember)
            //{
            //    System.Diagnostics.Debug.WriteLine($"Existing member: {member.MemberName}, {member.phone}");
            //}

            //try
            //{
                if (check)
                {
                    Member newMember = new Member(name, password, phone, "../img/meo3.jpg");

                    // Initialize the list if it's null
                    //if (listMember == null)
                    //{
                    //    listMember = new List<Member>();
                    //}

                    listMember.Add(newMember);
                    Application[Global.MEMBER_LIST] = listMember;
                //System.Diagnostics.Debug.WriteLine($"Member added: {newMember.phone}, {newMember.password}");
                Response.Redirect("DangNhap.aspx"/*, false*/);
                    //HttpContext.Current.ApplicationInstance.CompleteRequest();
                }
        //}
        //    catch (Exception ex)
        //    {
        //        System.Diagnostics.Debug.WriteLine($"Exception during registration: {ex.Message}");
        //    }



    //if (check)
    //{
    //    Member newMember = new Member(name, password, phone, "../img/meo3.jpg");
    //    listMember.Add(newMember);
    //    Application[Global.MEMBER_LIST] = listMember;
    //    System.Diagnostics.Debug.WriteLine($"Member added: {newMember.MemberName}, {newMember.phone}");
    //    Response.Redirect("DangNhap.aspx");
    //}

}
        //    protected void Page_Load(object sender, EventArgs e)
        //    {

        //    }
        //    protected void DangKy_Click(object sender, EventArgs e)
        //    {
        //        string hoTen = hoten.Value;
        //        string taiKhoan = taikhoan.Value;
        //        string matKhau = matkhau.Value;
        //        string matKhauNhapLai = matkhaunhaplai.Value;

        //        if (string.IsNullOrWhiteSpace(hoTen) || string.IsNullOrWhiteSpace(taiKhoan) || string.IsNullOrWhiteSpace(matKhau) || string.IsNullOrWhiteSpace(matKhauNhapLai))
        //        {
        //            // Kiểm tra không được để trống thông tin
        //            // Hiển thị thông báo lỗi
        //            Response.Write("<script>alert('Vui lòng điền đầy đủ thông tin.')</script>");
        //            return;
        //        }

        //        if (matKhau != matKhauNhapLai)
        //        {
        //            // Kiểm tra mật khẩu và mật khẩu nhập lại không khớp
        //            // Hiển thị thông báo lỗi
        //            Response.Write("<script>alert('Mật khẩu và xác nhận mật khẩu không khớp.')</script>");
        //            return;
        //        }

        //        // Kiểm tra tài khoản có tồn tại trong ứng dụng (Application) không
        //        if (Application["Users"] != null)
        //        {
        //            string[] users = Application["Users"].ToString().Split(',');
        //            foreach (string user in users)
        //            {
        //                string[] userData = user.Split(':');
        //                string storedTaiKhoan = userData[0];

        //                if (taiKhoan == storedTaiKhoan)
        //                {
        //                    // Tài khoản đã tồn tại
        //                    // Hiển thị thông báo lỗi
        //                    Response.Write("<script>alert('Tài khoản đã tồn tại.')</script>");
        //                    return;
        //                }
        //            }
        //        }

        //        // Đăng ký thành công, lưu thông tin tài khoản vào ứng dụng (Application)
        //        string newUser = $"{taiKhoan}:{matKhau}";
        //        Application["Users"] = Application["Users"] + "," + newUser;

        //        // Hiển thị thông báo thành công (thay thế bằng cách hiển thị thông báo thích hợp)
        //        Response.Write("<script>alert('Đăng ký thành công.')</script>");
        //    }
        //}
    }
}