<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="BTLweb.Trangchu" %>
<%@ Import Namespace="BTLweb"%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/Trangchu.css" rel="stylesheet" />
    <link rel="stylesheet" href="icon/fontawesome-free-6.4.2-web/fontawesome-free-6.4.2-web/css/all.css"/>
    <!--<link rel="stylesheet" href="css/Trangchuresponsive.css"/-->
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header">
            <div class="name-web">
                <p class="Tiktek">Tiktek</p>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search Here What You Need..." id="txtInput"/>
                <span class="vertical-line"></span>
                <button type="button" id="search" name="btnSearch">
            <img src="img/searchicon.png" alt="Search Icon" class="icon-search" />
        </button>
            </div>
            <div class="actions">
                <div class="profile-dropdown">
                    <%
                BTLweb.Member sM = Session[Global.MEMBER] as Member;
                var lstVd = Application[Global.VIDEO_LIST] as List<BTLweb.Video>;
                var lstMem = Application[Global.MEMBER_LIST] as List<Member>;
            %>
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
                    <img src="img/th.jpg" />
                    <!-- <i class="fa-solid fa-house"></i> -->
                    <a class="Main-title" href="Trangchu.aspx">Trang chủ</a>
                </div>
                <div class="Profile">
                    <img src="img/download.jpg" />
                    <a class="Profile-title" href="Trangcanhan.aspx?user=<%=sM.MemberName %>">Trang cá nhân</a>
                </div>
                <div>
                    <p class=""></p>
                </div>
                <div class="follow">
                    <p class="follow-title">Following accounts</p>
                    <div class="Follow1">
                        <img src="img/meo.jpg" />
                        <div class="Title">
                            <p class="Follow-title" href="#">Mèo béo</p>
                            <p class="Follow-subtitle">Mèo béo</p>
                            
                        </div>
                    </div>
                    <div class="Follow1">
                        <img src="img/meo.jpg" />
                        <div class="Title">
                            <p class="Follow-title" href="#">Mèo béo</p>
                            <p class="Follow-subtitle">Mèo béo</p>
                        </div>
                    </div>
                    <p class="xemthem">Xem thêm</p>
                </div>
            </div>
            <div class="scroll">
                <div class="main-page"><!--video -->
               <%
                                foreach(var v in lstVd)
                                {
                                    foreach(var m in lstMem)
                                    {
                                        if(v.NguoiDang.Equals(m.MemberName))
                           {%>
                                <div class="chanel-title">
                                    <div class="description">
                 
                                        <div class="main-title">
                                            <div class="chanel-img">
                                                <img src="<%=m.UrlImg %>" alt="avatarUser"/>
                                            </div>
                                            <div class="noidung">
                                             <a class="chanel-name" href="TrangCaNhan.aspx?user=<%=m.MemberName%>"><%=m.MemberName%></a>
                                               <p class="video-name"><%=v.Title %></p>
                                        </div>
                                            </div>
                                       


                                        
                                                <div class="followbutton" id="followButton" style="display:none">
                                                    <button type="button" onclick="toggleFollow('<%= sM.MemberName %>')">Follow</button>
                                                   <%--<script>
                                                       var followedUsers = <%= new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(Session["FollowedUsers"]) %>;
                                                   </script>--%>
                                                    <%--<script>
                                                        var followButton = document.getElementById('followButton');
var button = followButton.querySelector('button');
    function toggleFollow(targetUsername) {
        // Assuming you're using XMLHttpRequest or Fetch API for simplicity
        fetch('XuLyFollow.aspx', {
            method: 'POST',
            body: new URLSearchParams({
                'action': isFollowing(targetUsername) ? 'unfollow' : 'follow',
                'targetUsername': targetUsername
            }),
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then(response => {
            if (response.ok) {
                // Update the UI as needed
                // For example, change the text of the button
                if (button.textContent === 'Follow') {
                    button.textcontent = 'followed';
                } else {
                    button.textcontent = 'follow';
                }
                alert('Follow action successful!');
            } else {
                
                alert('Follow action failed.');
            }
        }).catch(error => {
            console.error('Error:', error);
        });
    }

    // Function to check if the user is already followed
    function isFollowing(targetUsername) {
        var followedUsers = <%= new System.Web.Script.Serialization.JavaScriptSerializer().Serialize(Session["FollowedUsers"]) %>;
        return followedUsers && followedUsers.indexOf(targetUsername) !== -1;
    }
                                                    </script>--%>
                                                    <%--<button type="button" onclick="toggleFollow()" >Follow</button>--%>
                                                </div>   
                   
                                            </div>
                                                         <div class="video">
                                        <div>
                                            <video width="640" height="360" controls="controls">
                                                <source src="<%=v.VideoUrl %>   " type="video/mp4"/>
                                                Your browser does not support the video tag.
                                            </video>
                                        </div>
                                        <%--<div class="react-button">
                                                <div class="buttoncamxuc" >
                                                    <button class="camxuc" id="heartButton" type="button" onclick="toggleHeartColor()" >
                                                    <i class="fa-solid fa-heart fa-xl" id="buttonImage" ></i></button>
                                                </div>
                                            <span id="likeCount">0</span>

                                                <div class="buttoncamxuc">
                                                    <button class="camxuc">
                                                     <i class="fa-solid fa-comment-dots fa-xl"></i></button>
                                                </div>
                                                
                                                <div class="buttoncamxuc">
                                                    <button class="camxuc">
                                                    <i class="fa-solid fa-share fa-xl"></i></button>
                                                    <div class="dropdown-content1">
                                                        <a ><img src="/img/facebook.jpg"/>Facebook</a>
                                                        <a ><img src="/img/instagram.jpg"/>Instagram</a>
                                                        <a ><img src="/img/twitter.jpg"/>Twitter</a>
                                                     </div>
                                              </div>
                                            
                                        </div>--%>
                                           <%--<div class="binhluan">
                       <p>Bình Luận</p>
                         <iframe id="sendmessArea1" name="sendmemsArea" src="SendMSG.aspx"></iframe>
                        <iframe id="messArea1" name="memsArea" src="MessageList.aspx">
                        </iframe>--%>
                                      </div>
                                   </div>
                                          <%  break;
                                        }
                                    }
                                }
                                %>
                          
                       
                    </div>
        </div>
    </div>
    </form>
    <script src="javascript/TrangChu.js"></script>
</body>
</html>
