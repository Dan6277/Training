//$(function(){
$(document).ready(function(){ //when the page has fully loaded, then do everything inside here

    //whenever we do any event, do in this format    
    //document.getElementById("comment-form").onsubmit = function() { };

    //event, id of element to trigger event, callback (what happens after the event has been triggered)
    $(document).on("submit","#comment-form",function(){
        $(".error").removeClass("error");
        var name = $("#name").val();
        var comment = $("#comment").val();               
        var errorExists = false;
        if (name == "") {
            $("#name").addClass("error");  
            errorExists = true;          
        }

        if (comment == "") {
            $("#comment").addClass("error");
            errorExists = true;
        }

        //if (errorExists == false)
        if (!errorExists) {            
            $("#comments-box").append("<div>"+name+": "+comment+"</div>");
            $("#name").val("");
            $("#comment").val("");
            $("#name").focus();
        }
        return false;
    });
});

//Do the validation
//- Have error messages as hidden labels, show/hide the labels with js&css
//Add the results to some div or something
//Be able to delete the row