<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="BTLweb.Upload" %>
<%@ Import Namespace="BTLweb"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/Upload.css"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post" action="XuLyUpLoad.aspx" enctype="multipart/form-data">
         <%
                BTLweb.Member sM = Session[Global.MEMBER] as Member;
                var lstVd = Application[Global.VIDEO_LIST] as List<Video>;
                var lstMem = Application[Global.MEMBER_LIST] as List<Member>;
            %>
        <div>
           <header class="header">
               <div class="name-web">
                <p class="Tiktek">Tiktek</p>
               </div>
               <div class="search-bar">
 <input type="text" placeholder="Search Here What You Need..." id="txtInput" />
        <span class="vertical-line"></span>
        <a id="search" name="btnSearch">
            <img src="img/searchicon.png" alt="Search Icon" class="icon-search" />
        </a>
               </div>
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
                        <a class="Main-title" href="Trangchu.aspx"></>Trang chủ</a>
                    </div>
                    <div class="Profile">
                        <img src="img/download.jpg"/>
                   <a class="Profile-title" href="Trangcanhan.aspx?user=<%=sM.MemberName %>">Trang cá nhân</a>
                    </div>
                </div>
                <div class="right-side">
                    <div class="title">
                            <p class="Upload-video-title">Upload Video</p>
                        <p class="Post-video-title">Post a video to your account</p>
                    </div>
                    <div class="upload-main">
                        <div class="left-upload">
                            <div class="left-upload-title">
                                <p>Select video to upload</p>
                            </div>
                            <div class="left-upload-subtitle">
                                <p>Support mp4, avi, webm, 
                                    and mov video formats
                                    720x1280 resolution or higher
                                    Up to 10 minutes
                                    Less than 10 GB
                                    Less than 30 videos</p>
                            </div>
                            <div class="select-file-button" name="SelectFile">
                                <input type="file" name="file-video"  />
                            </div>
                        </div>
                        <div class="right-upload">
                            <div class="Caption">
                                <p>Caption</p>
                                <input type="text" name="txtTitle" />
                            </div>
                            <div class="Description">
                                <p>Description</p>
                                <input type="text" name="description"/>
                            </div>
                            <div class="button">
                                <div class="Discard">
                                    <button>Discard</button>
                                </div>
                                <div class="Post">
                                    <input type="submit" name="postbutton" />
                                </div>
                            </div>  
                        </div>
                    </div>
                </div>
</div>
        </div>
    </form>
    <script src="javascript/Upload.js"></script>
</body>
</html>
