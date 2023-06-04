function priceCalculation() {

  const priceInput = document.getElementById("item-price")
  const addTaxDom = document.getElementById("add-tax-price")
  const priceProfit = document.getElementById("profit")

  priceInput.addEventListener("input", () => {
    const inputValue = priceInput.value;
    console.log(inputValue);
    addTaxDom.innerHTML = Math.floor(inputValue * 0.1)
    priceProfit.innerHTML = Math.floor(inputValue - addTaxDom.innerHTML)
  }) 
}

window.addEventListener('load', priceCalculation)