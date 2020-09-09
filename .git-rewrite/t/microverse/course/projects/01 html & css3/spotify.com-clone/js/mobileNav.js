const mqNav = window.matchMedia("(max-width:992px)");
function mobNavShow() {
  var x = document.getElementById("mobNav");
  var y = document.getElementById("times")
  var z = document.getElementById("bars")
  if (mqNav.matches && x.style.right === "-407px") {
    x.style.right = "0";
    x.style.transition = "ease 0.3s";
    z.style.display = "none";
    z.style.transition = "0.2s ease";
    y.style.display = "block";
    y.style.transition = "0.3s ease";
  } else {
    x.style.right = "-407px";
    z.style.display = "block";
    y.style.display = "none";

  }
}  