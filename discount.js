function calculate() {
    var txtAmount = document.getElementById("txtAmount");
    var amount = txtAmount.value;

    if (amount < 10000)
        discount = amount * 0.10;
    else
        discount = amount * 0.20;

    // get access to result element
    var result = document.getElementById("result");
    result.innerHTML = discount;
}