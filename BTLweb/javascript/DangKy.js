function checkDangKy() {
    var name = document.getElementById("hoten").value.trim();
    var phone = document.getElementById("sdt").value.trim();
    var password = document.getElementById("matkhau").value.trim();
    var cfPassword = document.getElementById("matkhaunhaplai").value.trim();
    var Mst = document.getElementById("mst").value.trim();
    var check = true;

    if (name == "") {
        alert("Fill name!");
        document.getElementById("hoten").focus();
        check = false;
    }
    else {
        if (phone == "") {
            alert("Fill phone number!");
            document.getElementById("sdt").focus();
            check = false;
        }
        else {
            if (phone.length != 10) {
                alert("Wrong phone number!");
                document.getElementById("sdt").value = "";
                document.getElementById("sdt").focus();
                check = false;
            }
            else {
                if (password == "") {
                    alert("Fill password!");
                    document.getElementById("matkhau").focus();
                    check = false;
                }
                else 
                    if (password.length < 6) {
                        alert("Length of password must be from 6!")
                        document.getElementById("matkhau").value = "";
                        document.getElementById("matkhau").focus();
                        check = false;
                    }
                    else if (!/^[1-9]\d{7,}$/.test(Mst)) {
                        alert("MST không thỏa mãn!");
                        document.getElementById("mst").value = "";
                        document.getElementById("mst").focus();
                        check = false;
                    }
                
                //else {
                //    // Check for at least one uppercase letter, one lowercase letter, and one digit
                //        if (!/(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{6,}/.test(password)) {
                //            alert("Mật khẩu phải gồm chữ hoa chữ thường số và có ít nhất 6 kí tự");
                //            document.getElementById("matkhau").value = "";
                //            document.getElementById("matkhau").focus();
                //            check = false;
                //        }
                
                    else { 
                        if (cfPassword == "") {
                            alert("Confirm password!") 
                            document.getElementById("matkhaunhaplai").focus();
                            check = false;
                        }
                        else {
                            if (cfPassword != password) {
                                alert("Password doesn't match!")
                                document.getElementById("matkhaunhaplai").value = "";
                                document.getElementById("matkhaunhaplai").focus();
                                check = false;
                            }
                        

                    }
                }
            }
        }
    }
    return check;
}