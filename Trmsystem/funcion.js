$(document).ready(function(){
    $('#phone-number').mask('0000-0000');
   })

$ajax({
    type: "POST",
    url:"inicioss.html",
    data:"",
    success: function(cont){
        $("#index.html").html(cont);
    }
});
