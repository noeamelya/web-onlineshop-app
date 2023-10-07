// save reference to important DOM elements
// var timeDisplayEl = $('#time-display');
// var projectDisplayEl = $('#project-display');
var productModalEl = $('#product-modal');
var productFormEl = $('#product-form');
var productNameInputEl = $('#product-name-input');
var productTypeInputEl = $('#product-type-input');
var productDesNameInputEl = $('#des-name-input')
var priceRateInputEl = $('#price-rate-input');
var addDateInputEl = $('#add-date-input');

// handle printing project data to the page
function printProductData(name, type, description, price, Date) {
    var productRowEl = $('<tr>');
  
    var productNameTdEl = $('<td>').addClass('p-2').text(name);
  
    var productTypeTdEl = $('<td>').addClass('p-2').text(type);

    var productDesTdEl = $ ('<td>').addClass('p-2').text(description);
  
    var rateTdEl = $('<td>').addClass('p-2').text(price);
  
    var DateTdEl = $('<td>').addClass('p-2').text(Date);
  
    var daysToDate = dayjs(date).diff(dayjs(), 'days');
  
    var daysLeftTdEl = $('<td>').addClass('p-2').text(daysToDate);
 
  
    var deleteProjectBtn = $('<td>')
      .addClass('p-2 delete-project-btn text-center')
      .text('X');
  
    // By listing each `<td>` variable as an argument, each one will be appended in that order
    productRowEl.append(
    productNameTdEl,
    productTypeTdEl,
    productDesTdEl,
    rateTdEl,
    DateTdEl,
    daysLeftTdEl,
    deleteProjectBtn
    );
    // projectDisplayEl.append(projectRowEl);
    projectModalEl.modal('hide');
  }
  
  function handleDeleteProject(event) {
    console.log(event.target);
    var btnClicked = $(event.target);
    btnClicked.parent('tr').remove();
  }
  
  // handle project form submission
  function handleProjectFormSubmit(event) {
    event.preventDefault();
  
    var productName = productNameInputEl.val().trim();
    var productType = productTypeInputEl.val().trim();
    var productDes= productDesNameInputEl.val().trim();
    var PriceRate = priceRateInputEl.val().trim();
    var addDate = addDateInputEl.val().trim();
  
    printProductData(productName, productType, productDes, PriceRate, addDate);
  
    productFormEl[0].reset();
  }
  
  productFormEl.on('submit', handleProjectFormSubmit);
//   projectDisplayEl.on('click', '.delete-project-btn', handleDeleteProject);
  dueDateInputEl.datepicker({ minDate: 1, dateFormat: 'yy/mm/dd' });
  
  
  