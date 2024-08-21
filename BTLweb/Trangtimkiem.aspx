<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangtimkiem.aspx.cs" Inherits="BTLweb.trangTImKiem" %>
<%@ Import Namespace="BTLweb"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/Trangtimkiem.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%
                BTLweb.Member sM = Session[Global.MEMBER] as Member;
                var lstVd = Application[Global.VIDEO_LIST] as List<Video>;
                var lstMem = Application[Global.MEMBER_LIST] as List<Member>;
            %>
            <header class="header">
                <div class="name-web">
                    <p class="Tiktek">Tiktek</p>
                </div>
    <div class="search-bar">
        <input type="text" placeholder="Search Here What You Need..." id="txtInput"/>
        <span class="vertical-line"></span>
<button type="button" id="search" name="btnSearch">
            <img src="img/searchicon.png" alt="Search Icon" class="icon-search" />
        </button>    </div>
    <div class="actions">
        <div class="profile-dropdown">
            <button class="profile-button"><%=sM.MemberName %></button>
            <div class="dropdown-content">
                <a href="Upload.aspx?user=<%=sM.MemberName %>" class="upload-button">Upload</a>
                <a href="Trangcanhan.aspx?user=<%=sM.MemberName %>">Xem hồ sơ</a>
                <a href="Dangnhap.aspx">Đăng nhập</a>
                    <a href="Dangky.aspx">Đăng ký</a>
                    <a href="Dangnhap.aspx">Đăng xuất</a>
                </div>  
         </div>
    </div>
</header>
<div class="body-tiktek">
    <div class="sidebar-left">
        <div class="Main">
            <img src="img/th.jpg"/>
            <a class="Main-title" href="Trangchu.aspx">Trang chủ</a>
        </div>
        <div class="Profile">
            <img src="img/download.jpg"/>
                    <a class="Profile-title" href="Trangcanhan.aspx?user=<%=sM.MemberName %>">Trang cá nhân</a>
        </div>
        <div>
            <p class=""></p>
        </div>
        <div class="follow">
            <p class="follow-title">Following accounts</p>
            <div class="Follow1">
                <img src="img/meo.jpg"/>
                <div class="Title">
                    <p class="Follow-title" href="#">Mèo béo</p>
                    <p class="Follow-subtitle">Mèo béo</p>
                </div>
            </div>
            <div class="Follow1">
                <img src="img/meo.jpg"/>
                <div class="Title">
                    <p class="Follow-title" href="#">Mèo béo</p>
                    <p class="Follow-subtitle">Mèo béo</p>
                </div>
            </div>
            <p class="xemthem">Xem thêm</p>
        </div>
    </div>
    <div class="maincontent">
        <p><strong>Tài Khoản</strong></p>
        <div class="taikhoanfind">
        <% 
            var MemberTim = lstMem.FindAll(p => p.MemberName.IndexOf(Request.QueryString["search"], StringComparison.CurrentCultureIgnoreCase) >= 0) as List<Member>;
            if(MemberTim.Count==0)
            {%>
                 <p>Không có người dùng nào tương tự <b><%=Request.QueryString["search"] %></b></p>
              <%}
                   else
                   {
                       foreach(var m in MemberTim)
                {
                    %>
            <div>

           
                          <div class="account">
                              <div>
                                  <a ><img src="<%=m.UrlImg %>" class="chanel-img" alt="avatar người dùng"/></a>
                             <%--<a href="Trangcanhan.aspx?user="<%=m.MemberName %> ><p class="userMain"><%=m.MemberName%></p></a>--%>
                             <a class="userMain" href="TrangCaNhan.aspx?user=<%=m.MemberName%>"><%=m.MemberName%></a>

                              </div>
                             
                              <div class="decrip">
                                <strong>"10M"
                                    <span>Follower</span>
                                </strong>
                            </div>
                          </div>
                 </div>
           <% }
                   }
                %>
            </div>
      
        <p class="video-title"><strong>Video</strong></p>
    <div class="videofind">
        
    

<%
    var findVideo = lstVd.FindAll(p => p.Title.IndexOf(Request.QueryString["search"], StringComparison.CurrentCultureIgnoreCase) >= 0) as List<Video>;
    if (findVideo.Count == 0)
    {%>
                        <p>Không có video nào tương tự <b><%=Request.QueryString["search"] %></b></p>

            <%}
    %>
<%
    else {
       foreach (var p in findVideo)// duyet tung phan tu de hien hang hoa 
    {
     %>
        <div class="grid-video">
            <div class="girdview_items">
                <video width="240" height="290" controls="controls">
                    <source src="<%=p.VideoUrl%>" type="video/mp4" aria-controls="controls"/>
                    Your browser does not support the video tag.
                </video>
                <div class="decripstion">
                    <div class="title">
                        <p><%=p.Title%></p>
                    </div>
                    <div class="avt">
                        <div class="avt-title">
                            <a><img src="/img/meo.jpg" alt="avatar Người dùng"/></a>
                            <a class="user" href="TrangCaNhan.aspx?user=<%=p.NguoiDang %>"><%=p.NguoiDang %></a>

                        </div>
                        <div class="view-title">
                            <strong><input type="text" hidden="hidden" class="view"/>10K</strong> 
                        </div>
                        
                    </div>
                    
                </div>
            </div>
          </div>
       <% }
            } %>
</div>
    </div>
        </div>
    </form>
    <script src="javascript/TrangTimKiem.js"></script>
</body>
</html>
