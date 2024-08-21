let btnSearch = document.querySelector("#search");
let txtSearch = document.querySelector("#txtInput");

btnSearch.addEventListener("click", function () {
    if (txtSearch.value.trim() != "") {
        var timkiem = "Trangtimkiem.aspx?search=" + txtSearch.value.trim();
        window.location.href = timkiem;
        console.log("a");
    }
});

document.addEventListener('DOMContentLoaded', function () {
    var followButton = document.getElementById('followButton');

    // Assuming you have a function to check if the user is following
    var isFollowing = isUserFollowing('<%= sM.MemberName %>');

    // Render the initial button text
    renderButtonText();

    // Attach click event to handle follow actions
    followButton.addEventListener('click', function () {
        // Assuming you have a function to toggle the follow state on the server
        toggleFollowState('<%= sM.MemberName %>', function (newFollowState) {
            // Update the follow state
            isFollowing = newFollowState;

            // Render the updated button text
            renderButtonText();
        });
    });

    // Function to check if the user is following (replace with your logic)
    function isUserFollowing(targetUsername) {
        return followedUsers && followedUsers.indexOf(targetUsername) !== -1;
    }

    // Function to toggle the follow state on the server (replace with your logic)
    function toggleFollowState(targetUsername, callback) {
        // Implement logic to toggle follow state on the server
        // For example, use AJAX to make a request to a server endpoint

        // Simulate asynchronous behavior (replace with actual AJAX call)
        setTimeout(function () {
            callback(!isUserFollowing(targetUsername)); // Toggle the follow state
        }, 500);
    }

    // Function to render the button text based on the current follow state
    function renderButtonText() {
        followButton.innerHTML = isFollowing ? 'Followed' : 'Follow';
    }
});





//function toggleFollow() {
//    var followButton = document.getElementById('followButton');
//    var button = followButton.querySelector('button');

//    // Toggle text content
//    if (button.textContent === 'Follow') {
//        button.textContent = 'Followed';
//    } else {
//        button.textContent = 'Follow';
//    }
//}

//var btnheart = document.getElementById('buttonImage');
//var isRed = false;
//var likeCount = 0;
//function toggleHeartColor() {
//    isRed = !isRed;

//    if (isRed) {
//        btnheart.classList.add('heart-red');
//        likeCount++;
//    } else {
//        btnheart.classList.remove('heart-red');
//        likeCount = Math.max(0, likeCount - 1); // Ensure the count doesn't go below 0
//    }
//    document.getElementById('likeCount').textContent = likeCount;
//}
//document.addEventListener('DOMContentLoaded', function () {
//    // Function to hide the comment form
//    function hideCommentForm() {
//        var commentForm = document.querySelector('.binhluan');
//        commentForm.style.display = 'none';
//        // Save the state to local storage
//        localStorage.setItem('commentFormVisible', 'false');
//    }

//    // Function to show or hide the comment form based on the stored state
//    function toggleCommentForm() {
//        var commentForm = document.querySelector('.binhluan');
//        var commentFormVisible = localStorage.getItem('commentFormVisible');
//        if (commentFormVisible === 'true') {
//            commentForm.style.display = 'block';
//        } else {
//            commentForm.style.display = 'none';
//        }
//    }

//    // Event listener for the comment button
//    var commentButton = document.querySelector('.buttoncamxuc1 .camxuc1');
//    commentButton.addEventListener('click', function () {
//        var commentForm = document.querySelector('.binhluan');
//        if (commentForm.style.display === 'none' || commentForm.style.display === '') {
//            commentForm.style.display = 'block';
//            // Save the state to local storage
//            localStorage.setItem('commentFormVisible', 'true');
//        } else {
//            commentForm.style.display = 'none';
//            // Save the state to local storage
//            localStorage.setItem('commentFormVisible', 'false');
//        }
//    });

//    // Initial setup on page load
//    hideCommentForm(); // Hide the comment form by default
//    toggleCommentForm(); // Toggle the comment form based on the stored state
//});



// trống textbox tìm kiếm nhg vẫn tìm thì hiện hông báo (viết thêm onclick=per... vào button tìm kiếm)
//function performSearch() {
//    var searchInput = document.getElementById('txtInput').value;

//    if (searchInput.trim() === '') {
//        alert('Please enter a search term.');
//    } else {
//        // Perform the actual search or other actions here
//        alert('Searching for: ' + searchInput);
//    }
//}

