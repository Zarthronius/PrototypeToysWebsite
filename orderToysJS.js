window.addEventListener('load', function() {
    'use strict';

    // Creates constant for form and elements
    const l_form = document.getElementById('orderForm');
    const l_termsBox = document.getElementsByName("termsChkbx")[0];
    const l_termsText = document.getElementById("termsText");

    // Listeners for interactions
    l_termsBox.addEventListener("click", tacToggled);
    l_form.submit.addEventListener("click", checkForm);
    l_form.onchange = calculateAndToggle;

    // Calculate total value of all selected toys and selected area value
    function calculateTotal() {
        let l_total = 0;                                                // Declare l_total variable
        const l_items = l_form.querySelectorAll('div.item');    // Puts all items into constant l_items array
        const l_itemsCount = l_items.length;                            // Puts size of l_items array into l_itemsCount

        let l_toysSelected = false
        for (let t_i = 0; t_i < l_itemsCount; t_i++) {                  // Iterate over array
        const t_item = l_items[t_i];                                    // Put current item into constant
            const t_checkbox = t_item.querySelector('input[data-price][type=checkbox]');  // Finds relevant checkbox and puts data value into t_checkbox constant


            if (t_checkbox.checked) {
                l_total += parseFloat(t_checkbox.dataset.price);  // If checkbox checked, convert value to float and add to l_total
                l_toysSelected = true;  // If any value checked, set flag to true
            }
        }//for

        let l_delivery = 0;
        const l_areas = l_form.querySelectorAll('input[name=deliveryType][type=radio]')
        const l_areasCount = l_areas.length;
        let l_deliverySelected = false;
        for (let t_i = 0; t_i < l_areasCount; t_i++) {  // Checks each area
            const t_area = l_areas[t_i];
            if (t_area.checked) {   // If area checked, adds value
                l_delivery = parseFloat(t_area.dataset.price);
                l_deliverySelected = true; // If any value checked, set flag to true
                break; // Break as only one area can be selected
            }
        }//for

        l_form.total.value = (l_total + l_delivery).toFixed(2);
        return { l_toysSelected, l_deliverySelected };
    }//calculateTotal()

    // Check form has at least one toy and an area selected, aswell as both name fields and termsBox checked
    function checkForm(_evt){
        if (checksFailed(calculateTotal().l_toysSelected, calculateTotal().l_deliverySelected) == true) {
            _evt.preventDefault(); // If any input not completed, prevent form submission
            alert("All areas must be completed");
        }
    }//checkForm()

    // Calculates total and toggles submit button disabled property
    function calculateAndToggle() {
        stateHandle(calculateTotal().l_toysSelected, calculateTotal().l_deliverySelected);
    }//calculateAndToggle()

    // Toggle whether submit button disabled depending on fields completed
    function stateHandle(toys, delivery) {
        if (checksFailed(toys, delivery)) {
            l_form.submit.disabled = true;
        } else {
            l_form.submit.disabled = false;
        }//stateHandle(toys, delivery)
    }

    //  If any field not completed, return true, otherwise return false
    function checksFailed(toys, delivery){
        let l_failed = false;
        if (l_termsBox.checked == false) l_failed = true;
        if (l_form.surname.value == false) l_failed = true;
        if (l_form.forename.value == false) l_failed = true;

        if (toys == false) l_failed = true;
        if (delivery == false) l_failed = true;
        return l_failed;
    }//checksFailed(toys, delivery)

    // Toggles design of terms text based on whether checked or not
    function tacToggled(){
        if (l_termsBox.checked == true) {
            l_termsText.setAttribute("style", "color: black; font-weight: normal;");
        } else {
            l_termsText.setAttribute("style", "color: #FF0000; font-weight: bold;");
        }
    }//tacToggled()
});