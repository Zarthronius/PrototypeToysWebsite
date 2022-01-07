window.addEventListener('load', function () {
    "use strict";

    //console.log("hi there!");

    const URL = 'getOffers.php';

    const fetchData = function () {

        fetch(URL)

            .then(
                // Step 1. function needed here to process the response into JSON data
                function (response) {
                    //console.log(response); CONSOLE DEBUGGER

                    if (response.status === 200){
                        return response.json();
                    } else {
                        throw new Error("Invalid response")
                    }
                }
            )
            .then(
                // Step 2. function needed here to do something with the JSON data
                function (json) {
                    document.getElementById("offers").innerHTML = "<h2>SPECIAL OFFERS</h2>";
                    document.getElementById("offers").innerHTML += "<p><strong>Toy Name:</strong> "+json.toyName+"</p>";
                    document.getElementById("offers").innerHTML += "<p><strong>Category:</strong> "+json.catDesc+"</p>";
                    document.getElementById("offers").innerHTML += "<p><strong>Price:</strong> £"+json.toyPrice+"</p>";
                }
            )
            .catch(
                // Step 3. function needed here to do something if there is an error
                function (err) {
                    console.log("Something went wrong!", err);
                }
            );

    }
    fetchData();
    setInterval(fetchData, 5000);
});