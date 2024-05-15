// Add event listener to redirect to dashboard when "Dashboard" is clicked
const dashboardLink = document.querySelector("#dashboard-link");
if (dashboardLink) {
    dashboardLink.addEventListener("click", function (event) {
        event.preventDefault(); // Prevent default behavior of the link
        window.location.href = "index.html"; // Redirect to the dashboard page
    });
}

// Add event listener to redirect to repository when "Repository" is clicked
const repositoryLink = document.querySelector("#repository-link");
if (repositoryLink) {
    repositoryLink.addEventListener("click", function (event) {
        event.preventDefault(); // Prevent default behavior of the link
        window.location.href = "repository.html"; // Redirect to the repository page
    });
}

// Sidebar toggle script (existing script)
const sidebarToggle = document.querySelector("#sidebar-toggle");
if (sidebarToggle) {
    sidebarToggle.addEventListener("click", function () {
        document.querySelector("#sidebar").classList.toggle("collapsed");
    });
}





// document.querySelector(".theme-toggle").addEventListener("click",() => {
//     toggleLocalStorage();
//     toggleRootClass();
// });

// function toggleRootClass(){
//     const current = document.documentElement.getAttribute('data-bs-theme');
//     const inverted = current == 'dark' ? 'light' : 'dark';
//     document.documentElement.setAttribute('data-bs-theme',inverted);
// }

// function toggleLocalStorage(){
//     if(isLight()){
//         localStorage.removeItem("light");
//     }else{
//         localStorage.setItem("light","set");
//     }
// }

// function isLight(){
//     return localStorage.getItem("light");
// }

// if(isLight()){
//     toggleRootClass();
// }
