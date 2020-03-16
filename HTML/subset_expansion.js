
$(document).ready(function() {
    $("a").click(function() {

       $("#jdom").toggleClass("hide");

            if ($("#jdom").attr("class") !== "hide") {
                $(this).prev().hide();
                $(this).text("Show more");
            }
            else {
                $(this).prev().show();
                $(this).text("Show less");
            }
    }); // end click
    }); // end ready        