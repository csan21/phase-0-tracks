console.log("This is running");

function clickRemove(event){
   event.target.hidden = true;
}

var photo2 = document.getElementById("photo1");
photo1.addEventListener("click", clickRemove);
