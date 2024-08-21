﻿let btnSearch = document.querySelector("#search");
let txtSearch = document.querySelector("#txtInput");

btnSearch.addEventListener("click", function () {
    if (txtSearch.value.trim() != "") {
        var timkiem = "Trangtimkiem.aspx?search=" + txtSearch.value.trim();
        window.location.href = timkiem;
        console.log("a");
    }
});

let txtTenDangNhap = document.querySelector("#txtTenDangNhap");
let txtMatKhauCu = document.querySelector("#txtMatKhauCu");
let txtMatKhauMoi = document.querySelector("#txtMatKhauMoi");
let txtNhapLaiMatKhauMoi = document.querySelector("#txtNhapLaiMatKhauMoi");

let LoiRongTenDangNhap = document.querySelector("#LoiRongTenDangNhap");
let LoiRongMatKhauCu = document.querySelector("#LoiRongMatKhauCu");
let LoiLapLaiMatKhau = document.querySelector("#LoiLapLaiMatKhau");
let LoiSaiTaiKhoan = document.querySelector("#LoiSaiTaiKhoan");

let btnXacNhanSuaHoSo = document.querySelector("#btnXacNhanSuaHoSo");

btnXacNhanSuaHoSo.addEventListener("click", function () {
    if (txtTenDangNhap.value.trim() == "") {
        event.preventDefault();
        LoiRongTenDangNhap.style.display = "block";
    }
    if (txtMatKhauCu.value.trim() == "") {
        event.preventDefault();
        LoiRongMatKhauCu.style.display = "block";
    }
    if (txtTenDangNhap.value.trim() != "" && txtMatKhauCu.value.trim() != "" && txtMatKhauMoi.value.trim() != txtNhapLaiMatKhauMoi.value.trim()) {
        event.preventDefault();
        LoiLapLaiMatKhau.style.display = "block";
    }
})

txtTenDangNhap.addEventListener("input", function () {
    LoiRongTenDangNhap.style.display = "none";
    LoiSaiTaiKhoan.innerText = "";
})

txtTenDangNhap.addEventListener("input", function () {
    LoiRongTenDangNhap.style.display = "none";
    LoiSaiTaiKhoan.innerText = "";
})

txtMatKhauCu.addEventListener("input", function () {
    LoiLapLaiMatKhau.style.display = "none";
    LoiSaiTaiKhoan.innerText = "";
})

txtNhapLaiMatKhauMoi.addEventListener("input", function () {
    LoiLapLaiMatKhau.style.display = "none";
})