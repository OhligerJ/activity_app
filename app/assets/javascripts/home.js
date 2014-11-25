$(".flash").ready(function(){
	$(".flash").delay(4000).slideUp(2500);
});

var frm = "form.time_form";

$(frm).on("submit", function(e){
	e.preventDefault();
	if(document.querySelector('input[name="days"]').value == null && document.querySelector('input[name="hours"]').value == null && document.querySelector('input[name="minutes"]').value == null){
		alert("Please put in a time");	
	}
	else if (document.querySelector('input[name="days"]').value == "k"){
		alert("Got here, boy");
	}
	else{
		frm.submit();
	}
});