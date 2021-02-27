var btn = document.getElementById("btn");
var animalInfo = document.getElementById("animal-info");
var pageCounter = 1;
btn.addEventListener("click", function () {
    var ajax = new XMLHttpRequest();
    ajax.open('GET', '/...');
    ajax.onload = function () {
        if (ajax.status>=200 && ajax.status<400){
            var outData = JSON.parse(ajax.responseText);
            Render(outData);
        }
        else {
            console.log("Server return an error");
        }

    };
    ajax.send();
    pageCounter++;
    if (pageCounter>3)
        btn.hidden = true;
    ajax.onerror = function (){
        console.log("Connection error");
    }
})

//
function Render(data) {
    var htmlString = "";
    for (i=0 ; i<data.length;i++){
        htmlString += "<p>"+ data[i].name +" is a " + data[i].species+ "that like : ";
        for (ii=0; ii<data[i].foods.likes.length;ii++){
            htmlString += data[i].foods.likes[ii] + ", ";
        }
        htmlString += "</p>";
    }
    animalInfo.insertAdjacentHTML('beforeend', htmlString);
}

