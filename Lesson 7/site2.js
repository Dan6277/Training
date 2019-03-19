$(document).ready(function(){
    $(document).on("submit","#register",function(){        
        $(".error").removeClass("error");
        $(".hidden").css("display","none");
        var name = $("#name-input").val();
        var email = $("#email-input").val();
        var phone = $("#phone-input").val();
        var dob = $("#dob-input").val();
        var currentError = false;
        if (name == ""){
            $("#name-input").addClass("error");
            $("#name-hidden").css("display","block");
            currentError = true;
        }
        if (email == ""){
            $("#email-input").addClass("error");
            $("#email-hidden").css("display","block");
            currentError = true;
        }
        if (phone == ""){
            $("#phone-input").addClass("error");
            $("#phone-hidden").css("display","block");
            currentError = true;
        }
        if (dob == ""){
            $("#dob-input").addClass("error");
            $("#dob-hidden").css("display","block");
            currentError = true;
        }
        if (!currentError){                        
            $("#log").append("<div class='person-row'>"+name+": "+email+": "+phone+": "+dob+" <button class='delete'>delete</button></div>");
            $(".input").val("");
        }        
        return false;
    });

    //this doesn't exist when the document loaded
    //$(".delete").on("click",function(){

    //this looks through the document every time
    $(document).on("click",".delete",function(){
        //"parents" will search until it finds a matching parent
        $(this).parent(".person-row").remove();
        return false;
    });
});