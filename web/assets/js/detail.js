(function ($) {
<script>
        
         function display() {
        var modal = document.getElementById("donate-modal");
        var closeButton = document
        .getElementsByClassName("donate-modal-close")[0];
        modal.style.display = "block";
        closeButton.onclick = function() {
        modal.style.display = "none";
        }

window.onclick = function(event) {
if (event.target == modal) {
modal.style.display = "none";
        }
}
            }

            var atmButton = document.querySelector(".js-ATM");
            atmButton.addEventListener("click", display);
</script>
        <script>
function countdown() {
        var destination = new Date("2023-03-10 12:00:00").getTime();
        var now = new Date().getTime();
        var distance = now - destination;
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
        if (days < 0) {
days = - days;
        var sign = "-";
}
if (hours < 0) {
hours = - hours;
        var sign = "-";
}
if (minutes < 0) {
minutes = - minutes;
        var sign = "-";
}
if (seconds < 0) {
seconds = - seconds;
        var sign = "-";
}
document.getElementById("countdown").innerHTML = days + " ngày, "
        + hours + " giờ, " + minutes + " phút, " + seconds
        + " giây";
}

setInterval(countdown, 1000);

function getCurrentTime() {
        var now = new Date();
        var date = now.getDate();
        var month = now.getMonth() + 1;
        var year = now.getFullYear();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var seconds = now.getSeconds();
        document.getElementById("current-time").innerHTML = year + "-"
        + month + "-" + date + " " + hours + ":" + minutes + ":"
        + seconds;
}

setInterval(getCurrentTime, 1000);
</script>

        <script>
function showTopUp() {
        var modal1 = document.getElementById("modal-top-up");
        var closeButton1 = document
        .getElementsByClassName("modal-close-top-up")[0];
        modal1.style.display = "flex";
        closeButton1.onclick = function() {
        modal1.style.display = "none";
                }

window.onclick = function(event) {
if (event.target == modal1) {
modal1.style.display = "none";
        }
}
}

var accountTopupBtn = document.querySelector(".js-account-topup");
accountTopupBtn.addEventListener("click", showTopUp);
</script>
        <script>
function scrollToComment() {
        var commentInput = document.querySelector("#comment-input");
        commentInput.scrollIntoView({
        behavior : "smooth"
                });
}
</script>
})(jQuery);