function checkDangNhap() {
    var phone = document.getElementById("sdt").value.trim();
    var pass = document.getElementById("matkhau").value.trim();
    var error = document.getElementById("error");
    var check = true;

    if (phone == "") {
        error.innerHTML = "Fill your phone number!"
        phone.focus();
        check = false;
    }
    if (pass == "") {
        error.innerHTML = "Fill your password!"
        pass.focus();
        check = false;
    }
    
    
    return check;
}
// Function to simulate login
//function login() {
//    var username = prompt("Enter your username:");

//    // Check if username is entered
//    if (username) {
//        // Save the login event to Local Storage
//        var loginEvent = {
//            username: username,
//            timestamp: new Date().toLocaleString()
//        };

//        // Retrieve existing login events from Local Storage
//        var loginEvents = JSON.parse(localStorage.getItem('loginEvents')) || [];
//        loginEvents.push(loginEvent);

//        // Save updated login events to Local Storage
//        localStorage.setItem('loginEvents', JSON.stringify(loginEvents));

//        alert("Login successful!");
//    } else {
//        alert("Please enter a username.");
//    }
//}

// Function to view profile and display login events
//function viewProfile() {
//    // Retrieve login events from Local Storage
//    var loginEvents = JSON.parse(localStorage.getItem('loginEvents')) || [];

//    // Display login events
//    if (loginEvents.length > 0) {
//        console.log("Login Events:");
//        loginEvents.forEach(function (event) {
//            console.log(event.username + " logged in at " + event.timestamp);
//        });
//    } else {
//        console.log("No login events.");
//    }
//}
