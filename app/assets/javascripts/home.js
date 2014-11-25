$(".flash").ready(function(){
	$(".flash").delay(3000).slideUp(2500);
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

var is_email = new RegExp("\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}\b");

var nu_frm = "form.new_user";

$(nu_frm).on("submit", function(e){
	e.preventDefault();
	if (document.getElementById("user_username").value.match(is_email) == null){
		alert("Your username needs to be an email");
	}
	if (document.getElementById("user_password").value == null){
		alert("Please create a password for this account.");
	}

});

var lg_frm = ".signuplog-form form";

$(lg_frm).on("submit", function(e){
	e.preventDefault();
	if (document.getElementById("user_username").value.match(is_email) == null){
		alert("Your username is an email.");
	}
	if (document.getElementById("user_password").value == null){
		alert("Please input a password for this account.");
	}

});