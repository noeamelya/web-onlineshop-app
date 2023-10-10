// save reference to important DOM elemduct
var productDisplayEl = $('#product-display');
var productModalEl = $('#product-modal');
var productFormEl = $('#product-form');
var productNameInputEl = $('#product-name-input');
var productCategoryEl = $('#product-category');
var priceRateInputEl = $('#price-rate-input');
var DateInputEl = $('#date-input');
var productImageEl = $ ('#file-product-upload');
var productDescriptionEl = $ ('#product-description');




// handle printing project data to the page
function printProductData(image, name, category, price, date, description) {
  var productRowEl = $('<tr>');

  var productImageTdEl = $('<td>').addClass('p-2').text(image);

  var productNameTdEl = $('<td>').addClass('p-2').text(name);

  var productCategoryTdEl = $('<td>').addClass('p-2').text(category);

  var priceTdEl = $('<td>').addClass('p-2').text(price);

  var DateTdEl = $('<td>').addClass('p-2').text(date);

  var productDescriptionTdEl = $('<td>').addClass('p-2').text(description);

 
  var deleteProductBtn = $('<td>')
  .addClass('p-2 delete-product-btn text-center')
  .text('X');

  // By listing each `<td>` variable as an argument, each one will be appended in that order
  productRowEl.append(
    productImageTdEl,
    productNameTdEl,
    productCategoryTdEl,
    priceTdEl,
    DateTdEl,
    productDescriptionTdEl,
    daysToDate
    
  );

  productDisplayEl.append(productRowEl);

  productModalEl.modal('hide');
}

function handleDeleteProduct(event) {
  console.log(event.target);
  var btnClicked = $(event.target);
  btnClicked.parent('tr').remove();
}

// handle product form submission
function handleProductFormSubmit(event) {
  event.preventDefault();
  var productImage = productImageEl.val().trim();
  var productName = productNameInputEl.val().trim();
  var productCategory = productCategoryEl.val().trim();
  var productPrice = priceRateInputEl.val().trim();
  var productDate = DateInputEl.val().trim();
  var productDescription = productDescriptionEl.val().trim();

  printProductData(productImage, productName, productCategory, productPrice, productDate, productDescription);

  productFormEl[0].reset();
}

productFormEl.on('submit', handleProductFormSubmit);
productDisplayEl.on('click', '.delete-product-btn', handleDeleteProduct);

