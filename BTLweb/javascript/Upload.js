let btnSearch = document.querySelector("#search");
let txtSearch = document.querySelector("#txtInput");

btnSearch.addEventListener("click", function () {
    if (txtSearch.value.trim() != "") {
        var timkiem = "Trangtimkiem.aspx?search=" + txtSearch.value.trim();
        window.location.href = timkiem;
        console.log("a");
    }
});