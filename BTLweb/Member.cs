using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTLweb
{
    public class Member
    {
        public Member()
        {
        }

        public Member(string MemberName, string password, string phone, string UrlImg)
        {
            this.MemberName = MemberName;
            this.password = password;
            this.phone = phone;
            this.UrlImg = UrlImg;
        }

        /// <summary>
        /// Login name
        /// </summary>
        public string MemberName { get; set; }
        public string phone { get; set; }

        /// <summary>
        /// Password name
        /// </summary>
        public string password { get; set; }

        public string UrlImg { get; set; }
    }
}