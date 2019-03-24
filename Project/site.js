$(function(){
    $(".customer-details").draggable({
        snap: ".cell",
        snapMode: "both",
        stop: function( event, ui ) {
            //console.log("stop",event, ui);
        }
    });

    $(".cell").droppable({       
        hoverClass: "is-hover", 
        drop: function( event, ui ) {
            console.log(ui);
            var customerDetails = ui.draggable[0];
            $(customerDetails).attr("style","");
            $(this).html(customerDetails);            
        }
    });
});