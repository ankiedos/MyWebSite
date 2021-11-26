---
---

var current = document.querySelector(".current")[0];
var link_txt = current.innerText;
var new_p = document.createElement("p");
new_p.innerText = link_txt;
document.insertBefore(new_p, current);
document.removeChild(current);