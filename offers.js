window.addEventListener('load', function () {
    "use strict";

    const URL = 'getOffers.php';

    const fetchData = function () {
        fetch(URL)
            .then(
                // Function to process the response into JSON data
                function (response) {

                    if (response.status === 200){
                        return response.json();
                    } else {
                        throw new Error("Invalid response")
                    }
                }
            )
            .then(
                // Function to convert JSON into HTML
                function (json) {
                    document.getElementById("offers").innerHTML = "<h2>SPECIAL OFFERS</h2>";
                    document.getElementById("offers").innerHTML += "<p><strong>Toy Name:</strong> "+json.toyName+"</p>";
                    document.getElementById("offers").innerHTML += "<p><strong>Category:</strong> "+json.catDesc+"</p>";
                    document.getElementById("offers").innerHTML += "<p><strong>Price:</strong> £"+json.toyPrice+"</p>";
                }
            )
            .catch(
                // Function to log error in console
                function (err) {
                    console.log("Something went wrong!", err);
                }
            );

    }
    fetchData();
    setInterval(fetchData, 5000);
});