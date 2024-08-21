<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="BTLweb.Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/Dangky.css" />
    <script src="javascript/DangKy.js"></script>
    <title>DangKy</title>
</head>
<body>
    <form id="formDangKy" method="post" runat="server" onsubmit="return checkDangKy();">
        <div>
            <div class="content">
                <h3>Đăng Ký</h3>
                <div class="info">
                    <div class="HoTen">
                        <div class="text">
                            <span>Họ và tên</span>
                        </div>
                        <div class="info_inputBlock">
                            <input type="text" id="hoten" name="name" placeholder="Họ và tên" runat="server" />
                        </div>
                    </div>
                    <div class="DienThoai">
                        <div class="text">
                            <span>Số điện thoại</span>
                        </div>
                        <div class="info_inputBlock">
                            <input type="text" id="sdt" name="phone" placeholder="Số điện thoại" runat="server" />
                        </div>
                    </div>
                    <%--<div class="TK">
                        <div class="text">
                            <span>Tài khoản</span>
                        </div>
                        <div class="info_inputBlock">
                            <input type="text" id="taikhoan" name="username" placeholder="Email" runat="server" />
                        </div>
                    </div>--%>
                    <div class="MK">
                        <div class="text">
                            <span>Mật khẩu</span>
                        </div>
                        <div class="info_inputBlock">
                            <input type="password" id="matkhau" name="Pass" placeholder="Mật khẩu" runat="server" />
                        </div>
                    </div>
                    <div class="MKNL">
                        <div class="text">
                            <span>Nhập lại mật khẩu</span>
                        </div>
                        <div class="info_inputBlock">
                            <input type="password" id="matkhaunhaplai" name="rePass" placeholder="Xác nhận mật khẩu" runat="server" />
                        </div>
                    </div>
                    <div class="MST">
                        <div class="text">
                            <span>MST</span>
                        </div>
                        <div class="info_inputBlock">
                            <input type="text" id="mst" name="MST" placeholder="MST" runat="server" />
                        </div>
                    </div>
                </div>
                <div id="error" style="font-size: 1rem; color: red;" runat="server">
                    <%--error--%>
                </div>
                <div class="button">
                    <a>
                        <asp:Button ID="DangKy" runat="server" Text="DangKy" name="DangKy" OnClick="Dangky_onClick" /></a>
                </div>
                <%--<button onclick="viewProfile()">DS Save</button>--%>
                <%--<div class="button">
                    <asp:Button id="DangKy" runat="server" Text="Đăng Ký" OnClick="DangKy_Click" />
                </div>--%>
                <%--<div class="quenMK"><a href="">Quên mật khẩu ?</a></div>--%>
                <div class="DKMK">
                    <p>Đã có tài khoản đăng nhập tại <a href="Dangnhap.aspx">đây!</a></p>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
