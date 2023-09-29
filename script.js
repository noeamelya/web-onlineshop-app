var formSelect = document.querySelector("#form-select");
var selectedCategory = document.querySelector("#selected-category");
var displaySelling = document.querySelector("#display-selling");
var categoryProduct= [];

// Display function for the dashboard

function dashboard(event) {
    event.preventDefault();
    var formSelect = selectedCategory.value;
    displaySelling(formSelect);
}
function displaySelling(formSelect) {
   
            return;
        }


displaySelling();

searchForm.addEventListener("submit", dashboard); 

function displaySelling() {
    localStorage.clear();
    displaySelling.innerHTML = "";
    searchHistory = [];
}
clearBtn.addEventListener("click", function () {
    displaySelling();
});