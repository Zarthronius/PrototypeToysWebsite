window.addEventListener('load', function() {
    'use strict';

    const l_form = document.getElementById('orderForm');

    const l_termsBox = document.getElementsByName("termsChkbx")[0];
    const l_termsText = document.getElementById("termsText");

    l_termsBox.addEventListener("click", tacToggled);
    l_form.submit.addEventListener("click", checkForm);
    l_form.onchange = calculateAndToggle;

    function calculateTotal() {
        let l_total = 0;                                                                          //declare l_total variable
        const l_items = l_form.querySelectorAll('div.item');                              //puts all items into constant l_items array
        const l_itemsCount = l_items.length;                                                      //puts size of l_items array into l_itemsCount

        let l_toysSelected = false
        for (let t_i = 0; t_i < l_itemsCount; t_i++) {                                            //iterate over array
            const t_item = l_items[t_i];                                                          //put current item into constant
            const t_checkbox = t_item.querySelector('input[data-price][type=checkbox]');  //finds relevant checkbox and puts data value into t_checkbox constant


            if (t_checkbox.checked) {
                l_total += parseFloat(t_checkbox.dataset.price);                                  //if checkbox checked, convert value to float and add to l_total
                l_toysSelected = true;
            }
        }//for

        let l_delivery = 0;
        const l_areas = l_form.querySelectorAll('input[name=deliveryType][type=radio]')
        const l_areasCount = l_areas.length;
        let l_deliverySelected = false;
        for (let t_i = 0; t_i < l_areasCount; t_i++) {
            const t_area = l_areas[t_i];
            if (t_area.checked) {
                l_delivery = parseFloat(t_area.dataset.price);
                l_deliverySelected = true;
                break;
            }
        }//for

        l_form.total.value = (l_total + l_delivery).toFixed(2);
        return { l_toysSelected, l_deliverySelected };
    }

    function checkForm(_evt){
        if (checksFailed(calculateTotal().l_toysSelected, calculateTotal().l_deliverySelected) == true) {
            _evt.preventDefault();
            alert("All areas must be completed");
        }
    }//checkForm()


    function calculateAndToggle() {
        stateHandle(calculateTotal().l_toysSelected, calculateTotal().l_deliverySelected);
    }

    function stateHandle(toys, delivery) {
        if (checksFailed(toys, delivery)) {
            l_form.submit.disabled = true;
        } else {
            l_form.submit.disabled = false;
        }
    }

    function checksFailed(toys, delivery){
        let l_failed = false;
        if (l_termsBox.checked == false) l_failed = true;
        if (l_form.surname.value == false) l_failed = true;
        if (l_form.forename.value == false) l_failed = true;

        if (toys == false) l_failed = true;
        if (delivery == false) l_failed = true;
        return l_failed;
    }

    function tacToggled(){
        if (l_termsBox.checked == true) {
            l_termsText.setAttribute("style", "color: black; font-weight: normal;");
        } else {
            l_termsText.setAttribute("style", "color: #FF0000; font-weight: bold;");
        }
    }
});