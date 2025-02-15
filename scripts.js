let dropdownBtn = document.getElementById("drop-text");
let list = document.getElementById("list");
let icon = document.getElementById("icon");
let span = document.getElementById("span");
let input = document.getElementById("search-input");
let listItems = document.querySelectorAll("dropdown-list-item");

// melihat dropdown list saat mengelik dropdown btn
dropdownBtn.onclick = function () {
    if(list.classList.contains('show')){
        icon.style.rotate = "-0deg";
    }else{
        icon.style.rotate = "-180deg";
    }
    list.classList.toggle("show");
};

//hide dropdown list saat kelik outside dropdown btn
window.onclick = function (e) {
    if(
        e.target.id !== "drop-text" &&
        e.target.id !== "span" &&
        e.target.id !== "icon" 
    ) {
        list.classList.remove("show");

        icon.style.rotate = "-180deg";
    }
};

for (item of listItems) {
    item.onclick = function (e) {
        span.innerText = e.target.innerText;
        if (e.target.innerText == "All") {
            input.placeholder = "Search Anything...";
        }else{
            input.placeholder = "Search in " + e.target.innerText + "...";
        }
    };
}

//membuat year
const yearSelect = document.getElementById("year");

function populaterYears() {
    let year = new Date().getFullYear();
    for(let i = 0; i < 101; i++){
        const option = document.createElement("option");
        option.textContent = year - i;
        yearSelect.appendChild(option);
    }
}

function checkFullText() {
    console.log("full text");
    window.href="detail.html";
}

populaterYears();

yearSelect.onchange = function() {
    
}